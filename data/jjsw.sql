/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : jjsw

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2014-08-28 16:11:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sw_account_log`
-- ----------------------------
DROP TABLE IF EXISTS `sw_account_log`;
CREATE TABLE `sw_account_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL,
  `user_money` decimal(10,2) NOT NULL,
  `frozen_money` decimal(10,2) NOT NULL,
  `rank_points` mediumint(9) NOT NULL,
  `pay_points` mediumint(9) NOT NULL,
  `change_time` int(10) unsigned NOT NULL,
  `change_desc` varchar(255) NOT NULL,
  `change_type` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_account_log
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_ad`
-- ----------------------------
DROP TABLE IF EXISTS `sw_ad`;
CREATE TABLE `sw_ad` (
  `ad_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `position_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `media_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ad_name` varchar(60) NOT NULL DEFAULT '',
  `ad_link` varchar(255) NOT NULL DEFAULT '',
  `ad_code` text NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `link_man` varchar(60) NOT NULL DEFAULT '',
  `link_email` varchar(60) NOT NULL DEFAULT '',
  `link_phone` varchar(60) NOT NULL DEFAULT '',
  `click_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`ad_id`),
  KEY `position_id` (`position_id`),
  KEY `enabled` (`enabled`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_ad
-- ----------------------------
INSERT INTO `sw_ad` VALUES ('1', '1', '0', '首页资讯下方广告', '', '1398707920244603883.jpg', '1396080000', '1680076800', '', '', '', '3', '1');
INSERT INTO `sw_ad` VALUES ('2', '3', '0', 'idx_step_right_1', '', '1396213608506574863.jpg', '1396166400', '1651219200', '', '', '', '0', '1');
INSERT INTO `sw_ad` VALUES ('3', '4', '0', 'idx_step_left_1', '', '1396206671138655665.jpg', '1396166400', '1651219200', '', '', '', '0', '1');
INSERT INTO `sw_ad` VALUES ('4', '2', '0', 'idx_step_mid_1', '', '1396208949053264770.jpg', '1396166400', '1651219200', '', '', '', '0', '1');
INSERT INTO `sw_ad` VALUES ('5', '4', '0', 'idx_step_left_2', '', '1396213199067276531.jpg', '1396166400', '1524988800', '', '', '', '0', '1');
INSERT INTO `sw_ad` VALUES ('6', '3', '0', 'idx_step_right_2', '', '1396213283019312811.jpg', '1396166400', '1619683200', '', '', '', '0', '1');
INSERT INTO `sw_ad` VALUES ('7', '4', '0', 'idx_step_left_3', '', '1396213320060032237.jpg', '1396166400', '1619683200', '', '', '', '0', '1');
INSERT INTO `sw_ad` VALUES ('8', '4', '0', 'idx_step_left_4', '', '1396213379569025558.jpg', '1396166400', '1651219200', '', '', '', '0', '1');
INSERT INTO `sw_ad` VALUES ('9', '4', '0', 'idx_step_left_5', '', '1396213410705039217.jpg', '1396166400', '1682755200', '', '', '', '0', '1');
INSERT INTO `sw_ad` VALUES ('10', '3', '0', 'idx_step_right_5', '', '1396213484112226898.jpg', '1396166400', '1619683200', '', '', '', '0', '1');
INSERT INTO `sw_ad` VALUES ('11', '3', '0', 'idx_step_right_4', '', '1396213547090493432.jpg', '1396166400', '1651219200', '', '', '', '0', '1');
INSERT INTO `sw_ad` VALUES ('12', '3', '0', 'idx_step_right_3', '', '1396213582466659442.jpg', '1396166400', '1651219200', '', '', '', '0', '1');
INSERT INTO `sw_ad` VALUES ('13', '2', '0', 'idx_step_mid_2', '', '1396213675731623875.jpg', '1396166400', '1619683200', '', '', '', '1', '1');
INSERT INTO `sw_ad` VALUES ('14', '2', '0', 'idx_step_mid_3', '', '1396213710805815596.jpg', '1396166400', '1651219200', '', '', '', '1', '1');
INSERT INTO `sw_ad` VALUES ('15', '2', '0', 'idx_step_mid_4', '', '1396213743006467956.jpg', '1396166400', '1651219200', '', '', '', '0', '1');
INSERT INTO `sw_ad` VALUES ('16', '2', '0', 'idx_step_mid_5', '', '1396213781256049417.jpg', '1396166400', '1651219200', '', '', '', '0', '1');

-- ----------------------------
-- Table structure for `sw_admin_action`
-- ----------------------------
DROP TABLE IF EXISTS `sw_admin_action`;
CREATE TABLE `sw_admin_action` (
  `action_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action_code` varchar(20) NOT NULL DEFAULT '',
  `relevance` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`action_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_admin_action
-- ----------------------------
INSERT INTO `sw_admin_action` VALUES ('1', '0', 'goods', '');
INSERT INTO `sw_admin_action` VALUES ('2', '0', 'cms_manage', '');
INSERT INTO `sw_admin_action` VALUES ('3', '0', 'users_manage', '');
INSERT INTO `sw_admin_action` VALUES ('4', '0', 'priv_manage', '');
INSERT INTO `sw_admin_action` VALUES ('5', '0', 'sys_manage', '');
INSERT INTO `sw_admin_action` VALUES ('6', '0', 'order_manage', '');
INSERT INTO `sw_admin_action` VALUES ('7', '0', 'promotion', '');
INSERT INTO `sw_admin_action` VALUES ('8', '0', 'email', '');
INSERT INTO `sw_admin_action` VALUES ('9', '0', 'templates_manage', '');
INSERT INTO `sw_admin_action` VALUES ('10', '0', 'db_manage', '');
INSERT INTO `sw_admin_action` VALUES ('11', '0', 'sms_manage', '');
INSERT INTO `sw_admin_action` VALUES ('21', '1', 'goods_manage', '');
INSERT INTO `sw_admin_action` VALUES ('22', '1', 'remove_back', '');
INSERT INTO `sw_admin_action` VALUES ('23', '1', 'cat_manage', '');
INSERT INTO `sw_admin_action` VALUES ('24', '1', 'cat_drop', 'cat_manage');
INSERT INTO `sw_admin_action` VALUES ('25', '1', 'attr_manage', '');
INSERT INTO `sw_admin_action` VALUES ('26', '1', 'brand_manage', '');
INSERT INTO `sw_admin_action` VALUES ('27', '1', 'comment_priv', '');
INSERT INTO `sw_admin_action` VALUES ('84', '1', 'tag_manage', '');
INSERT INTO `sw_admin_action` VALUES ('30', '2', 'article_cat', '');
INSERT INTO `sw_admin_action` VALUES ('31', '2', 'article_manage', '');
INSERT INTO `sw_admin_action` VALUES ('32', '2', 'shopinfo_manage', '');
INSERT INTO `sw_admin_action` VALUES ('33', '2', 'shophelp_manage', '');
INSERT INTO `sw_admin_action` VALUES ('34', '2', 'vote_priv', '');
INSERT INTO `sw_admin_action` VALUES ('35', '7', 'topic_manage', '');
INSERT INTO `sw_admin_action` VALUES ('74', '4', 'template_manage', '');
INSERT INTO `sw_admin_action` VALUES ('73', '3', 'feedback_priv', '');
INSERT INTO `sw_admin_action` VALUES ('38', '3', 'integrate_users', '');
INSERT INTO `sw_admin_action` VALUES ('39', '3', 'sync_users', 'integrate_users');
INSERT INTO `sw_admin_action` VALUES ('40', '3', 'users_manage', '');
INSERT INTO `sw_admin_action` VALUES ('41', '3', 'users_drop', 'users_manage');
INSERT INTO `sw_admin_action` VALUES ('42', '3', 'user_rank', '');
INSERT INTO `sw_admin_action` VALUES ('85', '3', 'surplus_manage', 'account_manage');
INSERT INTO `sw_admin_action` VALUES ('43', '4', 'admin_manage', '');
INSERT INTO `sw_admin_action` VALUES ('44', '4', 'admin_drop', 'admin_manage');
INSERT INTO `sw_admin_action` VALUES ('45', '4', 'allot_priv', 'admin_manage');
INSERT INTO `sw_admin_action` VALUES ('46', '4', 'logs_manage', '');
INSERT INTO `sw_admin_action` VALUES ('47', '4', 'logs_drop', 'logs_manage');
INSERT INTO `sw_admin_action` VALUES ('48', '5', 'shop_config', '');
INSERT INTO `sw_admin_action` VALUES ('49', '5', 'ship_manage', '');
INSERT INTO `sw_admin_action` VALUES ('50', '5', 'payment', '');
INSERT INTO `sw_admin_action` VALUES ('51', '5', 'shiparea_manage', '');
INSERT INTO `sw_admin_action` VALUES ('52', '5', 'area_manage', '');
INSERT INTO `sw_admin_action` VALUES ('53', '6', 'order_os_edit', '');
INSERT INTO `sw_admin_action` VALUES ('54', '6', 'order_ps_edit', 'order_os_edit');
INSERT INTO `sw_admin_action` VALUES ('55', '6', 'order_ss_edit', 'order_os_edit');
INSERT INTO `sw_admin_action` VALUES ('56', '6', 'order_edit', 'order_os_edit');
INSERT INTO `sw_admin_action` VALUES ('57', '6', 'order_view', '');
INSERT INTO `sw_admin_action` VALUES ('58', '6', 'order_view_finished', '');
INSERT INTO `sw_admin_action` VALUES ('59', '6', 'repay_manage', '');
INSERT INTO `sw_admin_action` VALUES ('60', '6', 'booking', '');
INSERT INTO `sw_admin_action` VALUES ('61', '6', 'sale_order_stats', '');
INSERT INTO `sw_admin_action` VALUES ('62', '6', 'client_flow_stats', '');
INSERT INTO `sw_admin_action` VALUES ('78', '7', 'snatch_manage', '');
INSERT INTO `sw_admin_action` VALUES ('83', '7', 'ad_manage', '');
INSERT INTO `sw_admin_action` VALUES ('80', '7', 'gift_manage', '');
INSERT INTO `sw_admin_action` VALUES ('81', '7', 'card_manage', '');
INSERT INTO `sw_admin_action` VALUES ('70', '1', 'goods_type', '');
INSERT INTO `sw_admin_action` VALUES ('82', '7', 'pack', '');
INSERT INTO `sw_admin_action` VALUES ('79', '7', 'bonus_manage', '');
INSERT INTO `sw_admin_action` VALUES ('75', '5', 'friendlink', '');
INSERT INTO `sw_admin_action` VALUES ('76', '5', 'db_backup', '');
INSERT INTO `sw_admin_action` VALUES ('77', '5', 'db_renew', 'db_backup');
INSERT INTO `sw_admin_action` VALUES ('86', '4', 'agency_manage', '');
INSERT INTO `sw_admin_action` VALUES ('87', '3', 'account_manage', '');
INSERT INTO `sw_admin_action` VALUES ('88', '5', 'flash_manage', '');
INSERT INTO `sw_admin_action` VALUES ('89', '5', 'navigator', '');
INSERT INTO `sw_admin_action` VALUES ('90', '7', 'auction', '');
INSERT INTO `sw_admin_action` VALUES ('91', '7', 'group_by', '');
INSERT INTO `sw_admin_action` VALUES ('92', '7', 'favourable', '');
INSERT INTO `sw_admin_action` VALUES ('93', '7', 'whole_sale', '');
INSERT INTO `sw_admin_action` VALUES ('94', '1', 'goods_auto', '');
INSERT INTO `sw_admin_action` VALUES ('95', '2', 'article_auto', '');
INSERT INTO `sw_admin_action` VALUES ('96', '5', 'cron', '');
INSERT INTO `sw_admin_action` VALUES ('97', '5', 'affiliate', '');
INSERT INTO `sw_admin_action` VALUES ('98', '5', 'affiliate_ck', '');
INSERT INTO `sw_admin_action` VALUES ('99', '8', 'attention_list', '');
INSERT INTO `sw_admin_action` VALUES ('100', '8', 'email_list', '');
INSERT INTO `sw_admin_action` VALUES ('101', '8', 'magazine_list', '');
INSERT INTO `sw_admin_action` VALUES ('102', '8', 'view_sendlist', '');
INSERT INTO `sw_admin_action` VALUES ('103', '1', 'virualcard', '');
INSERT INTO `sw_admin_action` VALUES ('104', '7', 'package_manage', '');
INSERT INTO `sw_admin_action` VALUES ('105', '1', 'picture_batch', '');
INSERT INTO `sw_admin_action` VALUES ('106', '1', 'goods_export', '');
INSERT INTO `sw_admin_action` VALUES ('107', '1', 'goods_batch', '');
INSERT INTO `sw_admin_action` VALUES ('108', '1', 'gen_goods_script', '');
INSERT INTO `sw_admin_action` VALUES ('109', '5', 'sitemap', '');
INSERT INTO `sw_admin_action` VALUES ('110', '5', 'file_priv', '');
INSERT INTO `sw_admin_action` VALUES ('111', '5', 'file_check', '');
INSERT INTO `sw_admin_action` VALUES ('112', '9', 'template_select', '');
INSERT INTO `sw_admin_action` VALUES ('113', '9', 'template_setup', '');
INSERT INTO `sw_admin_action` VALUES ('114', '9', 'library_manage', '');
INSERT INTO `sw_admin_action` VALUES ('115', '9', 'lang_edit', '');
INSERT INTO `sw_admin_action` VALUES ('116', '9', 'backup_setting', '');
INSERT INTO `sw_admin_action` VALUES ('117', '9', 'mail_template', '');
INSERT INTO `sw_admin_action` VALUES ('118', '10', 'db_backup', '');
INSERT INTO `sw_admin_action` VALUES ('119', '10', 'db_renew', '');
INSERT INTO `sw_admin_action` VALUES ('120', '10', 'db_optimize', '');
INSERT INTO `sw_admin_action` VALUES ('121', '10', 'sql_query', '');
INSERT INTO `sw_admin_action` VALUES ('122', '10', 'convert', '');
INSERT INTO `sw_admin_action` VALUES ('124', '11', 'sms_send', '');
INSERT INTO `sw_admin_action` VALUES ('128', '7', 'exchange_goods', '');
INSERT INTO `sw_admin_action` VALUES ('129', '6', 'delivery_view', '');
INSERT INTO `sw_admin_action` VALUES ('130', '6', 'back_view', '');
INSERT INTO `sw_admin_action` VALUES ('131', '5', 'reg_fields', '');
INSERT INTO `sw_admin_action` VALUES ('132', '5', 'shop_authorized', '');
INSERT INTO `sw_admin_action` VALUES ('133', '5', 'webcollect_manage', '');
INSERT INTO `sw_admin_action` VALUES ('134', '4', 'suppliers_manage', '');
INSERT INTO `sw_admin_action` VALUES ('135', '4', 'role_manage', '');

-- ----------------------------
-- Table structure for `sw_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `sw_admin_log`;
CREATE TABLE `sw_admin_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `log_time` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `log_info` varchar(255) NOT NULL DEFAULT '',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`log_id`),
  KEY `log_time` (`log_time`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=844 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_admin_log
-- ----------------------------
INSERT INTO `sw_admin_log` VALUES ('1', '1396028264', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('2', '1396029184', '1', '编辑前台语言项: ', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('3', '1396029461', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('4', '1396030341', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('5', '1396032117', '1', '添加商品分类: 食品饮料、酒水', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('6', '1396032138', '1', '添加商品分类: 美容护理、洗发沐浴', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('7', '1396032167', '1', '添加商品分类: 厨卫清洁，纸、清洁剂', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('8', '1396032641', '1', '添加商品分类: 母婴用品、玩具', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('9', '1396032663', '1', '添加商品分类: 家居家纺、锅具餐具', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('10', '1396032676', '1', '添加商品分类: 大小家电、厨电', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('11', '1396032688', '1', '添加商品分类: 箱包、珠宝饰品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('12', '1396032701', '1', '添加商品分类: 运动鞋服、户外健身', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('13', '1396033678', '1', '编辑前台语言项: ', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('14', '1396033726', '1', '编辑前台语言项: ', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('15', '1396033745', '1', '编辑前台语言项: ', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('16', '1396047488', '1', '添加商品分类: 酒水', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('17', '1396052087', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('18', '1396055517', '1', '添加商品分类: 饮料饮品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('19', '1396055529', '1', '添加商品分类: 牛奶乳品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('20', '1396055670', '1', '添加商品分类: 口腔护理', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('21', '1396055679', '1', '添加商品分类: 面部护理', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('22', '1396055723', '1', '添加商品分类: 家居清洁', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('23', '1396055730', '1', '添加商品分类: 清洁用品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('24', '1396055743', '1', '添加商品分类: 奶粉', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('25', '1396055750', '1', '添加商品分类: 营养品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('26', '1396055773', '1', '添加商品分类: 幼婴辅食', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('27', '1396055788', '1', '添加商品分类: 餐具餐饮', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('28', '1396055796', '1', '添加商品分类: 厨房用品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('29', '1396055843', '1', '添加商品分类: 家电', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('30', '1396055851', '1', '添加商品分类: 生活', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('31', '1396055861', '1', '添加商品分类: 调味盒', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('32', '1396055871', '1', '添加商品分类: 调味瓶', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('33', '1396055894', '1', '添加商品分类: 珠宝黄金', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('34', '1396055906', '1', '添加商品分类: 旅行箱包', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('35', '1396055926', '1', '添加商品分类: 运动鞋', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('36', '1396055938', '1', '添加商品分类: 运动服包', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('37', '1396055948', '1', '添加商品分类: 户外鞋服', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('38', '1396118121', '1', '添加广告位置: 首页资讯下方广告位', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('39', '1396118181', '1', '添加广告: 首页资讯下方广告', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('40', '1396118329', '1', '编辑广告: 首页资讯下方广告', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('41', '1396118375', '1', '添加文章分类: 商城资讯', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('42', '1396118412', '1', '添加文章: 大时代商城上线了', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('43', '1396118869', '1', '添加文章: 大时代商城运费通知', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('44', '1396118883', '1', '添加文章: 大时代商城感恩回馈', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('45', '1396118902', '1', '添加文章: 关于生鲜蔬菜类订单的通知', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('46', '1396118926', '1', '添加文章: 大时代商城2014运营通告', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('47', '1396118972', '1', '添加文章: 大时代商城向您承诺', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('48', '1396120807', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('49', '1396120978', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('50', '1396121017', '1', '添加商品: 青岛崂山啤酒 330ml', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('51', '1396121053', '1', '编辑商品: 青岛崂山啤酒 330ml', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('52', '1396202265', '1', '添加广告位置: idx_step_mid', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('53', '1396203465', '1', '添加广告位置: idx_step_right', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('54', '1396203506', '1', '添加广告: idx_step_right_1', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('55', '1396204122', '1', '添加商品: 400g圣元进口优博较大婴儿奶粉盒装2段', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('56', '1396204245', '1', '添加商品: 900g圣元优聪普1段奶粉', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('57', '1396204288', '1', '添加商品: 900g圣元进口优博听装1段', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('58', '1396204317', '1', '添加商品: 400g美赞臣安婴儿A+无乳糖奶粉', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('59', '1396204438', '1', '添加商品: 900g惠氏爱儿乐妈妈奶粉', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('60', '1396204465', '1', '添加商品: 900g美赞臣安婴妈妈A+', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('61', '1396204527', '1', '添加商品: 400g雅士利能慧孕妇奶粉', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('62', '1396204618', '1', '添加商品: 39g合生元儿童益生菌冲剂', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('63', '1396204648', '1', '添加商品: 虾片/虾条', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('64', '1396204672', '1', '添加商品: 90g合生元儿童益生菌冲剂', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('65', '1396204747', '1', '添加商品: 120g亨氏清儿润香橙奶伴侣', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('66', '1396204843', '1', '添加商品: 64g亨氏磨牙棒 [香橙味]', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('67', '1396204854', '1', '编辑商品: 虾片/虾条', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('68', '1396204872', '1', '添加商品: 64g亨氏磨牙棒 [牛奶味]', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('69', '1396204951', '1', '添加商品: 上好佳虾片 [龙虾味 40g]', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('70', '1396204963', '1', '添加商品: 225g亨氏淮山薏米米粉(1段)', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('71', '1396204982', '1', '添加商品: 225g贝因美DHA蔬菜营养米粉', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('72', '1396204983', '1', '编辑商品: 上好佳虾片 [龙虾味 40g]', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('73', '1396205038', '1', '编辑商品: 上好佳虾片 [龙虾味 40g]', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('74', '1396205074', '1', '添加商品: 208g贝因美黑芝麻营养面条', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('75', '1396205102', '1', '添加商品: 280g百乐麦阶段面(1)', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('76', '1396205119', '1', '添加商品: 上好佳虾条 [40g] ', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('77', '1396205163', '1', '添加商品: 120g亨氏猕猴桃豌豆菠菜泥', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('78', '1396205180', '1', '添加商品: 亨氏乐维滋蔬乐2+2苹果草莓番茄胡萝卜泥 120g', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('79', '1396205195', '1', '添加商品: 40g上好佳洋葱圈', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('80', '1396205200', '1', '添加商品: 120g亨氏苹果玉米南瓜泥', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('81', '1396205265', '1', '添加商品: 115g贝因美宝宝原味肉酥', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('82', '1396205298', '1', '添加商品: 115g贝因美胡萝卜营养肉酥', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('83', '1396205377', '1', '添加商品: 40g好丽友香焗原味', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('84', '1396205438', '1', '添加商品: 40g好丽友烤鸡比莎薯片', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('85', '1396205480', '1', '添加商品: 40g好丽友番茄酱味薯条', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('86', '1396205563', '1', '添加商品: 希乐清阳水瓶xl-3504 [500ml]', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('87', '1396205580', '1', '编辑商品: 希乐清阳水瓶xl-3504 [500ml]', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('88', '1396205631', '1', '编辑商品: 希乐清阳水瓶xl-3504 [500ml]', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('89', '1396205655', '1', '添加商品: 高露洁旅行套装/折叠牙刷加50克高露洁冰爽防蛀牙膏 ', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('90', '1396205672', '1', '添加商品: 乐扣乐扣500ml炫彩运动水杯HPP721T(蓝色) [中号 蓝', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('91', '1396205674', '1', '编辑商品: 高露洁旅行套装/折叠牙刷加50克高露洁冰爽防蛀牙膏 ', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('92', '1396205688', '1', '添加商品: 乐扣乐扣炫彩运动茶杯（黄）HPP722TO', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('93', '1396205699', '1', '编辑商品: 乐扣乐扣500ml炫彩运动水杯HPP721T(蓝色) [中号 蓝', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('94', '1396205748', '1', '添加商品: 佳洁士珍珠盐白牙膏(柠檬清新)140g ', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('95', '1396205765', '1', '编辑商品: 佳洁士珍珠盐白牙膏(柠檬清新)140g ', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('96', '1396205777', '1', '添加商品: 雅诚德情侣对杯', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('97', '1396205793', '1', '编辑商品: 佳洁士珍珠盐白牙膏(柠檬清新)140g ', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('98', '1396205803', '1', '添加商品: 雅诚德珍妮杯', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('99', '1396205818', '1', '编辑商品: 佳洁士珍珠盐白牙膏(柠檬清新)140g ', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('100', '1396205822', '1', '添加商品: 雅诚德迎宾杯', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('101', '1396205834', '1', '编辑广告位置: idx_step_right', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('102', '1396205869', '1', '添加商品: 佳洁士防蛀修护牙膏(晶莹薄荷香型)200g ', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('103', '1396205872', '1', '添加商品: 海洋工作室威忌杯B16112', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('104', '1396205897', '1', '添加商品: 海洋经典红酒杯B501R08', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('105', '1396205932', '1', '添加商品: 90g佳洁士全优7效牙膏 ', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('106', '1396205961', '1', '添加商品: 思宝双龙A2真空杯', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('107', '1396205985', '1', '添加商品: 富光超炫保温杯FGL-3121', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('108', '1396205999', '1', '添加商品: 120g佳洁士茶爽炫白牙膏', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('109', '1396206040', '1', '添加商品: 苏泊尔汤宝系列保温提锅KF25A1', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('110', '1396206132', '1', '添加商品: 珠宝黄金', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('111', '1396206139', '1', '添加商品: 华美小号妙奇油壶HM-9004', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('112', '1396206170', '1', '添加商品: 振兴圆型玻璃调味瓶YH5995', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('113', '1396206194', '1', '添加商品: 珠宝黄金', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('114', '1396206202', '1', '添加商品: 清风200抽*3原木纯品抽取式面纸 [200张*3包]', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('115', '1396206204', '1', '添加商品: 紫丁香优质酱醋瓶JA2002', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('116', '1396206218', '1', '添加商品: 珠宝黄金', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('117', '1396206244', '1', '添加商品: 茶花微波蒸器2708 1*24 [长型 1200ml]', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('118', '1396206266', '1', '添加商品: 舒洁200抽迪士尼软抽', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('119', '1396206268', '1', '添加商品: 茶花2745 450ml微波杯', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('120', '1396206294', '1', '添加商品: 珠宝黄金', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('121', '1396206295', '1', '添加商品: 茶花微波大号专用煲2707', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('122', '1396206316', '1', '添加商品: 舒洁200抽盒抽', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('123', '1396206345', '1', '添加商品: 苏泊尔大漏勺KT04B1', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('124', '1396206368', '1', '添加商品: 珍爱80P筒装湿巾 [80片] ', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('125', '1396206372', '1', '添加商品: 富尔兴欧派不锈钢主食匙FC-225', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('126', '1396206406', '1', '添加商品: 富尔兴欧派不锈钢勺FC-222', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('127', '1396206441', '1', '添加商品: 10片清风绿茶湿巾 ', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('128', '1396206453', '1', '添加商品: 巧媳妇钢塑柄磨刀棒AM-006', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('129', '1396206479', '1', '添加商品: 张小泉咖啡彩木系列切片刀D11102300', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('130', '1396206501', '1', '添加商品: 张小泉中片刀N5472', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('131', '1396206596', '1', '添加商品: 妙洁MOPFD套布拖', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('132', '1396206603', '1', '添加商品: 海信LED39K360X3D电视', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('133', '1396206617', '1', '添加广告位置: idx_step_left', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('134', '1396206621', '1', '添加商品: 海信LED55K360X3D电视', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('135', '1396206642', '1', '添加商品: 海信LED39K300J电视', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('136', '1396206671', '1', '添加广告: idx_step_left_1', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('137', '1396206676', '1', '添加商品: 思高第二代魔力地圈(平拖)', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('138', '1396206691', '1', '添加商品: 美的215L三门电脑冰箱', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('139', '1396206710', '1', '添加商品: 海尔BCD-225SKHCB冰箱', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('140', '1396206735', '1', '添加商品: 海尔BCD-206STCM冰箱', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('141', '1396206776', '1', '添加商品: 思高动感吸尘魔力洁地擦促销装', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('142', '1396206809', '1', '添加商品: 飞利浦GC2810电熨斗', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('143', '1396206831', '1', '添加商品: 飞利浦GC2820电熨斗', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('144', '1396206843', '1', '添加商品: 美丽雅两个装钢丝球(促销装)', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('145', '1396206869', '1', '添加商品: 飞利浦GC2830电熨斗', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('146', '1396206917', '1', '添加商品: 思高灵巧洁地擦促销装', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('147', '1396206921', '1', '添加商品: 飞利浦HD9220空气炸锅', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('148', '1396206948', '1', '添加商品: 飞利浦HD9316电水壶', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('149', '1396206969', '1', '添加商品: 飞利浦HD9312电水壶', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('150', '1396207052', '1', '添加商品: 茶花四组方便调味盒2527 [四格]', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('151', '1396207068', '1', '添加商品: 紫丁香调味缸套装JA300', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('152', '1396207095', '1', '添加商品: 优美家时尚3组调味盒KC-7008', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('153', '1396207159', '1', '添加商品: 华美小号妙奇油壶HM-9004', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('154', '1396207183', '1', '添加商品: 振兴圆型玻璃调味瓶YH5995', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('155', '1396207224', '1', '添加商品: 紫丁香优质酱醋瓶', '192.168.1.10');
INSERT INTO `sw_admin_log` VALUES ('156', '1396207295', '1', '编辑商品: 珠宝黄金', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('157', '1396207343', '1', '编辑商品: 胸花', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('158', '1396207377', '1', '编辑商品: 戒指', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('159', '1396207407', '1', '编辑商品: 项链', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('160', '1396207433', '1', '编辑商品: 胸花', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('161', '1396207634', '1', '添加商品: 胸花', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('162', '1396207676', '1', '添加商品: 康师傅3+2饼干 375g [香草]', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('163', '1396207677', '1', '添加商品: 戒指', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('164', '1396207699', '1', '添加商品: 项链', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('165', '1396207733', '1', '添加商品: 戒指', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('166', '1396207735', '1', '添加商品: 康师傅3+2饼干 375g [奶油] ', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('167', '1396207764', '1', '添加商品: 耳饰', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('168', '1396207799', '1', '添加商品: 康师傅3+2饼干 375g [柠檬] ', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('169', '1396207865', '1', '添加商品: 391g奥利奥双心脆威化 [草莓+巧克力]', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('170', '1396207969', '1', '添加商品: 拉杆箱', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('171', '1396208027', '1', '编辑商品: 拉杆箱', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('172', '1396208052', '1', '添加商品: 72g农心辛拉面香菇牛肉面(杯)', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('173', '1396208078', '1', '添加商品: 拉杆箱', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('174', '1396208093', '1', '添加商品: 拉杆箱', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('175', '1396208096', '1', '添加商品: 117g农心辣白菜辛拉面（桶面） ', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('176', '1396208107', '1', '添加商品: 拉杆箱', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('177', '1396208151', '1', '添加商品: 旅行包', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('178', '1396208166', '1', '添加商品: 70g农心上海汤面（鸡肉面）', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('179', '1396208223', '1', '添加商品: 旅行包', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('180', '1396208227', '1', '添加商品: 120g*5农心辣白菜五连包 ', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('181', '1396208274', '1', '编辑商品: 120g*5农心辣白菜五连包 ', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('182', '1396208282', '1', '添加商品: 旅行包', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('183', '1396208361', '1', '添加商品: 120g*5农心乌龙面', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('184', '1396208495', '1', '添加商品: 240g好时黑巧克力家庭装 ', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('185', '1396208545', '1', '添加商品: 240g好时曲奇奶香白巧克力 ', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('186', '1396208551', '1', '添加商品: 金莱克', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('187', '1396208578', '1', '添加商品: 李宁', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('188', '1396208593', '1', '添加商品: 100g好时精选巧克力礼盒(牛奶巧克力) ', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('189', '1396208602', '1', '添加商品: 耐克', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('190', '1396208633', '1', '添加商品: 运动鞋', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('191', '1396208651', '1', '添加商品: 216g德芙脆香米（碗装） ', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('192', '1396208697', '1', '添加商品:   135g德芙m&ms逗趣礼盒 [花生] ', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('193', '1396208789', '1', '添加商品: 200g雨润肉枣 餐桌特色食品 腊味小香肠 腊枣 ', '192.168.1.8');
INSERT INTO `sw_admin_log` VALUES ('194', '1396208949', '1', '添加广告: idx_step_mid_1', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('195', '1396208953', '1', '添加商品: 户外鞋', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('196', '1396208973', '1', '添加商品: 冲锋衣', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('197', '1396209004', '1', '编辑广告位置: idx_step_mid', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('198', '1396209007', '1', '添加商品: 木林森户外鞋', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('199', '1396209072', '1', '添加商品: 防水户外服装', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('200', '1396209311', '1', '添加商品: 运动服', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('201', '1396209328', '1', '添加商品: 运动服', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('202', '1396209343', '1', '添加商品: 运动服', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('203', '1396209400', '1', '添加商品: 运动包', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('204', '1396209404', '1', '编辑商品:   135g德芙m&ms逗趣礼盒 [花生] ', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('205', '1396209416', '1', '添加商品: 运动包', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('206', '1396209424', '1', '编辑商品:   135g德芙m&ms逗趣礼盒 [花生] ', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('207', '1396209456', '1', '添加商品: 运动包', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('208', '1396209465', '1', '编辑商品: 100g好时精选巧克力礼盒(牛奶巧克力) ', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('209', '1396209483', '1', '编辑商品: 240g好时黑巧克力家庭装 ', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('210', '1396209506', '1', '编辑商品: 70g农心上海汤面（鸡肉面）', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('211', '1396209851', '1', '编辑商品: 耳饰', '192.168.1.7');
INSERT INTO `sw_admin_log` VALUES ('212', '1396213199', '1', '添加广告: idx_step_left_2', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('213', '1396213240', '1', '添加广告: idx_step_right_2', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('214', '1396213283', '1', '编辑广告: idx_step_right_2', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('215', '1396213320', '1', '添加广告: idx_step_left_3', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('216', '1396213379', '1', '添加广告: idx_step_left_4', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('217', '1396213410', '1', '添加广告: idx_step_left_5', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('218', '1396213425', '1', '编辑广告: idx_step_left_5', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('219', '1396213437', '1', '编辑广告: idx_step_left_4', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('220', '1396213484', '1', '添加广告: idx_step_right_5', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('221', '1396213547', '1', '添加广告: idx_step_right_4', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('222', '1396213582', '1', '添加广告: idx_step_right_3', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('223', '1396213608', '1', '编辑广告: idx_step_right_1', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('224', '1396213675', '1', '添加广告: idx_step_mid_2', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('225', '1396213710', '1', '添加广告: idx_step_mid_3', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('226', '1396213743', '1', '添加广告: idx_step_mid_4', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('227', '1396213781', '1', '添加广告: idx_step_mid', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('228', '1396213787', '1', '编辑广告: idx_step_mid_5', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('229', '1396217344', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('230', '1396218636', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('231', '1396218669', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('232', '1398365344', '1', '添加文章: 经销商信息展示区域--河南省洛阳市经销商展示信息', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('233', '1398365581', '1', '添加文章分类: 经销商展区', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('234', '1398365613', '1', '添加文章: 经销商信息展示区域--河南省洛阳市经销商展示信息', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('235', '1398365625', '1', '添加文章: 经销商信息展示区域--河南省三门峡经销商展示信息', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('236', '1398365640', '1', '添加文章: 经销商信息展示区域--河南省三门峡市经销商展示信息', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('237', '1398365652', '1', '添加文章: 经销商信息展示区域--河南省新乡市经销商展示信息', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('238', '1398365665', '1', '添加文章: 经销商信息展示区域--河南省经销商展示信息', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('239', '1398365679', '1', '添加文章: 经销商信息展示区域--河南省郑州市经销商展示信息', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('240', '1398365789', '1', '添加文章: 经销商信息展示区域--河南三门峡市经销商展示信息', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('241', '1398366378', '1', '添加文章分类: 新手入门', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('242', '1398366409', '1', '添加文章分类: 购物指南', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('243', '1398366420', '1', '添加文章分类: 支付方式', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('244', '1398366438', '1', '添加文章分类: 配送方式', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('245', '1398366478', '1', '编辑文章: 购物须知', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('246', '1398366495', '1', '添加文章: 会员注册', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('247', '1398366507', '1', '添加文章: 会员登录', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('248', '1398366534', '1', '添加文章: 购物说明', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('249', '1398366544', '1', '添加文章: 购物流程', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('250', '1398366557', '1', '添加文章: 订单状态', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('251', '1398366579', '1', '添加文章: 货到付款或刷卡', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('252', '1398366592', '1', '添加文章: 电子券支付', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('253', '1398366602', '1', '添加文章: 网上支付', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('254', '1398366617', '1', '添加文章: 商品验货与签收', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('255', '1398366635', '1', '添加文章: 订单受理时间', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('256', '1398366647', '1', '添加文章: 运费说明', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('257', '1398366712', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('258', '1398366734', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('259', '1398366939', '1', '添加文章: 三门峡盛得佳帮购贸易有限公司', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('260', '1398367034', '1', '添加文章: 关于电视类订单的通知', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('261', '1398367064', '1', '添加文章: 盛得佳帮购感恩回馈', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('262', '1398367094', '1', '添加文章: 关于集成吊灯的通知', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('263', '1398369495', '1', '添加商品: 书包', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('264', '1398369622', '1', '编辑商品: 书包', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('265', '1398376067', '1', '添加商品: 珠宝', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('266', '1398381897', '1', '编辑商品: 拉杆箱', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('267', '1398381943', '1', '编辑商品: 117g农心辣白菜辛拉面（桶面） ', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('268', '1398382003', '1', '编辑商品: 紫丁香优质酱醋瓶', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('269', '1398382078', '1', '编辑商品: 项链', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('270', '1398382473', '1', '编辑商品:   135g德芙m&ms逗趣礼盒 [花生] ', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('271', '1398384153', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('272', '1398384184', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('273', '1398386552', '1', '编辑广告位置: 首页资讯下方广告位', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('274', '1398626524', '1', '编辑商店设置: ', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('275', '1398626562', '1', '编辑前台语言项: ', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('276', '1398626823', '1', '编辑商品分类: 箱包', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('277', '1398626857', '1', '添加商品分类: 生鲜蔬菜', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('278', '1398627115', '1', '添加商品分类: 新鲜蔬菜 ', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('279', '1398627129', '1', '添加商品分类: 新鲜水果', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('280', '1398627147', '1', '添加商品分类: 方便速食', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('281', '1398627165', '1', '编辑商品分类: 新鲜水果', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('282', '1398627195', '1', '编辑商品分类: 精品肉类', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('283', '1398627213', '1', '添加商品分类: 营养蛋类', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('284', '1398627235', '1', '添加商品分类: 海鲜鱼类', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('285', '1398627262', '1', '添加商品分类: 加工/糕点', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('286', '1398627308', '1', '编辑商品分类: 食品零食', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('287', '1398627455', '1', '编辑商品分类: 罐头食品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('288', '1398627486', '1', '编辑商品分类: 厨房调料', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('289', '1398627563', '1', '添加商品分类: 米面粮油', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('290', '1398627579', '1', '添加商品分类: 南北干货', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('291', '1398627593', '1', '添加商品分类: 礼盒/特产', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('292', '1398627607', '1', '添加商品分类: 无糖产品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('293', '1398627620', '1', '添加商品分类: 营养保健', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('294', '1398627631', '1', '添加商品分类: 进口食品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('295', '1398627733', '1', '删除商品分类: 牛奶乳品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('296', '1398627772', '1', '添加商品分类: 酒水饮料', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('297', '1398627788', '1', '添加商品分类: 酒水', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('298', '1398627804', '1', '添加商品分类: 饮料饮品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('299', '1398627817', '1', '添加商品分类: 牛奶乳品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('300', '1398627833', '1', '添加商品分类: 冲调饮品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('301', '1398627851', '1', '添加商品分类: 咖啡茶叶', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('302', '1398627897', '1', '编辑商品分类: 家居百货', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('303', '1398627941', '1', '添加商品分类: 锅具水壶', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('304', '1398627959', '1', '添加商品分类: 生活日用品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('305', '1398627991', '1', '添加商品分类: 收纳洗晒', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('306', '1398628005', '1', '添加商品分类: 家纺日用品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('307', '1398628019', '1', '添加商品分类: 床上用品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('308', '1398628036', '1', '添加商品分类: 家居家装', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('309', '1398628053', '1', '添加商品分类: 五金工具', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('310', '1398628087', '1', '添加商品分类: 园艺宠物', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('311', '1398628104', '1', '添加商品分类: 汽车用品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('312', '1398628115', '1', '添加商品分类: 户外用品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('313', '1398628176', '1', '编辑商品分类: 母婴中心', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('314', '1398628213', '1', '添加商品分类: 喂养用品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('315', '1398628231', '1', '添加商品分类: 贝贝寝具', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('316', '1398628258', '1', '添加商品分类: 婴儿洗护清洁', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('317', '1398628280', '1', '添加商品分类: 婴儿尿裤/湿巾', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('318', '1398628304', '1', '添加商品分类: 童具/童车', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('319', '1398628318', '1', '添加商品分类: 妈妈用品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('320', '1398628353', '1', '编辑商品分类: 美容美妆', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('321', '1398628401', '1', '添加商品分类: 脸部保养品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('322', '1398628416', '1', '添加商品分类: 美发护理', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('323', '1398628433', '1', '添加商品分类: 香水', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('324', '1398628450', '1', '添加商品分类: 眼部护理', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('325', '1398628463', '1', '添加商品分类: 男士护理', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('326', '1398628473', '1', '添加商品分类: 彩妆', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('327', '1398628488', '1', '添加商品分类: 身体护理', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('328', '1398628499', '1', '添加商品分类: 沐浴', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('329', '1398628514', '1', '添加商品分类: 工具配件', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('330', '1398628602', '1', '添加商品分类: 手足护理', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('331', '1398628616', '1', '添加商品分类: 香水', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('332', '1398628667', '1', '添加商品分类: 文体玩具', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('333', '1398628717', '1', '添加商品分类: 学生用品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('334', '1398628728', '1', '添加商品分类: 办公用品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('335', '1398628744', '1', '添加商品分类: 装裱/邮政用品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('336', '1398628756', '1', '添加商品分类: 图书', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('337', '1398628778', '1', '添加商品分类: 影视/音乐', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('338', '1398628794', '1', '添加商品分类: 玩具', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('339', '1398628806', '1', '添加商品分类: 体育用品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('340', '1398628839', '1', '编辑商品分类: 数码家电', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('341', '1398628884', '1', '编辑商品分类: 手机', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('342', '1398628902', '1', '编辑商品分类: 电脑', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('343', '1398628918', '1', '添加商品分类: 厨卫', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('344', '1398628937', '1', '添加商品分类: 数码', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('345', '1398628972', '1', '编辑商品分类: 清洁护理', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('346', '1398629000', '1', '编辑商品分类: 服装服饰', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('347', '1398633965', '1', '添加商品分类: 衣物清洁', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('348', '1398633984', '1', '添加商品分类: 卫浴用品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('349', '1398633998', '1', '添加商品分类: 一次性用品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('350', '1398634013', '1', '添加商品分类: 消杀用品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('351', '1398634025', '1', '添加商品分类: 护理用品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('352', '1398634063', '1', '编辑商品分类: 内衣', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('353', '1398634077', '1', '编辑商品分类: 女装', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('354', '1398634091', '1', '编辑商品分类: 男装', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('355', '1398634113', '1', '添加商品分类: 箱包', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('356', '1398634130', '1', '添加商品分类: 婴童服装', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('357', '1398634334', '1', '删除商品分类: 耳饰', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('358', '1398634367', '1', '删除商品分类: ', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('359', '1398635274', '1', '添加商品分类: 叶菜类', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('360', '1398635289', '1', '添加商品分类: 根菜类', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('361', '1398635311', '1', '添加商品分类: 茄果/瓜菜类', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('362', '1398635344', '1', '添加商品分类: 椒菜类', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('363', '1398635354', '1', '添加商品分类: 食用菌', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('364', '1398635389', '1', '添加商品分类: 豆荚类', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('365', '1398635400', '1', '添加商品分类: 芽苗类', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('366', '1398635410', '1', '添加商品分类: 花菜类', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('367', '1398635465', '1', '添加商品分类: 水产类', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('368', '1398635480', '1', '添加商品分类: 苹果', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('369', '1398635490', '1', '添加商品分类: 梨', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('370', '1398635502', '1', '添加商品分类: 桃', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('371', '1398635520', '1', '添加商品分类: 香蕉', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('372', '1398635552', '1', '添加商品分类: 枣/核桃', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('373', '1398635566', '1', '添加商品分类: 菠萝/草莓', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('374', '1398635575', '1', '添加商品分类: 西瓜', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('375', '1398635590', '1', '添加商品分类: 哈密瓜/甜瓜', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('376', '1398635609', '1', '添加商品分类: 柑橘/橙子', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('377', '1398635627', '1', '添加商品分类: 葡萄/提子', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('378', '1398635643', '1', '添加商品分类: 芒果', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('379', '1398635654', '1', '添加商品分类: 时令水果', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('380', '1398635668', '1', '添加商品分类: 洋果', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('381', '1398635684', '1', '添加商品分类: 猪肉', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('382', '1398635693', '1', '添加商品分类: 鸡肉', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('383', '1398635699', '1', '添加商品分类: 鸭肉', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('384', '1398635704', '1', '添加商品分类: 羊肉', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('385', '1398635711', '1', '添加商品分类: 牛肉', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('386', '1398635719', '1', '添加商品分类: 兔肉', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('387', '1398635725', '1', '添加商品分类: 腌制肉类', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('388', '1398635739', '1', '编辑商品分类: 牛肉', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('389', '1398635751', '1', '编辑商品分类: 鸡肉', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('390', '1398635760', '1', '编辑商品分类: 兔肉', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('391', '1398635774', '1', '编辑商品分类: 鸭肉', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('392', '1398635784', '1', '编辑商品分类: 腌制肉类', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('393', '1398635801', '1', '编辑商品分类: 羊肉', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('394', '1398635811', '1', '编辑商品分类: 猪肉', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('395', '1398635846', '1', '添加商品分类: 鸡蛋', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('396', '1398635855', '1', '添加商品分类: 鹌鹑蛋', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('397', '1398635866', '1', '添加商品分类: 鸭蛋', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('398', '1398635874', '1', '添加商品分类: 卤蛋', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('399', '1398635884', '1', '添加商品分类: 皮蛋', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('400', '1398635897', '1', '添加商品分类: 鱼类', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('401', '1398635904', '1', '添加商品分类: 虾类', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('402', '1398635913', '1', '添加商品分类: 贝类', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('403', '1398635922', '1', '添加商品分类: 其他海鲜', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('404', '1398635931', '1', '编辑商品分类: 其他海鲜', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('405', '1398635946', '1', '添加商品分类: 面条', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('406', '1398635954', '1', '添加商品分类: 馒头', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('407', '1398635966', '1', '添加商品分类: 豆制品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('408', '1398635985', '1', '添加商品分类: 加工净菜', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('409', '1398636054', '1', '添加商品分类: 米果/燕麦酥', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('410', '1398636067', '1', '添加商品分类: 锅巴', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('411', '1398636087', '1', '添加商品分类: 干脆小食', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('412', '1398636098', '1', '添加商品分类: 海苔', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('413', '1398636120', '1', '添加商品分类: 果冻', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('414', '1398636130', '1', '添加商品分类: 蜜饯', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('415', '1398636159', '1', '添加商品分类: 豆制零食', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('416', '1398636181', '1', '添加商品分类: 坚果/瓜子', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('417', '1398636192', '1', '添加商品分类: 肉干', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('418', '1398636205', '1', '添加商品分类: 肉松', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('419', '1398636220', '1', '添加商品分类: 海产类零食', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('420', '1398636237', '1', '添加商品分类: 禽类制品零食', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('421', '1398636248', '1', '添加商品分类: 其他零食', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('422', '1398636266', '1', '添加商品分类: 威化饼干', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('423', '1398636281', '1', '添加商品分类: 曲奇饼干', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('424', '1398636293', '1', '添加商品分类: 苏打饼干', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('425', '1398636305', '1', '添加商品分类: 甜味饼干', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('426', '1398636320', '1', '添加商品分类: 咸味饼干', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('427', '1398636330', '1', '添加商品分类: 沙琪玛', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('428', '1398636340', '1', '添加商品分类: 蛋糕派', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('429', '1398636358', '1', '添加商品分类: 其他糕点', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('430', '1398636393', '1', '添加商品分类: 速食品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('431', '1398636406', '1', '添加商品分类: 火腿肠', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('432', '1398636415', '1', '添加商品分类: 米酒', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('433', '1398636428', '1', '添加商品分类: 年糕', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('434', '1398636450', '1', '添加商品分类: 糖果', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('435', '1398636464', '1', '添加商品分类: 口香糖', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('436', '1398636484', '1', '添加商品分类: 奶片/奶酪', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('437', '1398636506', '1', '添加商品分类: 粽叶', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('438', '1398636522', '1', '添加商品分类: 低温香肠', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('439', '1398636539', '1', '添加商品分类: 低温肉制品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('440', '1398636553', '1', '添加商品分类: 腊肠/腊肉', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('441', '1398636569', '1', '添加商品分类: 牛排/披萨', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('442', '1398636584', '1', '添加商品分类: 水饺', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('443', '1398636599', '1', '添加商品分类: 混沌', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('444', '1398636609', '1', '添加商品分类: 汤圆', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('445', '1398636621', '1', '添加商品分类: 火锅食品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('446', '1398636641', '1', '添加商品分类: 面点点心', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('447', '1398636655', '1', '添加商品分类: 冰淇淋/冰糕', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('448', '1398636668', '1', '添加商品分类: 玉米', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('449', '1398636682', '1', '添加商品分类: 鱼雷罐头', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('450', '1398636759', '1', '添加商品分类: 肉类罐头', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('451', '1398636782', '1', '添加商品分类: 八宝粥/绿豆粥', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('452', '1398636794', '1', '添加商品分类: 水果罐头', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('453', '1398636811', '1', '添加商品分类: 其他罐头', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('454', '1398636896', '1', '添加商品分类: 调味料', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('455', '1398636908', '1', '添加商品分类: 调味酱', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('456', '1398636923', '1', '添加商品分类: 果浆/沙司', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('457', '1398636936', '1', '添加商品分类: 酱油', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('458', '1398636954', '1', '添加商品分类: 盐', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('459', '1398636967', '1', '添加商品分类: 糖', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('460', '1398636976', '1', '添加商品分类: 醋', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('461', '1398637000', '1', '添加商品分类: 即食汤料', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('462', '1398637014', '1', '添加商品分类: 腐乳', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('463', '1398637028', '1', '添加商品分类: 榨菜', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('464', '1398637051', '1', '添加商品分类: 食用油', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('465', '1398637065', '1', '添加商品分类: 大米', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('466', '1398637076', '1', '添加商品分类: 小米', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('467', '1398637091', '1', '添加商品分类: 杂粮', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('468', '1398637108', '1', '添加商品分类: 挂面', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('469', '1398637120', '1', '添加商品分类: 面粉', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('470', '1398637147', '1', '添加商品分类: 枣类', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('471', '1398637158', '1', '添加商品分类: 菌菇类', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('472', '1398637168', '1', '添加商品分类: 干菜类', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('473', '1398637178', '1', '添加商品分类: 干果类', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('474', '1398637200', '1', '添加商品分类: 豆制品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('475', '1398637210', '1', '添加商品分类: 滋补类', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('476', '1398637220', '1', '添加商品分类: 粉丝', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('477', '1398637249', '1', '添加商品分类: 牛肉礼盒', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('478', '1398637260', '1', '添加商品分类: 驴肉礼盒', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('479', '1398637271', '1', '添加商品分类: 河南特产', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('480', '1398637286', '1', '添加商品分类: 礼盒/礼包', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('481', '1398637308', '1', '添加商品分类: 无糖沙琪玛', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('482', '1398637336', '1', '添加商品分类: 无糖蛋糕派', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('483', '1398637374', '1', '添加商品分类: 无糖饼干/桃酥', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('484', '1398637396', '1', '添加商品分类: 无糖营养冲调', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('485', '1398637416', '1', '添加商品分类: 无糖其他产品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('486', '1398637433', '1', '添加商品分类: 大众保健', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('487', '1398637460', '1', '添加商品分类: 中老年保健', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('488', '1398637499', '1', '添加商品分类: 进口营养补剂', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('489', '1398637528', '1', '添加商品分类: 国产白酒', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('490', '1398637543', '1', '添加商品分类: 进口烈酒', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('491', '1398637564', '1', '添加商品分类: 葡萄酒/红酒', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('492', '1398637580', '1', '添加商品分类: 啤酒', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('493', '1398637590', '1', '添加商品分类: 黄酒', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('494', '1398637606', '1', '添加商品分类: 保健酒', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('495', '1398637623', '1', '添加商品分类: 洋酒', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('496', '1398637640', '1', '添加商品分类: 酒类礼品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('497', '1398637663', '1', '添加商品分类: 饮用水', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('498', '1398637682', '1', '添加商品分类: 碳酸饮料', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('499', '1398637691', '1', '添加商品分类: 茶饮料', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('500', '1398637703', '1', '添加商品分类: 果汁', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('501', '1398637719', '1', '添加商品分类: 运动/功能饮料', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('502', '1398637729', '1', '添加商品分类: 咖啡饮料', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('503', '1398637743', '1', '添加商品分类: 蛋白饮料', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('504', '1398637764', '1', '添加商品分类: 低温鲜奶', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('505', '1398637776', '1', '添加商品分类: 酸奶', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('506', '1398637789', '1', '添加商品分类: 低温酸奶', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('507', '1398637799', '1', '添加商品分类: 儿童奶', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('508', '1398637810', '1', '添加商品分类: 纯牛奶', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('509', '1398637821', '1', '添加商品分类: 口味奶', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('510', '1398637834', '1', '添加商品分类: 功能奶', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('511', '1398637861', '1', '添加商品分类: 蜂蜜', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('512', '1398637876', '1', '添加商品分类: 奶茶', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('513', '1398637898', '1', '添加商品分类: 果味冲饮', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('514', '1398637917', '1', '添加商品分类: 麦片谷物', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('515', '1398637933', '1', '添加商品分类: 豆奶粉/豆浆', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('516', '1398637945', '1', '添加商品分类: 成人奶粉', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('517', '1398637962', '1', '添加商品分类: 芝麻糊/油茶', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('518', '1398637986', '1', '添加商品分类: 藕粉/核桃粉', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('519', '1398638003', '1', '添加商品分类: 速溶咖啡', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('520', '1398638016', '1', '添加商品分类: 咖啡伴侣', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('521', '1398638035', '1', '添加商品分类: 花茶', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('522', '1398638048', '1', '添加商品分类: 绿茶', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('523', '1398638062', '1', '添加商品分类: 红茶', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('524', '1398638073', '1', '添加商品分类: 普洱茶', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('525', '1398638083', '1', '添加商品分类: 铁观音', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('526', '1398638093', '1', '添加商品分类: 毛尖', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('527', '1398638107', '1', '添加商品分类: 龙井', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('528', '1398638115', '1', '添加商品分类: 碧螺春', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('529', '1398638162', '1', '添加商品分类: 塑料水杯', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('530', '1398638179', '1', '添加商品分类: 口杯', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('531', '1398638199', '1', '添加商品分类: 玻璃杯', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('532', '1398638221', '1', '添加商品分类: 保温杯/保温饭盒', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('533', '1398638241', '1', '添加商品分类: 茶壶/咖啡壶', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('534', '1398638268', '1', '添加商品分类: 套装茶具/咖啡具', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('535', '1398638304', '1', '添加商品分类: 碗/碟/盘', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('536', '1398638371', '1', '添加商品分类: 餐刀/叉/汤匙/筷子', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('537', '1398638384', '1', '添加商品分类: 保鲜盒/饭盒', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('538', '1398638400', '1', '添加商品分类: 套装餐具', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('539', '1398638419', '1', '添加商品分类: 套装酒具/配件', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('540', '1398638437', '1', '添加商品分类: 餐桌配件', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('541', '1398638451', '1', '添加商品分类: 烟灰缸', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('542', '1398638465', '1', '添加商品分类: 炒锅', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('543', '1398638492', '1', '添加商品分类: 煎锅/平底锅', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('544', '1398638507', '1', '添加商品分类: 水壶', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('545', '1398638519', '1', '添加商品分类: 压力锅', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('546', '1398638533', '1', '添加商品分类: 汤锅', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('547', '1398638546', '1', '添加商品分类: 煲锅', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('548', '1398638562', '1', '添加商品分类: 蒸锅', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('549', '1398638573', '1', '添加商品分类: 奶锅', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('550', '1398638592', '1', '添加商品分类: 套装锅', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('551', '1398638611', '1', '添加商品分类: 锅具配件', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('552', '1398638638', '1', '添加商品分类: 雨伞/雨衣', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('553', '1398638662', '1', '添加商品分类: 粘钩及挂钩', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('554', '1398638687', '1', '添加商品分类: 香薰及附件', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('555', '1398638712', '1', '添加商品分类: 碳净化', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('556', '1398638728', '1', '添加商品分类: 干鞋器', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('557', '1398638740', '1', '添加商品分类: 蜡烛', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('558', '1398638757', '1', '添加商品分类: 针线/缝纫', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('559', '1398638779', '1', '添加商品分类: 尘刷', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('560', '1398638804', '1', '添加商品分类: 收纳用品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('561', '1398638817', '1', '添加商品分类: 购物收纳', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('562', '1398638835', '1', '添加商品分类: 收纳层架', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('563', '1398638858', '1', '添加商品分类: 衣架', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('564', '1398638875', '1', '添加商品分类: 晾衣架', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('565', '1398638893', '1', '添加商品分类: 多头晒衣架', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('566', '1398638922', '1', '添加商品分类: 晾衣夹/绳', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('567', '1398638962', '1', '添加商品分类: 洗衣篮/收纳篮/晒衣篮', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('568', '1398638983', '1', '添加商品分类: 整理箱/抽屉柜', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('569', '1398639016', '1', '添加商品分类: 压缩袋/泵', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('570', '1398639052', '1', '添加商品分类: 其他洗纳工具', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('571', '1398639079', '1', '添加商品分类: 毛巾', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('572', '1398639093', '1', '添加商品分类: 浴巾', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('573', '1398639106', '1', '添加商品分类: 沙发垫', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('574', '1398639130', '1', '添加商品分类: 靠垫/坐垫', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('575', '1398639162', '1', '添加商品分类: 桌布/台布', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('576', '1398639194', '1', '添加商品分类: 围裙/橡胶手套', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('577', '1398639214', '1', '添加商品分类: 拖鞋', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('578', '1398639225', '1', '添加商品分类: 鞋垫', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('579', '1398639239', '1', '添加商品分类: 腰带', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('580', '1398639254', '1', '添加商品分类: 配饰及其他', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('581', '1398639287', '1', '添加商品分类: 床品单件', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('582', '1398639305', '1', '添加商品分类: 床品套件', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('583', '1398639324', '1', '添加商品分类: 春秋被', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('584', '1398639343', '1', '添加商品分类: 夏凉被', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('585', '1398639360', '1', '添加商品分类: 枕头/枕芯', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('586', '1398639421', '1', '添加商品分类: 毯子/毛巾毯', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('587', '1398639448', '1', '添加商品分类: 床垫', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('588', '1398639476', '1', '添加商品分类: 凉席/凉枕', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('589', '1398639555', '1', '添加商品分类: 照明灯具', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('590', '1398639595', '1', '添加商品分类: 电脑桌', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('591', '1398639629', '1', '添加商品分类: 座椅凳', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('592', '1398639648', '1', '添加商品分类: 衣橱/衣柜', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('593', '1398639673', '1', '添加商品分类: 鞋架/鞋柜', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('594', '1398639691', '1', '添加商品分类: 层架/层柜', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('595', '1398639728', '1', '添加商品分类: 手电筒/小夜灯', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('596', '1398639752', '1', '添加商品分类: 节能灯泡', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('597', '1398639764', '1', '添加商品分类: 插座', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('598', '1398639782', '1', '添加商品分类: 手工具', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('599', '1398639808', '1', '添加商品分类: 家用五金/五金零件', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('600', '1398639840', '1', '添加商品分类: 家居保护垫', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('601', '1398639863', '1', '添加商品分类: 猫粮', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('602', '1398639876', '1', '添加商品分类: 狗粮', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('603', '1398639901', '1', '添加商品分类: 汽车坐垫/靠垫', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('604', '1398639919', '1', '添加商品分类: 空气清新剂', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('605', '1398639935', '1', '添加商品分类: 汽车清洁用品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('606', '1398639953', '1', '添加商品分类: 蜡/抛光产品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('607', '1398639968', '1', '添加商品分类: 汽车玻璃清洁剂', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('608', '1398639981', '1', '添加商品分类: 内部配件', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('609', '1398640032', '1', '添加商品分类: 烧烤工具', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('610', '1398640051', '1', '添加商品分类: 户外帐篷', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('611', '1398640233', '1', '添加商品分类: 奶嘴/奶瓶', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('612', '1398640266', '1', '添加商品分类: 奶瓶配件', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('613', '1398640283', '1', '添加商品分类: 安抚奶嘴', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('614', '1398640309', '1', '添加商品分类: 宝宝杯/壶', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('615', '1398640331', '1', '添加商品分类: 婴儿餐具', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('616', '1398640353', '1', '添加商品分类: 喂养罩衣', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('617', '1398640371', '1', '添加商品分类: 暖奶器', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('618', '1398640389', '1', '添加商品分类: 安全用品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('619', '1398640401', '1', '添加商品分类: 消毒锅', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('620', '1398640435', '1', '添加商品分类: 被褥/毛毯', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('621', '1398642543', '1', '删除商品分类: 香水', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('622', '1398642705', '1', '添加商品分类: 睡枕/抱枕', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('623', '1398642737', '1', '添加商品分类: 睡袋/抱被', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('624', '1398642763', '1', '添加商品分类: 洗发沐浴', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('625', '1398642792', '1', '添加商品分类: 婴儿护肤', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('626', '1398642812', '1', '添加商品分类: 婴儿口腔护理', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('627', '1398642831', '1', '添加商品分类: 义务清洁', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('628', '1398642850', '1', '添加商品分类: 耳鼻护理', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('629', '1398642883', '1', '添加商品分类: 婴儿纸尿裤', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('630', '1398642905', '1', '添加商品分类: 婴儿湿巾', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('631', '1398642920', '1', '添加商品分类: 婴儿隔尿垫', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('632', '1398642952', '1', '添加商品分类: 摇椅/童床', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('633', '1398642971', '1', '添加商品分类: 儿童推车', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('634', '1398642985', '1', '添加商品分类: 儿童桌椅', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('635', '1398642997', '1', '添加商品分类: 学步车', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('636', '1398643013', '1', '添加商品分类: 儿童自行车', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('637', '1398643029', '1', '添加商品分类: 妈妈内衣', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('638', '1398643042', '1', '添加商品分类: 妈妈洗护', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('639', '1398643078', '1', '添加商品分类: 去妊辰纹', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('640', '1398643099', '1', '添加商品分类: 产后恢复', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('641', '1398643131', '1', '添加商品分类: 哺乳用品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('642', '1398643168', '1', '添加商品分类: 牙刷/牙线', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('643', '1398643181', '1', '添加商品分类: 漱口水', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('644', '1398643358', '1', '添加商品分类: 卸妆', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('645', '1398643369', '1', '添加商品分类: 洁面', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('646', '1398643380', '1', '添加商品分类: 面膜', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('647', '1398643408', '1', '添加商品分类: 润肤水/乳霜', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('648', '1398643444', '1', '添加商品分类: 防晒露/霜/液', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('649', '1398643467', '1', '添加商品分类: 女士护肤套盒', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('650', '1398643491', '1', '添加商品分类: 洗发水', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('651', '1398643505', '1', '添加商品分类: 护发素', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('652', '1398643522', '1', '添加商品分类: 深层护理', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('653', '1398643542', '1', '添加商品分类: 定型/造型', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('654', '1398643551', '1', '添加商品分类: 染发', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('655', '1398643569', '1', '添加商品分类: 洗护发旅行品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('656', '1398643589', '1', '添加商品分类: 女士香水', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('657', '1398643604', '1', '添加商品分类: 眼霜', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('658', '1398643623', '1', '添加商品分类: 男士洁面', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('659', '1398643638', '1', '添加商品分类: 男士护肤品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('660', '1398643658', '1', '添加商品分类: 男性洗液', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('661', '1398643681', '1', '添加商品分类: 刀架/刀片', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('662', '1398643717', '1', '添加商品分类: 刮胡泡须后用品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('663', '1398643735', '1', '添加商品分类: 男士护肤套盒', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('664', '1398643752', '1', '添加商品分类: 面部', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('665', '1398643765', '1', '添加商品分类: 唇部', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('666', '1398643781', '1', '添加商品分类: 眼部', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('667', '1398643815', '1', '添加商品分类: 润肤乳', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('668', '1398643830', '1', '添加商品分类: 脱毛', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('669', '1398643861', '1', '添加商品分类: 沐浴液', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('670', '1398643880', '1', '添加商品分类: 香皂', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('671', '1398643900', '1', '添加商品分类: 浴盐', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('672', '1398643919', '1', '添加商品分类: 护手霜', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('673', '1398643940', '1', '添加商品分类: 洗手液', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('674', '1398643973', '1', '添加商品分类: 化妆工具', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('675', '1398643991', '1', '添加商品分类: 美发工具', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('676', '1398644032', '1', '添加商品分类: 书写材料', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('677', '1398644054', '1', '添加商品分类: 画画美术', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('678', '1398644091', '1', '添加商品分类: 笔记本(簿)', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('679', '1398644117', '1', '添加商品分类: 笔盒/笔袋', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('680', '1398644133', '1', '添加商品分类: 几何用具', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('681', '1398644151', '1', '添加商品分类: 文件套装/配件', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('682', '1398644166', '1', '添加商品分类: 办公用纸', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('683', '1398644193', '1', '添加商品分类: 胶水/胶带/固体胶', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('684', '1398644208', '1', '添加商品分类: 文件管理', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('685', '1398644230', '1', '添加商品分类: 办公配件', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('686', '1398644257', '1', '添加商品分类: 黑板/白板/配件', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('687', '1398644290', '1', '添加商品分类: 邮政用品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('688', '1398644308', '1', '添加商品分类: 儿童益智', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('689', '1398644334', '1', '添加商品分类: 儿童故事', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('690', '1398644349', '1', '添加商品分类: 儿童文学', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('691', '1398644365', '1', '添加商品分类: 字词典工具书', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('692', '1398644379', '1', '添加商品分类: 作文系列', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('693', '1398644395', '1', '添加商品分类: 文学类', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('694', '1398644410', '1', '添加商品分类: 经典名著', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('695', '1398644426', '1', '添加商品分类: 历史地理', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('696', '1398644449', '1', '添加商品分类: 经管社科', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('697', '1398644463', '1', '添加商品分类: 电脑应用', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('698', '1398644486', '1', '添加商品分类: 养生/菜谱', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('699', '1398644501', '1', '添加商品分类: 女性系类', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('700', '1398644518', '1', '添加商品分类: 孕产养育', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('701', '1398644543', '1', '添加商品分类: 图书礼盒', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('702', '1398644563', '1', '添加商品分类: 车载CD', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('703', '1398644579', '1', '添加商品分类: DVD歌曲', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('704', '1398644595', '1', '添加商品分类: 游戏', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('705', '1398644615', '1', '添加商品分类: 戏曲', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('706', '1398644650', '1', '添加商品分类: 百科', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('707', '1398644667', '1', '添加商品分类: 轻音乐', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('708', '1398644688', '1', '添加商品分类: 胎教音乐', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('709', '1398644706', '1', '添加商品分类: 幼教卡通', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('710', '1398644731', '1', '添加商品分类: 碟包/碟盒', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('711', '1398644745', '1', '添加商品分类: 影音礼物', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('712', '1398644779', '1', '添加商品分类: 遥控/电动玩具', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('713', '1398644794', '1', '添加商品分类: 毛绒玩具', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('714', '1398644811', '1', '添加商品分类: 男孩玩具', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('715', '1398644829', '1', '添加商品分类: 女孩玩具', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('716', '1398644844', '1', '添加商品分类: 音乐玩具', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('717', '1398644862', '1', '添加商品分类: 早教益智', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('718', '1398644893', '1', '添加商品分类: 摇铃', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('719', '1398644915', '1', '添加商品分类: 床铃', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('720', '1398644943', '1', '添加商品分类: 健身架', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('721', '1398644963', '1', '添加商品分类: 游戏垫/地垫', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('722', '1398644986', '1', '添加商品分类: 棋类/纸牌', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('723', '1398645000', '1', '添加商品分类: 球类运动', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('724', '1398645020', '1', '添加商品分类: 球拍/配件', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('725', '1398645047', '1', '添加商品分类: 滚轴溜冰/滑板', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('726', '1398645068', '1', '添加商品分类: 健康器材', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('727', '1398645098', '1', '添加商品分类: 平板电视', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('728', '1398645108', '1', '添加商品分类: 冰箱', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('729', '1398645116', '1', '添加商品分类: 洗衣机', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('730', '1398645130', '1', '添加商品分类: 家用空调', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('731', '1398645146', '1', '添加商品分类: 生活电器', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('732', '1398645157', '1', '添加商品分类: 厨房电器', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('733', '1398645173', '1', '添加商品分类: 个人护理', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('734', '1398645186', '1', '添加商品分类: 手机', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('735', '1398645195', '1', '添加商品分类: 充电器', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('736', '1398645209', '1', '添加商品分类: 存储卡', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('737', '1398645224', '1', '添加商品分类: 电脑外设', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('738', '1398645244', '1', '添加商品分类: 油烟机/灶具', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('739', '1398645260', '1', '添加商品分类: 洗碗机', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('740', '1398645272', '1', '添加商品分类: 饮水机', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('741', '1398645292', '1', '添加商品分类: 净水桶', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('742', '1398645305', '1', '添加商品分类: 净水设备', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('743', '1398645326', '1', '添加商品分类: 消毒柜', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('744', '1398645339', '1', '添加商品分类: 热水器', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('745', '1398645361', '1', '添加商品分类: 浴霸/排气扇', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('746', '1398645380', '1', '添加商品分类: 水槽/水龙头', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('747', '1398645395', '1', '添加商品分类: 洁身器', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('748', '1398645408', '1', '添加商品分类: 垃圾处理机', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('749', '1398645444', '1', '添加商品分类: 摄影摄像', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('750', '1398645472', '1', '添加商品分类: 照摄配件', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('751', '1398645505', '1', '添加商品分类: 洗衣液', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('752', '1398645513', '1', '添加商品分类: 洗衣服', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('753', '1398645541', '1', '添加商品分类: 衣物除菌/洗衣剂', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('754', '1398645554', '1', '添加商品分类: 洗衣皂', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('755', '1398645567', '1', '添加商品分类: 衣物柔顺剂', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('756', '1398645652', '1', '添加商品分类: 衣物漂渍液/漂白水/彩漂', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('757', '1398645679', '1', '添加商品分类: 家居清洁剂/蜡', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('758', '1398645696', '1', '添加商品分类: 洗洁精', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('759', '1398645712', '1', '添加商品分类: 洁厕剂', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('760', '1398645750', '1', '添加商品分类: 消毒水', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('761', '1398645768', '1', '添加商品分类: 油污清洁剂', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('762', '1398645781', '1', '添加商品分类: 底板清洁剂', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('763', '1398645798', '1', '添加商品分类: 器皿清洁', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('764', '1398645830', '1', '添加商品分类: 管道疏通剂', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('765', '1398645843', '1', '添加商品分类: 干燥剂', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('766', '1398645860', '1', '添加商品分类: 多用途清洁粉', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('767', '1398645875', '1', '添加商品分类: 空气清洁剂', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('768', '1398645893', '1', '添加商品分类: 玻璃清洁剂', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('769', '1398645914', '1', '添加商品分类: 底板清洁剂/蜡', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('770', '1398645932', '1', '添加商品分类: 鞋刷/鞋油', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('771', '1398645946', '1', '添加商品分类: 皮革护理', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('772', '1398645965', '1', '添加商品分类: 防臭剂', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('773', '1398645988', '1', '添加商品分类: 清洁球', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('774', '1398646002', '1', '添加商品分类: 百洁布/抹布', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('775', '1398646019', '1', '添加商品分类: 拖把/尘推', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('776', '1398646042', '1', '添加商品分类: 扫帚/垃圾铲', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('777', '1398646064', '1', '添加商品分类: 垃圾桶', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('778', '1398646088', '1', '添加商品分类: 盆类/桶类', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('779', '1398646113', '1', '添加商品分类: 皂盒/洗漱收纳', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('780', '1398646129', '1', '添加商品分类: 镜子/梳子', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('781', '1398646142', '1', '添加商品分类: 沐浴用品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('782', '1398646185', '1', '添加商品分类: 浴盆/浴篮', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('783', '1398646207', '1', '添加商品分类: 浴室配件', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('784', '1398646224', '1', '添加商品分类: 卫生间配件', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('785', '1398646254', '1', '添加商品分类: 垃圾袋', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('786', '1398646273', '1', '添加商品分类: 保鲜袋/保鲜膜', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('787', '1398646317', '1', '添加商品分类: 牙签/果签/棉签', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('788', '1398646354', '1', '添加商品分类: 纸杯/塑杯/杯托', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('789', '1398646368', '1', '添加商品分类: 一次性餐具', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('790', '1398646383', '1', '添加商品分类: 一次性鞋套', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('791', '1398646400', '1', '添加商品分类: 一次性手套', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('792', '1398646413', '1', '添加商品分类: 铝箔', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('793', '1398646444', '1', '添加商品分类: 樟脑丸/片', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('794', '1398646464', '1', '添加商品分类: 卷纸', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('795', '1398646480', '1', '添加商品分类: 软抽', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('796', '1398646495', '1', '添加商品分类: 盒抽', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('797', '1398646510', '1', '添加商品分类: 手帕纸', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('798', '1398646520', '1', '添加商品分类: 湿巾', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('799', '1398646536', '1', '添加商品分类: 厨房用纸', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('800', '1398646550', '1', '添加商品分类: 女性护理', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('801', '1398646566', '1', '添加商品分类: 家庭护理', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('802', '1398646588', '1', '添加商品分类: 成人尿裤/尿垫', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('803', '1398646601', '1', '添加商品分类: 计生保健', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('804', '1398646620', '1', '添加商品分类: 文胸', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('805', '1398646634', '1', '添加商品分类: 女士吊带/背心', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('806', '1398646648', '1', '添加商品分类: 女士底裤', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('807', '1398646661', '1', '添加商品分类: 女士袜品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('808', '1398646674', '1', '添加商品分类: 女士家居服', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('809', '1398646695', '1', '添加商品分类: 内衣套/保暖内衣', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('810', '1398646706', '1', '添加商品分类: 男士底裤', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('811', '1398646721', '1', '添加商品分类: 男士袜品', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('812', '1398646746', '1', '添加商品分类: 男士背心/T恤', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('813', '1398646760', '1', '添加商品分类: T恤', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('814', '1398646774', '1', '添加商品分类: 打底裤', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('815', '1398646799', '1', '添加商品分类: T恤/POLO衫', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('816', '1398646818', '1', '添加商品分类: 马甲/背心', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('817', '1398646829', '1', '添加商品分类: 男包', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('818', '1398646841', '1', '添加商品分类: 中性包', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('819', '1398646855', '1', '添加商品分类: 婴童内衣', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('820', '1398707300', '1', '回收商品: 珠宝', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('821', '1398707317', '1', '回收商品: 书包', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('822', '1398707920', '1', '编辑广告: 首页资讯下方广告', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('823', '1398708556', '1', '添加商品分类: 炒锅', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('824', '1398708585', '1', '添加商品分类: 煎锅/平面锅', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('825', '1398708606', '1', '添加商品分类: 水壶', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('826', '1398708630', '1', '添加商品分类: 压力锅', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('827', '1398708648', '1', '添加商品分类: 汤锅', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('828', '1398708664', '1', '添加商品分类: 煲锅', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('829', '1398708676', '1', '添加商品分类: 蒸锅', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('830', '1398708692', '1', '添加商品分类: 奶锅', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('831', '1398708709', '1', '添加商品分类: 套装锅', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('832', '1398708725', '1', '添加商品分类: 锅具配件', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('833', '1398709116', '1', '编辑广告: 首页资讯下方广告', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('834', '1398709438', '1', '编辑广告位置: idx_step_left', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('835', '1398709443', '1', '编辑广告位置: idx_step_right', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('836', '1398709805', '1', '编辑商品: 运动包', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('837', '1398709815', '1', '编辑商品: 运动包', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('838', '1398709824', '1', '编辑商品: 运动包', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('839', '1398709836', '1', '编辑商品: 运动服', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('840', '1398709846', '1', '编辑商品: 运动服', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('841', '1398709854', '1', '编辑商品: 运动服', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('842', '1398709865', '1', '编辑商品: 运动服', '127.0.0.1');
INSERT INTO `sw_admin_log` VALUES ('843', '1398711884', '1', '编辑权限管理: dsdmall', '127.0.0.1');

-- ----------------------------
-- Table structure for `sw_admin_message`
-- ----------------------------
DROP TABLE IF EXISTS `sw_admin_message`;
CREATE TABLE `sw_admin_message` (
  `message_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `receiver_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `sent_time` int(11) unsigned NOT NULL DEFAULT '0',
  `read_time` int(11) unsigned NOT NULL DEFAULT '0',
  `readed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `sender_id` (`sender_id`,`receiver_id`),
  KEY `receiver_id` (`receiver_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_admin_message
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_admin_user`
-- ----------------------------
DROP TABLE IF EXISTS `sw_admin_user`;
CREATE TABLE `sw_admin_user` (
  `user_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `ec_salt` varchar(10) DEFAULT NULL,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `last_login` int(11) NOT NULL DEFAULT '0',
  `last_ip` varchar(15) NOT NULL DEFAULT '',
  `action_list` text NOT NULL,
  `nav_list` text NOT NULL,
  `lang_type` varchar(50) NOT NULL DEFAULT '',
  `agency_id` smallint(5) unsigned NOT NULL,
  `suppliers_id` smallint(5) unsigned DEFAULT '0',
  `todolist` longtext,
  `role_id` smallint(5) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `user_name` (`user_name`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_admin_user
-- ----------------------------
INSERT INTO `sw_admin_user` VALUES ('1', 'admin', 'admin@admin.com', '304f1497ec2037a1c8955a95a0f58539', '39', '1358236387', '1398711791', '127.0.0.1', 'all', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list,会员列表|users.php?act=list,商店设置|shop_config.php?act=list_edit', '', '0', '0', null, null);
INSERT INTO `sw_admin_user` VALUES ('2', 'dsdmall', 'dsdmall@123.com', '0de7ab571c7937d1c222dd808a2834ee', null, '1398711808', '0', '', 'goods_manage,remove_back,cat_manage,cat_drop,brand_manage,comment_priv,goods_batch,article_cat,article_manage,shopinfo_manage,shophelp_manage,feedback_priv,users_manage,users_drop,surplus_manage,account_manage,shop_config,ship_manage,payment,shiparea_manage,area_manage,friendlink,flash_manage,navigator,sitemap,reg_fields,order_os_edit,order_ps_edit,order_ss_edit,order_edit,order_view,order_view_finished,repay_manage,booking,delivery_view,back_view', '商品列表|goods.php?act=list,订单列表|order.php?act=list,用户评论|comment_manage.php?act=list,会员列表|users.php?act=list,商店设置|shop_config.php?act=list_edit', '', '0', '0', null, '0');

-- ----------------------------
-- Table structure for `sw_adsense`
-- ----------------------------
DROP TABLE IF EXISTS `sw_adsense`;
CREATE TABLE `sw_adsense` (
  `from_ad` smallint(5) NOT NULL DEFAULT '0',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `clicks` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `from_ad` (`from_ad`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_adsense
-- ----------------------------
INSERT INTO `sw_adsense` VALUES ('1', '本站', '3');
INSERT INTO `sw_adsense` VALUES ('14', '本站', '1');
INSERT INTO `sw_adsense` VALUES ('13', '本站', '1');

-- ----------------------------
-- Table structure for `sw_ad_custom`
-- ----------------------------
DROP TABLE IF EXISTS `sw_ad_custom`;
CREATE TABLE `sw_ad_custom` (
  `ad_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ad_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ad_name` varchar(60) DEFAULT NULL,
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext,
  `url` varchar(255) DEFAULT NULL,
  `ad_status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ad_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_ad_custom
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_ad_position`
-- ----------------------------
DROP TABLE IF EXISTS `sw_ad_position`;
CREATE TABLE `sw_ad_position` (
  `position_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `position_name` varchar(60) NOT NULL DEFAULT '',
  `ad_width` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ad_height` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position_desc` varchar(255) NOT NULL DEFAULT '',
  `position_style` text NOT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_ad_position
-- ----------------------------
INSERT INTO `sw_ad_position` VALUES ('1', '首页资讯下方广告位', '245', '96', '', '<div>{$ads[0]}</div>');
INSERT INTO `sw_ad_position` VALUES ('2', 'idx_step_mid', '723', '200', '首页楼层内广告位 中间', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `sw_ad_position` VALUES ('3', 'idx_step_right', '243', '190', '首页楼层内广告位 右侧', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');
INSERT INTO `sw_ad_position` VALUES ('4', 'idx_step_left', '242', '310', '首页楼层内广告位 左侧', '<table cellpadding=\"0\" cellspacing=\"0\">\r\n{foreach from=$ads item=ad}\r\n<tr><td>{$ad}</td></tr>\r\n{/foreach}\r\n</table>');

-- ----------------------------
-- Table structure for `sw_affiliate_log`
-- ----------------------------
DROP TABLE IF EXISTS `sw_affiliate_log`;
CREATE TABLE `sw_affiliate_log` (
  `log_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) NOT NULL,
  `time` int(10) NOT NULL,
  `user_id` mediumint(8) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `point` int(10) NOT NULL DEFAULT '0',
  `separate_type` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_affiliate_log
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_agency`
-- ----------------------------
DROP TABLE IF EXISTS `sw_agency`;
CREATE TABLE `sw_agency` (
  `agency_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `agency_name` varchar(255) NOT NULL,
  `agency_desc` text NOT NULL,
  PRIMARY KEY (`agency_id`),
  KEY `agency_name` (`agency_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_agency
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_area_region`
-- ----------------------------
DROP TABLE IF EXISTS `sw_area_region`;
CREATE TABLE `sw_area_region` (
  `shipping_area_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `region_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`shipping_area_id`,`region_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_area_region
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_article`
-- ----------------------------
DROP TABLE IF EXISTS `sw_article`;
CREATE TABLE `sw_article` (
  `article_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) NOT NULL DEFAULT '0',
  `title` varchar(150) NOT NULL DEFAULT '',
  `content` longtext NOT NULL,
  `author` varchar(30) NOT NULL DEFAULT '',
  `author_email` varchar(60) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `article_type` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `is_open` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `file_url` varchar(255) NOT NULL DEFAULT '',
  `open_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `link` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`article_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_article
-- ----------------------------
INSERT INTO `sw_article` VALUES ('1', '2', '免责条款', '', '', '', '', '0', '1', '1396055852', '', '0', '', null);
INSERT INTO `sw_article` VALUES ('2', '2', '隐私保护', '', '', '', '', '0', '1', '1396055852', '', '0', '', null);
INSERT INTO `sw_article` VALUES ('3', '2', '咨询热点', '', '', '', '', '0', '1', '1396055852', '', '0', '', null);
INSERT INTO `sw_article` VALUES ('4', '2', '联系我们', '', '', '', '', '0', '1', '1396055852', '', '0', '', null);
INSERT INTO `sw_article` VALUES ('5', '2', '公司简介', '', '', '', '', '0', '1', '1396055852', '', '0', '', null);
INSERT INTO `sw_article` VALUES ('6', '-1', '用户协议', '', '', '', '', '0', '1', '1396055852', '', '0', '', null);
INSERT INTO `sw_article` VALUES ('7', '4', '大时代商城上线了', '<p>&nbsp;大时代商城上线了大时代商城上线了大时代商城上线了大时代商城上线了大时代商城上线了</p>', '', '', '', '0', '1', '1396118412', '', '0', 'http://', '');
INSERT INTO `sw_article` VALUES ('8', '4', '大时代商城运费通知', '<p>&nbsp;大时代商城运费通知大时代商城运费通知大时代商城运费通知大时代商城运费通知</p>', '', '', '', '0', '1', '1396118869', '', '0', 'http://', '');
INSERT INTO `sw_article` VALUES ('9', '4', '大时代商城感恩回馈', '<p>&nbsp;大时代商城感恩回馈大时代商城感恩回馈大时代商城感恩回馈大时代商城感恩回馈大时代商城感恩回馈</p>', '', '', '', '0', '1', '1396118883', '', '0', 'http://', '');
INSERT INTO `sw_article` VALUES ('10', '4', '关于生鲜蔬菜类订单的通知', '<p>&nbsp;关于生鲜蔬菜类订单的通知关于生鲜蔬菜类订单的通知关于生鲜蔬菜类订单的通知</p>', '', '', '', '0', '1', '1396118902', '', '0', 'http://', '');
INSERT INTO `sw_article` VALUES ('11', '4', '大时代商城2014运营通告', '<p>&nbsp;大时代商城2014运营通告大时代商城2014运营通告大时代商城2014运营通告大时代商城2014运营通告</p>', '', '', '', '0', '1', '1396118926', '', '0', 'http://', '');
INSERT INTO `sw_article` VALUES ('12', '4', '大时代商城向您承诺', '<p>&nbsp;大时代商城向您承诺大时代商城向您承诺大时代商城向您承诺大时代商城向您承诺</p>', '', '', '', '0', '1', '1396118972', '', '0', 'http://', '');
INSERT INTO `sw_article` VALUES ('13', '6', '购物须知', '', '', '', '', '0', '1', '1398365344', '', '0', 'http://', '');
INSERT INTO `sw_article` VALUES ('21', '6', '会员注册', '', '', '', '', '0', '1', '1398366495', '', '0', 'http://', '');
INSERT INTO `sw_article` VALUES ('14', '5', '经销商信息展示区域--河南省洛阳市经销商展示信息', '', '', '', '', '0', '1', '1398365613', '', '0', 'http://', '');
INSERT INTO `sw_article` VALUES ('15', '5', '经销商信息展示区域--河南省三门峡经销商展示信息', '', '', '', '', '0', '1', '1398365625', '', '0', 'http://', '');
INSERT INTO `sw_article` VALUES ('16', '5', '经销商信息展示区域--河南省三门峡市经销商展示信息', '', '', '', '', '0', '1', '1398365640', '', '0', 'http://', '');
INSERT INTO `sw_article` VALUES ('17', '5', '经销商信息展示区域--河南省新乡市经销商展示信息', '', '', '', '', '0', '1', '1398365652', '', '0', 'http://', '');
INSERT INTO `sw_article` VALUES ('18', '5', '经销商信息展示区域--河南省经销商展示信息', '', '', '', '', '0', '1', '1398365665', '', '0', 'http://', '');
INSERT INTO `sw_article` VALUES ('19', '5', '经销商信息展示区域--河南省郑州市经销商展示信息', '', '', '', '', '0', '1', '1398365679', '', '0', 'http://', '');
INSERT INTO `sw_article` VALUES ('20', '5', '经销商信息展示区域--河南三门峡市经销商展示信息', '', '', '', '', '0', '1', '1398365789', '', '0', 'http://', '');
INSERT INTO `sw_article` VALUES ('22', '6', '会员登录', '', '', '', '', '0', '1', '1398366507', '', '0', 'http://', '');
INSERT INTO `sw_article` VALUES ('23', '7', '购物说明', '', '', '', '', '0', '1', '1398366534', '', '0', 'http://', '');
INSERT INTO `sw_article` VALUES ('24', '7', '购物流程', '', '', '', '', '0', '1', '1398366544', '', '0', 'http://', '');
INSERT INTO `sw_article` VALUES ('25', '7', '订单状态', '', '', '', '', '0', '1', '1398366557', '', '0', 'http://', '');
INSERT INTO `sw_article` VALUES ('26', '8', '货到付款或刷卡', '', '', '', '', '0', '1', '1398366579', '', '0', 'http://', '');
INSERT INTO `sw_article` VALUES ('27', '8', '电子券支付', '', '', '', '', '0', '1', '1398366592', '', '0', 'http://', '');
INSERT INTO `sw_article` VALUES ('28', '8', '网上支付', '', '', '', '', '0', '1', '1398366602', '', '0', 'http://', '');
INSERT INTO `sw_article` VALUES ('29', '9', '商品验货与签收', '', '', '', '', '0', '1', '1398366617', '', '0', 'http://', '');
INSERT INTO `sw_article` VALUES ('30', '9', '订单受理时间', '', '', '', '', '0', '1', '1398366635', '', '0', 'http://', '');
INSERT INTO `sw_article` VALUES ('31', '9', '运费说明', '', '', '', '', '0', '1', '1398366647', '', '0', 'http://', '');
INSERT INTO `sw_article` VALUES ('32', '4', '三门峡盛得佳帮购贸易有限公司', '', '', '', '', '0', '1', '1398366939', '', '0', 'http://', '');
INSERT INTO `sw_article` VALUES ('33', '4', '关于电视类订单的通知', '', '', '', '', '0', '1', '1398367034', '', '0', 'http://', '');
INSERT INTO `sw_article` VALUES ('34', '4', '盛得佳帮购感恩回馈', '', '', '', '', '0', '1', '1398367064', '', '0', 'http://', '');
INSERT INTO `sw_article` VALUES ('35', '4', '关于集成吊灯的通知', '', '', '', '', '0', '1', '1398367094', '', '0', 'http://', '');

-- ----------------------------
-- Table structure for `sw_article_cat`
-- ----------------------------
DROP TABLE IF EXISTS `sw_article_cat`;
CREATE TABLE `sw_article_cat` (
  `cat_id` smallint(5) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(255) NOT NULL DEFAULT '',
  `cat_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `cat_desc` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `show_in_nav` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`),
  KEY `cat_type` (`cat_type`),
  KEY `sort_order` (`sort_order`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_article_cat
-- ----------------------------
INSERT INTO `sw_article_cat` VALUES ('1', '系统分类', '2', '', '系统保留分类', '50', '0', '0');
INSERT INTO `sw_article_cat` VALUES ('2', '网店信息', '3', '', '网店信息分类', '50', '0', '1');
INSERT INTO `sw_article_cat` VALUES ('3', '网店帮助分类', '4', '', '网店帮助分类', '50', '0', '1');
INSERT INTO `sw_article_cat` VALUES ('4', '商城资讯', '1', '', '', '50', '1', '0');
INSERT INTO `sw_article_cat` VALUES ('5', '经销商展区', '1', '', '', '50', '1', '0');
INSERT INTO `sw_article_cat` VALUES ('6', '新手入门', '5', '', '', '50', '0', '3');
INSERT INTO `sw_article_cat` VALUES ('7', '购物指南', '5', '', '', '50', '0', '3');
INSERT INTO `sw_article_cat` VALUES ('8', '支付方式', '5', '', '', '50', '0', '3');
INSERT INTO `sw_article_cat` VALUES ('9', '配送方式', '5', '', '', '50', '0', '3');

-- ----------------------------
-- Table structure for `sw_attribute`
-- ----------------------------
DROP TABLE IF EXISTS `sw_attribute`;
CREATE TABLE `sw_attribute` (
  `attr_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr_name` varchar(60) NOT NULL DEFAULT '',
  `attr_input_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_values` text NOT NULL,
  `attr_index` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_linked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `attr_group` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`attr_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_attribute
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_auction_log`
-- ----------------------------
DROP TABLE IF EXISTS `sw_auction_log`;
CREATE TABLE `sw_auction_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `act_id` mediumint(8) unsigned NOT NULL,
  `bid_user` mediumint(8) unsigned NOT NULL,
  `bid_price` decimal(10,2) unsigned NOT NULL,
  `bid_time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `act_id` (`act_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_auction_log
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_auto_manage`
-- ----------------------------
DROP TABLE IF EXISTS `sw_auto_manage`;
CREATE TABLE `sw_auto_manage` (
  `item_id` mediumint(8) NOT NULL,
  `type` varchar(10) NOT NULL,
  `starttime` int(10) NOT NULL,
  `endtime` int(10) NOT NULL,
  PRIMARY KEY (`item_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_auto_manage
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_back_goods`
-- ----------------------------
DROP TABLE IF EXISTS `sw_back_goods`;
CREATE TABLE `sw_back_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `back_id` mediumint(8) unsigned DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_sn` varchar(60) DEFAULT NULL,
  `goods_name` varchar(120) DEFAULT NULL,
  `brand_name` varchar(60) DEFAULT NULL,
  `goods_sn` varchar(60) DEFAULT NULL,
  `is_real` tinyint(1) unsigned DEFAULT '0',
  `send_number` smallint(5) unsigned DEFAULT '0',
  `goods_attr` text,
  PRIMARY KEY (`rec_id`),
  KEY `back_id` (`back_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_back_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_back_order`
-- ----------------------------
DROP TABLE IF EXISTS `sw_back_order`;
CREATE TABLE `sw_back_order` (
  `back_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_sn` varchar(20) NOT NULL,
  `order_sn` varchar(20) NOT NULL,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(50) DEFAULT NULL,
  `add_time` int(10) unsigned DEFAULT '0',
  `shipping_id` tinyint(3) unsigned DEFAULT '0',
  `shipping_name` varchar(120) DEFAULT NULL,
  `user_id` mediumint(8) unsigned DEFAULT '0',
  `action_user` varchar(30) DEFAULT NULL,
  `consignee` varchar(60) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `country` smallint(5) unsigned DEFAULT '0',
  `province` smallint(5) unsigned DEFAULT '0',
  `city` smallint(5) unsigned DEFAULT '0',
  `district` smallint(5) unsigned DEFAULT '0',
  `sign_building` varchar(120) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `zipcode` varchar(60) DEFAULT NULL,
  `tel` varchar(60) DEFAULT NULL,
  `mobile` varchar(60) DEFAULT NULL,
  `best_time` varchar(120) DEFAULT NULL,
  `postscript` varchar(255) DEFAULT NULL,
  `how_oos` varchar(120) DEFAULT NULL,
  `insure_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `shipping_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `update_time` int(10) unsigned DEFAULT '0',
  `suppliers_id` smallint(5) DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `return_time` int(10) unsigned DEFAULT '0',
  `agency_id` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`back_id`),
  KEY `user_id` (`user_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_back_order
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_bonus_type`
-- ----------------------------
DROP TABLE IF EXISTS `sw_bonus_type`;
CREATE TABLE `sw_bonus_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(60) NOT NULL DEFAULT '',
  `type_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `send_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `min_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `max_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `send_start_date` int(11) NOT NULL DEFAULT '0',
  `send_end_date` int(11) NOT NULL DEFAULT '0',
  `use_start_date` int(11) NOT NULL DEFAULT '0',
  `use_end_date` int(11) NOT NULL DEFAULT '0',
  `min_goods_amount` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_bonus_type
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_booking_goods`
-- ----------------------------
DROP TABLE IF EXISTS `sw_booking_goods`;
CREATE TABLE `sw_booking_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT '',
  `link_man` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_desc` varchar(255) NOT NULL DEFAULT '',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `booking_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_dispose` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dispose_user` varchar(30) NOT NULL DEFAULT '',
  `dispose_time` int(10) unsigned NOT NULL DEFAULT '0',
  `dispose_note` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`rec_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_booking_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_brand`
-- ----------------------------
DROP TABLE IF EXISTS `sw_brand`;
CREATE TABLE `sw_brand` (
  `brand_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(60) NOT NULL DEFAULT '',
  `brand_logo` varchar(80) NOT NULL DEFAULT '',
  `brand_desc` text NOT NULL,
  `site_url` varchar(255) NOT NULL DEFAULT '',
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`brand_id`),
  KEY `is_show` (`is_show`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_brand
-- ----------------------------
INSERT INTO `sw_brand` VALUES ('1', '青岛', '', '', '', '50', '1');
INSERT INTO `sw_brand` VALUES ('2', '圣元', '', '', '', '50', '1');
INSERT INTO `sw_brand` VALUES ('3', '上好佳', '', '', '', '50', '1');
INSERT INTO `sw_brand` VALUES ('4', '合生元', '', '', '', '50', '1');
INSERT INTO `sw_brand` VALUES ('5', '亨氏', '', '', '', '50', '1');
INSERT INTO `sw_brand` VALUES ('6', '贝因美', '', '', '', '50', '1');
INSERT INTO `sw_brand` VALUES ('7', '百乐麦', '', '', '', '50', '1');
INSERT INTO `sw_brand` VALUES ('8', '好丽友', '', '', '', '50', '1');
INSERT INTO `sw_brand` VALUES ('9', '乐扣乐扣', '', '', '', '50', '1');
INSERT INTO `sw_brand` VALUES ('10', '高露洁', '', '', '', '50', '1');
INSERT INTO `sw_brand` VALUES ('11', '佳洁士', '', '', '', '50', '1');
INSERT INTO `sw_brand` VALUES ('12', '雅诚', '', '', '', '50', '1');
INSERT INTO `sw_brand` VALUES ('13', '海洋工作室', '', '', '', '50', '1');
INSERT INTO `sw_brand` VALUES ('14', '思宝双龙', '', '', '', '50', '1');
INSERT INTO `sw_brand` VALUES ('15', '清风', '', '', '', '50', '1');
INSERT INTO `sw_brand` VALUES ('16', '振兴', '', '', '', '50', '1');
INSERT INTO `sw_brand` VALUES ('17', '紫丁香', '', '', '', '50', '1');
INSERT INTO `sw_brand` VALUES ('18', '茶花', '', '', '', '50', '1');
INSERT INTO `sw_brand` VALUES ('19', '巧媳妇', '', '', '', '50', '1');
INSERT INTO `sw_brand` VALUES ('20', '张小泉', '', '', '', '50', '1');
INSERT INTO `sw_brand` VALUES ('21', '妙洁', '', '', '', '50', '1');
INSERT INTO `sw_brand` VALUES ('22', '海信', '', '', '', '50', '1');
INSERT INTO `sw_brand` VALUES ('23', '高', '', '', '', '50', '1');
INSERT INTO `sw_brand` VALUES ('24', '美的', '', '', '', '50', '1');
INSERT INTO `sw_brand` VALUES ('25', '思高', '', '', '', '50', '1');
INSERT INTO `sw_brand` VALUES ('26', '美丽雅', '', '', '', '50', '1');
INSERT INTO `sw_brand` VALUES ('27', '飞利浦', '', '', '', '50', '1');
INSERT INTO `sw_brand` VALUES ('28', '康师傅', '', '', '', '50', '1');
INSERT INTO `sw_brand` VALUES ('29', '农心', '', '', '', '50', '1');
INSERT INTO `sw_brand` VALUES ('30', '好时', '', '', '', '50', '1');
INSERT INTO `sw_brand` VALUES ('31', '李宁', '', '', '', '50', '1');
INSERT INTO `sw_brand` VALUES ('32', '耐克', '', '', '', '50', '1');
INSERT INTO `sw_brand` VALUES ('33', '金莱克', '', '', '', '50', '1');
INSERT INTO `sw_brand` VALUES ('34', '德芙', '', '', '', '50', '1');
INSERT INTO `sw_brand` VALUES ('35', '桂花庄', '', '', '', '50', '1');
INSERT INTO `sw_brand` VALUES ('36', '木林森', '', '', '', '50', '1');
INSERT INTO `sw_brand` VALUES ('37', '威王', '', '', '', '50', '1');

-- ----------------------------
-- Table structure for `sw_card`
-- ----------------------------
DROP TABLE IF EXISTS `sw_card`;
CREATE TABLE `sw_card` (
  `card_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `card_name` varchar(120) NOT NULL DEFAULT '',
  `card_img` varchar(255) NOT NULL DEFAULT '',
  `card_fee` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  `free_money` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  `card_desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`card_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_card
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_cart`
-- ----------------------------
DROP TABLE IF EXISTS `sw_cart`;
CREATE TABLE `sw_cart` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_attr` text NOT NULL,
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rec_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_gift` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `can_handsel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `goods_attr_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`rec_id`),
  KEY `session_id` (`session_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_cart
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_category`
-- ----------------------------
DROP TABLE IF EXISTS `sw_category`;
CREATE TABLE `sw_category` (
  `cat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(90) NOT NULL DEFAULT '',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `cat_desc` varchar(255) NOT NULL DEFAULT '',
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '50',
  `template_file` varchar(50) NOT NULL DEFAULT '',
  `measure_unit` varchar(15) NOT NULL DEFAULT '',
  `show_in_nav` tinyint(1) NOT NULL DEFAULT '0',
  `style` varchar(150) NOT NULL,
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `grade` tinyint(4) NOT NULL DEFAULT '0',
  `filter_attr` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cat_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=583 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_category
-- ----------------------------
INSERT INTO `sw_category` VALUES ('1', '食品零食', '', '', '0', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('2', '美容美妆', '', '', '0', '5', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('3', '清洁护理', '', '', '0', '8', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('4', '母婴中心', '', '', '0', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('5', '家居百货', '', '', '0', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('6', '数码家电', '', '', '0', '7', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('7', '箱包', '', '', '0', '7', '', '', '0', '', '0', '0', '');
INSERT INTO `sw_category` VALUES ('8', '服装服饰', '', '', '0', '9', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('9', '罐头食品', '', '', '1', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('10', '厨房调料', '', '', '1', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('71', '酒水饮料', '', '', '0', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('12', '口腔护理', '', '', '2', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('13', '面部护理', '', '', '2', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('14', '家居清洁', '', '', '3', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('15', '清洁用品', '', '', '3', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('16', '奶粉', '', '', '4', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('17', '营养品', '', '', '4', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('18', '幼婴辅食', '', '', '4', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('19', '餐具餐饮', '', '', '5', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('20', '厨房用品', '', '', '5', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('21', '家电', '', '', '6', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('22', '生活', '', '', '6', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('23', '手机', '', '', '6', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('24', '电脑', '', '', '6', '4', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('25', '珠宝黄金', '', '', '7', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('26', '旅行箱包', '', '', '7', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('27', '内衣', '', '', '8', '1', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('28', '女装', '', '', '8', '2', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('29', '男装', '', '', '8', '3', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('30', '幼婴配方奶粉', '', '', '16', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `sw_category` VALUES ('31', '休闲零食', '', '', '1', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `sw_category` VALUES ('32', '孕产奶粉', '', '', '16', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `sw_category` VALUES ('33', '虾片/虾条', '', '', '31', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `sw_category` VALUES ('34', '益生菌', '', '', '17', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `sw_category` VALUES ('35', '清火开胃', '', '', '34', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `sw_category` VALUES ('36', '婴儿饼干', '', '', '18', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `sw_category` VALUES ('37', '米粉/汤粥', '', '', '18', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `sw_category` VALUES ('38', '营养面', '', '', '18', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `sw_category` VALUES ('39', '果泥', '', '', '18', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `sw_category` VALUES ('40', '薯片/薯条', '', '', '31', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `sw_category` VALUES ('41', '肉松', '', '', '18', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `sw_category` VALUES ('42', '牙膏', '', '', '12', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `sw_category` VALUES ('43', '纸制品', '', '', '3', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `sw_category` VALUES ('44', '胸花', '', '', '25', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `sw_category` VALUES ('45', '戒指', '', '', '25', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `sw_category` VALUES ('46', '项链', '', '', '25', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `sw_category` VALUES ('47', '饼干糕点', '', '', '1', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `sw_category` VALUES ('48', '夹心饼干', '', '', '47', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `sw_category` VALUES ('121', '叶菜类', '', '', '59', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('50', '方便速食', '', '', '1', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `sw_category` VALUES ('51', '方便面', '', '', '50', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `sw_category` VALUES ('52', '拉杆箱', '', '', '26', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `sw_category` VALUES ('53', '旅行包', '', '', '26', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `sw_category` VALUES ('54', '糖果巧克力', '', '', '1', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `sw_category` VALUES ('55', '巧克力', '', '', '54', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `sw_category` VALUES ('56', '冷藏冷冻食品', '', '', '1', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `sw_category` VALUES ('57', '耳饰', '', '', '25', '50', '', '', '0', '', '1', '0', '0');
INSERT INTO `sw_category` VALUES ('58', '生鲜蔬菜', '', '', '0', '0', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('59', '新鲜蔬菜', '', '', '58', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('60', '新鲜水果', '', '', '58', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('61', '精品肉类', '', '', '58', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('62', '营养蛋类', '', '', '58', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('63', '海鲜鱼类', '', '', '58', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('64', '加工/糕点', '', '', '58', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('65', '米面粮油', '', '', '1', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('66', '南北干货', '', '', '1', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('67', '礼盒/特产', '', '', '1', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('68', '无糖产品', '', '', '1', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('69', '营养保健', '', '', '1', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('70', '进口食品', '', '', '1', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('72', '酒水', '', '', '71', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('73', '饮料饮品', '', '', '71', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('74', '牛奶乳品', '', '', '71', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('75', '冲调饮品', '', '', '71', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('76', '咖啡茶叶', '', '', '71', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('77', '锅具水壶', '', '', '5', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('78', '生活日用品', '', '', '5', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('79', '收纳洗晒', '', '', '5', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('80', '家纺日用品', '', '', '5', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('81', '床上用品', '', '', '5', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('82', '家居家装', '', '', '5', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('83', '五金工具', '', '', '5', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('84', '园艺宠物', '', '', '5', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('85', '汽车用品', '', '', '5', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('86', '户外用品', '', '', '5', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('87', '喂养用品', '', '', '4', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('88', '贝贝寝具', '', '', '4', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('89', '婴儿洗护清洁', '', '', '4', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('90', '婴儿尿裤/湿巾', '', '', '4', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('91', '童具/童车', '', '', '4', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('92', '妈妈用品', '', '', '4', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('93', '脸部保养品', '', '', '2', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('94', '美发护理', '', '', '2', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('375', '睡枕/抱枕', '', '', '88', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('96', '眼部护理', '', '', '2', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('97', '男士护理', '', '', '2', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('98', '彩妆', '', '', '2', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('99', '身体护理', '', '', '2', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('100', '沐浴', '', '', '2', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('101', '工具配件', '', '', '2', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('102', '手足护理', '', '', '2', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('103', '香水', '', '', '2', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('104', '文体玩具', '', '', '0', '6', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('105', '学生用品', '', '', '104', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('106', '办公用品', '', '', '104', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('107', '装裱/邮政用品', '', '', '104', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('108', '图书', '', '', '104', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('109', '影视/音乐', '', '', '104', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('110', '玩具', '', '', '104', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('111', '体育用品', '', '', '104', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('112', '厨卫', '', '', '6', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('113', '数码', '', '', '6', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('114', '衣物清洁', '', '', '3', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('115', '卫浴用品', '', '', '3', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('116', '一次性用品', '', '', '3', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('117', '消杀用品', '', '', '3', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('118', '护理用品', '', '', '3', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('119', '箱包', '', '', '8', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('120', '婴童服装', '', '', '8', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('122', '根菜类', '', '', '59', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('123', '茄果/瓜菜类', '', '', '59', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('124', '椒菜类', '', '', '59', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('125', '食用菌', '', '', '59', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('126', '豆荚类', '', '', '59', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('127', '芽苗类', '', '', '59', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('128', '花菜类', '', '', '59', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('129', '水产类', '', '', '59', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('130', '苹果', '', '', '60', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('131', '梨', '', '', '60', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('132', '桃', '', '', '60', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('133', '香蕉', '', '', '60', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('134', '枣/核桃', '', '', '60', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('135', '菠萝/草莓', '', '', '60', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('136', '西瓜', '', '', '60', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('137', '哈密瓜/甜瓜', '', '', '60', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('138', '柑橘/橙子', '', '', '60', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('139', '葡萄/提子', '', '', '60', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('140', '芒果', '', '', '60', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('141', '时令水果', '', '', '60', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('142', '洋果', '', '', '60', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('143', '猪肉', '', '', '61', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('144', '鸡肉', '', '', '61', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('145', '鸭肉', '', '', '61', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('146', '羊肉', '', '', '61', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('147', '牛肉', '', '', '61', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('148', '兔肉', '', '', '61', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('149', '腌制肉类', '', '', '61', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('150', '鸡蛋', '', '', '62', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('151', '鹌鹑蛋', '', '', '62', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('152', '鸭蛋', '', '', '62', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('153', '卤蛋', '', '', '62', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('154', '皮蛋', '', '', '62', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('155', '鱼类', '', '', '63', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('156', '虾类', '', '', '63', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('157', '贝类', '', '', '63', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('158', '其他海鲜', '', '', '63', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('159', '面条', '', '', '64', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('160', '馒头', '', '', '64', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('161', '豆制品', '', '', '64', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('162', '加工净菜', '', '', '64', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('163', '米果/燕麦酥', '', '', '31', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('164', '锅巴', '', '', '31', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('165', '干脆小食', '', '', '31', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('166', '海苔', '', '', '31', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('167', '果冻', '', '', '31', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('168', '蜜饯', '', '', '31', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('169', '豆制零食', '', '', '31', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('170', '坚果/瓜子', '', '', '31', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('171', '肉干', '', '', '31', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('172', '肉松', '', '', '31', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('173', '海产类零食', '', '', '31', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('174', '禽类制品零食', '', '', '31', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('175', '其他零食', '', '', '31', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('176', '威化饼干', '', '', '47', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('177', '曲奇饼干', '', '', '47', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('178', '苏打饼干', '', '', '47', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('179', '甜味饼干', '', '', '47', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('180', '咸味饼干', '', '', '47', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('181', '沙琪玛', '', '', '47', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('182', '蛋糕派', '', '', '47', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('183', '其他糕点', '', '', '47', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('184', '速食品', '', '', '50', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('185', '火腿肠', '', '', '50', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('186', '米酒', '', '', '50', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('187', '年糕', '', '', '50', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('188', '糖果', '', '', '54', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('189', '口香糖', '', '', '54', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('190', '奶片/奶酪', '', '', '54', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('191', '粽叶', '', '', '56', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('192', '低温香肠', '', '', '56', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('193', '低温肉制品', '', '', '56', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('194', '腊肠/腊肉', '', '', '56', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('195', '牛排/披萨', '', '', '56', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('196', '水饺', '', '', '56', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('197', '混沌', '', '', '56', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('198', '汤圆', '', '', '56', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('199', '火锅食品', '', '', '56', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('200', '面点点心', '', '', '56', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('201', '冰淇淋/冰糕', '', '', '56', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('202', '玉米', '', '', '56', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('203', '鱼雷罐头', '', '', '9', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('204', '肉类罐头', '', '', '9', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('205', '八宝粥/绿豆粥', '', '', '9', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('206', '水果罐头', '', '', '9', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('207', '其他罐头', '', '', '9', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('208', '调味料', '', '', '10', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('209', '调味酱', '', '', '10', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('210', '果浆/沙司', '', '', '10', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('211', '酱油', '', '', '10', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('212', '盐', '', '', '10', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('213', '糖', '', '', '10', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('214', '醋', '', '', '10', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('215', '即食汤料', '', '', '10', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('216', '腐乳', '', '', '10', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('217', '榨菜', '', '', '10', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('218', '食用油', '', '', '65', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('219', '大米', '', '', '65', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('220', '小米', '', '', '65', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('221', '杂粮', '', '', '65', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('222', '挂面', '', '', '65', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('223', '面粉', '', '', '65', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('224', '枣类', '', '', '66', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('225', '菌菇类', '', '', '66', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('226', '干菜类', '', '', '66', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('227', '干果类', '', '', '66', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('228', '豆制品', '', '', '66', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('229', '滋补类', '', '', '66', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('230', '粉丝', '', '', '66', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('231', '牛肉礼盒', '', '', '67', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('232', '驴肉礼盒', '', '', '67', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('233', '河南特产', '', '', '67', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('234', '礼盒/礼包', '', '', '67', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('235', '无糖沙琪玛', '', '', '68', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('236', '无糖蛋糕派', '', '', '68', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('237', '无糖饼干/桃酥', '', '', '68', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('238', '无糖营养冲调', '', '', '68', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('239', '无糖其他产品', '', '', '68', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('240', '大众保健', '', '', '69', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('241', '中老年保健', '', '', '69', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('242', '进口营养补剂', '', '', '70', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('243', '国产白酒', '', '', '72', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('244', '进口烈酒', '', '', '72', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('245', '葡萄酒/红酒', '', '', '72', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('246', '啤酒', '', '', '72', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('247', '黄酒', '', '', '72', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('248', '保健酒', '', '', '72', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('249', '洋酒', '', '', '72', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('250', '酒类礼品', '', '', '72', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('251', '饮用水', '', '', '73', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('252', '碳酸饮料', '', '', '73', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('253', '茶饮料', '', '', '73', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('254', '果汁', '', '', '73', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('255', '运动/功能饮料', '', '', '73', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('256', '咖啡饮料', '', '', '73', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('257', '蛋白饮料', '', '', '73', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('258', '低温鲜奶', '', '', '74', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('259', '酸奶', '', '', '74', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('260', '低温酸奶', '', '', '74', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('261', '儿童奶', '', '', '74', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('262', '纯牛奶', '', '', '74', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('263', '口味奶', '', '', '74', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('264', '功能奶', '', '', '74', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('265', '蜂蜜', '', '', '75', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('266', '奶茶', '', '', '75', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('267', '果味冲饮', '', '', '75', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('268', '麦片谷物', '', '', '75', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('269', '豆奶粉/豆浆', '', '', '75', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('270', '成人奶粉', '', '', '75', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('271', '芝麻糊/油茶', '', '', '75', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('272', '藕粉/核桃粉', '', '', '75', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('273', '速溶咖啡', '', '', '76', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('274', '咖啡伴侣', '', '', '76', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('275', '花茶', '', '', '76', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('276', '绿茶', '', '', '76', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('277', '红茶', '', '', '76', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('278', '普洱茶', '', '', '76', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('279', '铁观音', '', '', '76', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('280', '毛尖', '', '', '76', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('281', '龙井', '', '', '76', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('282', '碧螺春', '', '', '76', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('283', '塑料水杯', '', '', '19', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('284', '口杯', '', '', '19', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('285', '玻璃杯', '', '', '19', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('286', '保温杯/保温饭盒', '', '', '19', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('287', '茶壶/咖啡壶', '', '', '19', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('288', '套装茶具/咖啡具', '', '', '19', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('289', '碗/碟/盘', '', '', '19', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('290', '餐刀/叉/汤匙/筷子', '', '', '19', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('291', '保鲜盒/饭盒', '', '', '19', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('292', '套装餐具', '', '', '19', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('293', '套装酒具/配件', '', '', '19', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('294', '餐桌配件', '', '', '19', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('295', '烟灰缸', '', '', '19', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('296', '炒锅', '', '', '20', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('297', '煎锅/平底锅', '', '', '20', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('298', '水壶', '', '', '20', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('299', '压力锅', '', '', '20', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('300', '汤锅', '', '', '20', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('301', '煲锅', '', '', '20', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('302', '蒸锅', '', '', '20', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('303', '奶锅', '', '', '20', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('304', '套装锅', '', '', '20', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('305', '锅具配件', '', '', '20', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('306', '雨伞/雨衣', '', '', '78', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('307', '粘钩及挂钩', '', '', '78', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('308', '香薰及附件', '', '', '78', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('309', '碳净化', '', '', '78', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('310', '干鞋器', '', '', '78', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('311', '蜡烛', '', '', '78', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('312', '针线/缝纫', '', '', '78', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('313', '尘刷', '', '', '78', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('314', '收纳用品', '', '', '79', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('315', '购物收纳', '', '', '79', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('316', '收纳层架', '', '', '79', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('317', '衣架', '', '', '79', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('318', '晾衣架', '', '', '79', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('319', '多头晒衣架', '', '', '79', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('320', '晾衣夹/绳', '', '', '79', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('321', '洗衣篮/收纳篮/晒衣篮', '', '', '79', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('322', '整理箱/抽屉柜', '', '', '79', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('323', '压缩袋/泵', '', '', '79', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('324', '其他洗纳工具', '', '', '79', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('325', '毛巾', '', '', '80', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('326', '浴巾', '', '', '80', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('327', '沙发垫', '', '', '80', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('328', '靠垫/坐垫', '', '', '80', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('329', '桌布/台布', '', '', '80', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('330', '围裙/橡胶手套', '', '', '80', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('331', '拖鞋', '', '', '78', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('332', '鞋垫', '', '', '78', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('333', '腰带', '', '', '80', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('334', '配饰及其他', '', '', '78', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('335', '床品单件', '', '', '81', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('336', '床品套件', '', '', '81', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('337', '春秋被', '', '', '81', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('338', '夏凉被', '', '', '81', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('339', '枕头/枕芯', '', '', '81', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('340', '毯子/毛巾毯', '', '', '81', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('341', '床垫', '', '', '81', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('342', '凉席/凉枕', '', '', '81', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('343', '照明灯具', '', '', '82', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('344', '电脑桌', '', '', '82', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('345', '座椅凳', '', '', '82', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('346', '衣橱/衣柜', '', '', '82', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('347', '鞋架/鞋柜', '', '', '82', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('348', '层架/层柜', '', '', '82', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('349', '手电筒/小夜灯', '', '', '83', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('350', '节能灯泡', '', '', '83', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('351', '插座', '', '', '83', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('352', '手工具', '', '', '83', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('353', '家用五金/五金零件', '', '', '83', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('354', '家居保护垫', '', '', '83', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('355', '猫粮', '', '', '84', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('356', '狗粮', '', '', '84', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('357', '汽车坐垫/靠垫', '', '', '85', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('358', '空气清新剂', '', '', '85', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('359', '汽车清洁用品', '', '', '85', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('360', '蜡/抛光产品', '', '', '85', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('361', '汽车玻璃清洁剂', '', '', '85', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('362', '内部配件', '', '', '85', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('363', '烧烤工具', '', '', '86', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('364', '户外帐篷', '', '', '86', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('365', '奶嘴/奶瓶', '', '', '87', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('366', '奶瓶配件', '', '', '87', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('367', '安抚奶嘴', '', '', '87', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('368', '宝宝杯/壶', '', '', '87', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('369', '婴儿餐具', '', '', '87', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('370', '喂养罩衣', '', '', '87', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('371', '暖奶器', '', '', '87', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('372', '安全用品', '', '', '87', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('373', '消毒锅', '', '', '87', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('374', '被褥/毛毯', '', '', '88', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('376', '睡袋/抱被', '', '', '88', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('377', '洗发沐浴', '', '', '89', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('378', '婴儿护肤', '', '', '89', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('379', '婴儿口腔护理', '', '', '89', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('380', '义务清洁', '', '', '89', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('381', '耳鼻护理', '', '', '89', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('382', '婴儿纸尿裤', '', '', '90', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('383', '婴儿湿巾', '', '', '90', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('384', '婴儿隔尿垫', '', '', '90', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('385', '摇椅/童床', '', '', '91', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('386', '儿童推车', '', '', '91', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('387', '儿童桌椅', '', '', '91', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('388', '学步车', '', '', '91', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('389', '儿童自行车', '', '', '91', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('390', '妈妈内衣', '', '', '92', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('391', '妈妈洗护', '', '', '92', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('392', '去妊辰纹', '', '', '92', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('393', '产后恢复', '', '', '92', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('394', '哺乳用品', '', '', '92', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('395', '牙刷/牙线', '', '', '12', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('396', '漱口水', '', '', '12', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('397', '卸妆', '', '', '13', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('398', '洁面', '', '', '13', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('399', '面膜', '', '', '13', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('400', '润肤水/乳霜', '', '', '93', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('401', '防晒露/霜/液', '', '', '93', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('402', '女士护肤套盒', '', '', '93', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('403', '洗发水', '', '', '94', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('404', '护发素', '', '', '94', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('405', '深层护理', '', '', '94', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('406', '定型/造型', '', '', '94', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('407', '染发', '', '', '94', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('408', '洗护发旅行品', '', '', '94', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('409', '女士香水', '', '', '103', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('410', '眼霜', '', '', '96', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('411', '男士洁面', '', '', '97', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('412', '男士护肤品', '', '', '97', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('413', '男性洗液', '', '', '97', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('414', '刀架/刀片', '', '', '97', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('415', '刮胡泡须后用品', '', '', '97', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('416', '男士护肤套盒', '', '', '97', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('417', '面部', '', '', '98', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('418', '唇部', '', '', '98', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('419', '眼部', '', '', '98', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('420', '润肤乳', '', '', '99', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('421', '脱毛', '', '', '99', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('422', '沐浴液', '', '', '100', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('423', '香皂', '', '', '100', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('424', '浴盐', '', '', '100', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('425', '护手霜', '', '', '102', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('426', '洗手液', '', '', '102', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('427', '化妆工具', '', '', '101', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('428', '美发工具', '', '', '101', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('429', '书写材料', '', '', '105', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('430', '画画美术', '', '', '105', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('431', '笔记本(簿)', '', '', '105', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('432', '笔盒/笔袋', '', '', '105', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('433', '几何用具', '', '', '105', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('434', '文件套装/配件', '', '', '105', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('435', '办公用纸', '', '', '106', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('436', '胶水/胶带/固体胶', '', '', '106', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('437', '文件管理', '', '', '106', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('438', '办公配件', '', '', '106', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('439', '黑板/白板/配件', '', '', '106', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('440', '邮政用品', '', '', '107', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('441', '儿童益智', '', '', '108', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('442', '儿童故事', '', '', '108', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('443', '儿童文学', '', '', '108', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('444', '字词典工具书', '', '', '108', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('445', '作文系列', '', '', '108', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('446', '文学类', '', '', '108', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('447', '经典名著', '', '', '108', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('448', '历史地理', '', '', '108', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('449', '经管社科', '', '', '108', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('450', '电脑应用', '', '', '108', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('451', '养生/菜谱', '', '', '108', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('452', '女性系类', '', '', '108', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('453', '孕产养育', '', '', '108', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('454', '图书礼盒', '', '', '108', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('455', '车载CD', '', '', '109', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('456', 'DVD歌曲', '', '', '109', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('457', '游戏', '', '', '109', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('458', '戏曲', '', '', '109', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('459', '百科', '', '', '109', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('460', '轻音乐', '', '', '109', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('461', '胎教音乐', '', '', '109', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('462', '幼教卡通', '', '', '109', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('463', '碟包/碟盒', '', '', '109', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('464', '影音礼物', '', '', '109', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('465', '遥控/电动玩具', '', '', '110', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('466', '毛绒玩具', '', '', '110', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('467', '男孩玩具', '', '', '110', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('468', '女孩玩具', '', '', '110', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('469', '音乐玩具', '', '', '110', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('470', '早教益智', '', '', '110', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('471', '摇铃', '', '', '110', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('472', '床铃', '', '', '110', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('473', '健身架', '', '', '110', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('474', '游戏垫/地垫', '', '', '110', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('475', '棋类/纸牌', '', '', '110', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('476', '球类运动', '', '', '110', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('477', '球拍/配件', '', '', '110', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('478', '滚轴溜冰/滑板', '', '', '110', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('479', '健康器材', '', '', '110', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('480', '平板电视', '', '', '21', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('481', '冰箱', '', '', '21', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('482', '洗衣机', '', '', '21', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('483', '家用空调', '', '', '21', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('484', '生活电器', '', '', '22', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('485', '厨房电器', '', '', '22', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('486', '个人护理', '', '', '22', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('487', '手机', '', '', '23', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('488', '充电器', '', '', '23', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('489', '存储卡', '', '', '23', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('490', '电脑外设', '', '', '24', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('491', '油烟机/灶具', '', '', '112', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('492', '洗碗机', '', '', '112', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('493', '饮水机', '', '', '112', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('494', '净水桶', '', '', '112', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('495', '净水设备', '', '', '112', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('496', '消毒柜', '', '', '112', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('497', '热水器', '', '', '112', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('498', '浴霸/排气扇', '', '', '112', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('499', '水槽/水龙头', '', '', '112', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('500', '洁身器', '', '', '112', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('501', '垃圾处理机', '', '', '112', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('502', '摄影摄像', '', '', '113', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('503', '照摄配件', '', '', '113', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('504', '洗衣液', '', '', '114', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('505', '洗衣服', '', '', '114', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('506', '衣物除菌/洗衣剂', '', '', '114', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('507', '洗衣皂', '', '', '114', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('508', '衣物柔顺剂', '', '', '114', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('509', '衣物漂渍液/漂白水/彩漂', '', '', '114', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('510', '家居清洁剂/蜡', '', '', '14', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('511', '洗洁精', '', '', '14', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('512', '洁厕剂', '', '', '14', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('513', '消毒水', '', '', '14', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('514', '油污清洁剂', '', '', '14', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('515', '底板清洁剂', '', '', '14', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('516', '器皿清洁', '', '', '14', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('517', '管道疏通剂', '', '', '14', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('518', '干燥剂', '', '', '14', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('519', '多用途清洁粉', '', '', '14', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('520', '空气清洁剂', '', '', '14', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('521', '玻璃清洁剂', '', '', '14', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('522', '底板清洁剂/蜡', '', '', '14', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('523', '鞋刷/鞋油', '', '', '14', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('524', '皮革护理', '', '', '14', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('525', '防臭剂', '', '', '14', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('526', '清洁球', '', '', '15', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('527', '百洁布/抹布', '', '', '15', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('528', '拖把/尘推', '', '', '15', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('529', '扫帚/垃圾铲', '', '', '15', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('530', '垃圾桶', '', '', '15', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('531', '盆类/桶类', '', '', '15', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('532', '皂盒/洗漱收纳', '', '', '115', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('533', '镜子/梳子', '', '', '115', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('534', '沐浴用品', '', '', '115', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('535', '浴盆/浴篮', '', '', '115', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('536', '浴室配件', '', '', '115', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('537', '卫生间配件', '', '', '115', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('538', '垃圾袋', '', '', '116', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('539', '保鲜袋/保鲜膜', '', '', '116', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('540', '牙签/果签/棉签', '', '', '116', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('541', '纸杯/塑杯/杯托', '', '', '116', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('542', '一次性餐具', '', '', '116', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('543', '一次性鞋套', '', '', '116', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('544', '一次性手套', '', '', '116', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('545', '铝箔', '', '', '116', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('546', '樟脑丸/片', '', '', '117', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('547', '卷纸', '', '', '43', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('548', '软抽', '', '', '43', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('549', '盒抽', '', '', '43', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('550', '手帕纸', '', '', '43', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('551', '湿巾', '', '', '43', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('552', '厨房用纸', '', '', '43', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('553', '女性护理', '', '', '118', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('554', '家庭护理', '', '', '118', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('555', '成人尿裤/尿垫', '', '', '118', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('556', '计生保健', '', '', '118', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('557', '文胸', '', '', '27', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('558', '女士吊带/背心', '', '', '27', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('559', '女士底裤', '', '', '27', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('560', '女士袜品', '', '', '27', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('561', '女士家居服', '', '', '27', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('562', '内衣套/保暖内衣', '', '', '27', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('563', '男士底裤', '', '', '27', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('564', '男士袜品', '', '', '27', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('565', '男士背心/T恤', '', '', '27', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('566', 'T恤', '', '', '28', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('567', '打底裤', '', '', '28', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('568', 'T恤/POLO衫', '', '', '29', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('569', '马甲/背心', '', '', '29', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('570', '男包', '', '', '119', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('571', '中性包', '', '', '119', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('572', '婴童内衣', '', '', '120', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('573', '炒锅', '', '', '77', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('574', '煎锅/平面锅', '', '', '77', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('575', '水壶', '', '', '77', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('576', '压力锅', '', '', '77', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('577', '汤锅', '', '', '77', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('578', '煲锅', '', '', '77', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('579', '蒸锅', '', '', '77', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('580', '奶锅', '', '', '77', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('581', '套装锅', '', '', '77', '50', '', '', '0', '', '1', '0', '');
INSERT INTO `sw_category` VALUES ('582', '锅具配件', '', '', '77', '50', '', '', '0', '', '1', '0', '');

-- ----------------------------
-- Table structure for `sw_cat_recommend`
-- ----------------------------
DROP TABLE IF EXISTS `sw_cat_recommend`;
CREATE TABLE `sw_cat_recommend` (
  `cat_id` smallint(5) NOT NULL,
  `recommend_type` tinyint(1) NOT NULL,
  PRIMARY KEY (`cat_id`,`recommend_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_cat_recommend
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_collect_goods`
-- ----------------------------
DROP TABLE IF EXISTS `sw_collect_goods`;
CREATE TABLE `sw_collect_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0',
  `is_attention` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rec_id`),
  KEY `user_id` (`user_id`),
  KEY `goods_id` (`goods_id`),
  KEY `is_attention` (`is_attention`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_collect_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_comment`
-- ----------------------------
DROP TABLE IF EXISTS `sw_comment`;
CREATE TABLE `sw_comment` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `comment_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id_value` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `email` varchar(60) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `comment_rank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`),
  KEY `parent_id` (`parent_id`),
  KEY `id_value` (`id_value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_crons`
-- ----------------------------
DROP TABLE IF EXISTS `sw_crons`;
CREATE TABLE `sw_crons` (
  `cron_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `cron_code` varchar(20) NOT NULL,
  `cron_name` varchar(120) NOT NULL,
  `cron_desc` text,
  `cron_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `cron_config` text NOT NULL,
  `thistime` int(10) NOT NULL DEFAULT '0',
  `nextime` int(10) NOT NULL,
  `day` tinyint(2) NOT NULL,
  `week` varchar(1) NOT NULL,
  `hour` varchar(2) NOT NULL,
  `minute` varchar(255) NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '1',
  `run_once` tinyint(1) NOT NULL DEFAULT '0',
  `allow_ip` varchar(100) NOT NULL DEFAULT '',
  `alow_files` varchar(255) NOT NULL,
  PRIMARY KEY (`cron_id`),
  KEY `nextime` (`nextime`),
  KEY `enable` (`enable`),
  KEY `cron_code` (`cron_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_crons
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_delivery_goods`
-- ----------------------------
DROP TABLE IF EXISTS `sw_delivery_goods`;
CREATE TABLE `sw_delivery_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned DEFAULT '0',
  `product_sn` varchar(60) DEFAULT NULL,
  `goods_name` varchar(120) DEFAULT NULL,
  `brand_name` varchar(60) DEFAULT NULL,
  `goods_sn` varchar(60) DEFAULT NULL,
  `is_real` tinyint(1) unsigned DEFAULT '0',
  `extension_code` varchar(30) DEFAULT NULL,
  `parent_id` mediumint(8) unsigned DEFAULT '0',
  `send_number` smallint(5) unsigned DEFAULT '0',
  `goods_attr` text,
  PRIMARY KEY (`rec_id`),
  KEY `delivery_id` (`delivery_id`,`goods_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_delivery_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_delivery_order`
-- ----------------------------
DROP TABLE IF EXISTS `sw_delivery_order`;
CREATE TABLE `sw_delivery_order` (
  `delivery_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_sn` varchar(20) NOT NULL,
  `order_sn` varchar(20) NOT NULL,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(50) DEFAULT NULL,
  `add_time` int(10) unsigned DEFAULT '0',
  `shipping_id` tinyint(3) unsigned DEFAULT '0',
  `shipping_name` varchar(120) DEFAULT NULL,
  `user_id` mediumint(8) unsigned DEFAULT '0',
  `action_user` varchar(30) DEFAULT NULL,
  `consignee` varchar(60) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `country` smallint(5) unsigned DEFAULT '0',
  `province` smallint(5) unsigned DEFAULT '0',
  `city` smallint(5) unsigned DEFAULT '0',
  `district` smallint(5) unsigned DEFAULT '0',
  `sign_building` varchar(120) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `zipcode` varchar(60) DEFAULT NULL,
  `tel` varchar(60) DEFAULT NULL,
  `mobile` varchar(60) DEFAULT NULL,
  `best_time` varchar(120) DEFAULT NULL,
  `postscript` varchar(255) DEFAULT NULL,
  `how_oos` varchar(120) DEFAULT NULL,
  `insure_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `shipping_fee` decimal(10,2) unsigned DEFAULT '0.00',
  `update_time` int(10) unsigned DEFAULT '0',
  `suppliers_id` smallint(5) DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `agency_id` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`delivery_id`),
  KEY `user_id` (`user_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_delivery_order
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_email_list`
-- ----------------------------
DROP TABLE IF EXISTS `sw_email_list`;
CREATE TABLE `sw_email_list` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `email` varchar(60) NOT NULL,
  `stat` tinyint(1) NOT NULL DEFAULT '0',
  `hash` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_email_list
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_email_sendlist`
-- ----------------------------
DROP TABLE IF EXISTS `sw_email_sendlist`;
CREATE TABLE `sw_email_sendlist` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `template_id` mediumint(8) NOT NULL,
  `email_content` text NOT NULL,
  `error` tinyint(1) NOT NULL DEFAULT '0',
  `pri` tinyint(10) NOT NULL,
  `last_send` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_email_sendlist
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_error_log`
-- ----------------------------
DROP TABLE IF EXISTS `sw_error_log`;
CREATE TABLE `sw_error_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `info` varchar(255) NOT NULL,
  `file` varchar(100) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_error_log
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_exchange_goods`
-- ----------------------------
DROP TABLE IF EXISTS `sw_exchange_goods`;
CREATE TABLE `sw_exchange_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `exchange_integral` int(10) unsigned NOT NULL DEFAULT '0',
  `is_exchange` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_exchange_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_favourable_activity`
-- ----------------------------
DROP TABLE IF EXISTS `sw_favourable_activity`;
CREATE TABLE `sw_favourable_activity` (
  `act_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `act_name` varchar(255) NOT NULL,
  `start_time` int(10) unsigned NOT NULL,
  `end_time` int(10) unsigned NOT NULL,
  `user_rank` varchar(255) NOT NULL,
  `act_range` tinyint(3) unsigned NOT NULL,
  `act_range_ext` varchar(255) NOT NULL,
  `min_amount` decimal(10,2) unsigned NOT NULL,
  `max_amount` decimal(10,2) unsigned NOT NULL,
  `act_type` tinyint(3) unsigned NOT NULL,
  `act_type_ext` decimal(10,2) unsigned NOT NULL,
  `gift` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  PRIMARY KEY (`act_id`),
  KEY `act_name` (`act_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_favourable_activity
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_feedback`
-- ----------------------------
DROP TABLE IF EXISTS `sw_feedback`;
CREATE TABLE `sw_feedback` (
  `msg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `user_email` varchar(60) NOT NULL DEFAULT '',
  `msg_title` varchar(200) NOT NULL DEFAULT '',
  `msg_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `msg_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `msg_content` text NOT NULL,
  `msg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `message_img` varchar(255) NOT NULL DEFAULT '0',
  `order_id` int(11) unsigned NOT NULL DEFAULT '0',
  `msg_area` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_friend_link`
-- ----------------------------
DROP TABLE IF EXISTS `sw_friend_link`;
CREATE TABLE `sw_friend_link` (
  `link_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_logo` varchar(255) NOT NULL DEFAULT '',
  `show_order` tinyint(3) unsigned NOT NULL DEFAULT '50',
  PRIMARY KEY (`link_id`),
  KEY `show_order` (`show_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_friend_link
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_goods`
-- ----------------------------
DROP TABLE IF EXISTS `sw_goods`;
CREATE TABLE `sw_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `goods_name_style` varchar(60) NOT NULL DEFAULT '+',
  `click_count` int(10) unsigned NOT NULL DEFAULT '0',
  `brand_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `provider_name` varchar(100) NOT NULL DEFAULT '',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_weight` decimal(10,3) unsigned NOT NULL DEFAULT '0.000',
  `market_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `shop_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promote_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `promote_start_date` int(11) unsigned NOT NULL DEFAULT '0',
  `promote_end_date` int(11) unsigned NOT NULL DEFAULT '0',
  `warn_number` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL DEFAULT '',
  `goods_brief` varchar(255) NOT NULL DEFAULT '',
  `goods_desc` text NOT NULL,
  `goods_thumb` varchar(255) NOT NULL DEFAULT '',
  `goods_img` varchar(255) NOT NULL DEFAULT '',
  `original_img` varchar(255) NOT NULL DEFAULT '',
  `is_real` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `is_on_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_alone_sale` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_shipping` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `sort_order` smallint(4) unsigned NOT NULL DEFAULT '100',
  `is_delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_best` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_new` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_promote` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bonus_type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `last_update` int(10) unsigned NOT NULL DEFAULT '0',
  `goods_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `seller_note` varchar(255) NOT NULL DEFAULT '',
  `give_integral` int(11) NOT NULL DEFAULT '-1',
  `rank_integral` int(11) NOT NULL DEFAULT '-1',
  `suppliers_id` smallint(5) unsigned DEFAULT NULL,
  `is_check` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`goods_id`),
  KEY `goods_sn` (`goods_sn`),
  KEY `cat_id` (`cat_id`),
  KEY `last_update` (`last_update`),
  KEY `brand_id` (`brand_id`),
  KEY `goods_weight` (`goods_weight`),
  KEY `promote_end_date` (`promote_end_date`),
  KEY `promote_start_date` (`promote_start_date`),
  KEY `goods_number` (`goods_number`),
  KEY `sort_order` (`sort_order`)
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_goods
-- ----------------------------
INSERT INTO `sw_goods` VALUES ('1', '9', 'dsd000000', '青岛崂山啤酒 330ml', '+', '1', '1', '', '0', '0.000', '3.00', '2.80', '2.50', '1396080000', '1397030400', '0', '', '', '<p>&nbsp;青岛崂山啤酒 330ml</p>', 'images/201403/thumb_img/1_thumb_G_1396121017928.jpg', 'images/201403/goods_img/1_G_1396121017397.jpg', 'images/201403/source_img/1_G_1396121017938.jpg', '1', '', '1', '1', '0', '0', '1396121017', '100', '0', '0', '0', '1', '1', '0', '1396130026', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('2', '30', 'dsd000002', '400g圣元进口优博较大婴儿奶粉盒装2段', '+', '0', '2', '', '0', '0.000', '480.00', '400.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/2_thumb_G_1396204122339.jpg', 'images/201403/goods_img/2_G_1396204122391.jpg', 'images/201403/source_img/2_G_1396204122016.jpg', '1', '', '1', '1', '0', '0', '1396204121', '100', '0', '0', '0', '0', '0', '0', '1396204121', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('3', '30', 'dsd000003', '900g圣元优聪普1段奶粉', '+', '0', '2', '', '0', '0.000', '720.00', '600.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/3_thumb_G_1396204245806.jpg', 'images/201403/goods_img/3_G_1396204245869.jpg', 'images/201403/source_img/3_G_1396204245714.jpg', '1', '', '1', '1', '0', '0', '1396204245', '100', '0', '0', '0', '0', '0', '0', '1396204245', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('4', '30', 'dsd000004', '900g圣元进口优博听装1段', '+', '0', '2', '', '0', '0.000', '441.59', '368.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/4_thumb_G_1396204288318.jpg', 'images/201403/goods_img/4_G_1396204288152.jpg', 'images/201403/source_img/4_G_1396204288498.jpg', '1', '', '1', '1', '0', '0', '1396204288', '100', '0', '0', '0', '0', '0', '0', '1396204288', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('5', '30', 'dsd000005', '400g美赞臣安婴儿A+无乳糖奶粉', '+', '0', '2', '', '0', '0.000', '165.60', '138.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/5_thumb_G_1396204317259.jpg', 'images/201403/goods_img/5_G_1396204317174.jpg', 'images/201403/source_img/5_G_1396204317106.jpg', '1', '', '1', '1', '0', '0', '1396204317', '100', '0', '0', '0', '0', '0', '0', '1396204317', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('6', '32', 'dsd000006', '900g惠氏爱儿乐妈妈奶粉', '+', '0', '2', '', '0', '0.000', '240.00', '200.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/6_thumb_G_1396204438603.jpg', 'images/201403/goods_img/6_G_1396204438306.jpg', 'images/201403/source_img/6_G_1396204438088.jpg', '1', '', '1', '1', '0', '0', '1396204438', '100', '0', '0', '0', '0', '0', '0', '1396204438', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('7', '32', 'dsd000007', '900g美赞臣安婴妈妈A+', '+', '0', '2', '', '0', '0.000', '273.59', '228.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/7_thumb_G_1396204465855.jpg', 'images/201403/goods_img/7_G_1396204465734.jpg', 'images/201403/source_img/7_G_1396204465102.jpg', '1', '', '1', '1', '0', '0', '1396204465', '100', '0', '0', '0', '0', '0', '0', '1396204465', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('8', '32', 'dsd000008', '400g雅士利能慧孕妇奶粉', '+', '0', '2', '', '0', '0.000', '240.00', '200.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/8_thumb_G_1396204527227.jpg', 'images/201403/goods_img/8_G_1396204527819.jpg', 'images/201403/source_img/8_G_1396204527352.jpg', '1', '', '1', '1', '0', '0', '1396204527', '100', '0', '0', '0', '0', '0', '0', '1396204527', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('9', '34', 'dsd000009', '39g合生元儿童益生菌冲剂', '+', '0', '2', '', '0', '0.000', '46.80', '39.00', '0.00', '0', '0', '0', '', '', '', '', '', '', '1', '', '1', '1', '0', '0', '1396204618', '100', '0', '0', '0', '0', '0', '0', '1396204618', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('10', '33', 'dsd000010', '虾片/虾条', '+', '0', '3', '', '0', '0.000', '6.24', '5.20', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/10_thumb_G_1396204648920.jpg', 'images/201403/goods_img/10_G_1396204648329.jpg', 'images/201403/source_img/10_G_1396204648385.jpg', '1', '', '1', '1', '0', '0', '1396204648', '100', '0', '0', '0', '0', '0', '0', '1396204854', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('11', '34', 'dsd000011', '90g合生元儿童益生菌冲剂', '+', '0', '4', '', '0', '0.000', '120.00', '100.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/11_thumb_G_1396204672623.jpg', 'images/201403/goods_img/11_G_1396204672226.jpg', 'images/201403/source_img/11_G_1396204672050.jpg', '1', '', '1', '1', '0', '0', '1396204672', '100', '0', '0', '0', '0', '0', '0', '1396204672', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('12', '35', 'dsd000012', '120g亨氏清儿润香橙奶伴侣', '+', '0', '5', '', '0', '0.000', '120.00', '100.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/12_thumb_G_1396204747421.jpg', 'images/201403/goods_img/12_G_1396204747306.jpg', 'images/201403/source_img/12_G_1396204747347.jpg', '1', '', '1', '1', '0', '0', '1396204747', '100', '0', '0', '0', '0', '0', '0', '1396204747', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('13', '36', 'dsd000013', '64g亨氏磨牙棒 [香橙味]', '+', '0', '5', '', '0', '0.000', '120.00', '100.00', '0.00', '0', '0', '0', '', '', '', '', '', '', '1', '', '1', '1', '0', '0', '1396204843', '100', '0', '0', '0', '0', '0', '0', '1396204843', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('14', '36', 'dsd000014', '64g亨氏磨牙棒 [牛奶味]', '+', '0', '5', '', '0', '0.000', '120.00', '100.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/14_thumb_G_1396204872253.jpg', 'images/201403/goods_img/14_G_1396204872114.jpg', 'images/201403/source_img/14_G_1396204872117.jpg', '1', '', '1', '1', '0', '0', '1396204872', '100', '0', '0', '0', '0', '0', '0', '1396204872', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('15', '33', 'dsd000015', '上好佳虾片 [龙虾味 40g]', '+', '0', '3', '', '0', '0.000', '3.48', '2.90', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/15_thumb_G_1396205038874.jpg', 'images/201403/goods_img/15_G_1396205038146.jpg', 'images/201403/source_img/15_G_1396205038239.jpg', '1', '', '1', '1', '0', '0', '1396204951', '100', '0', '0', '0', '0', '0', '0', '1396205038', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('16', '37', 'dsd000016', '225g亨氏淮山薏米米粉(1段)', '+', '0', '5', '', '0', '0.000', '120.00', '100.00', '0.00', '0', '0', '0', '', '', '', '', '', '', '1', '', '1', '1', '0', '0', '1396204963', '100', '0', '0', '0', '0', '0', '0', '1396204963', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('17', '37', 'dsd000017', '225g贝因美DHA蔬菜营养米粉', '+', '0', '6', '', '0', '0.000', '27.00', '22.50', '0.00', '0', '0', '0', '', '', '', '', '', '', '1', '', '1', '1', '0', '0', '1396204982', '100', '0', '0', '0', '0', '0', '0', '1396204982', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('18', '38', 'dsd000018', '208g贝因美黑芝麻营养面条', '+', '0', '6', '', '0', '0.000', '14.76', '12.30', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/18_thumb_G_1396205074979.jpg', 'images/201403/goods_img/18_G_1396205074316.jpg', 'images/201403/source_img/18_G_1396205074509.jpg', '1', '', '1', '1', '0', '0', '1396205074', '100', '0', '0', '0', '0', '0', '0', '1396205074', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('19', '38', 'dsd000019', '280g百乐麦阶段面(1)', '+', '0', '7', '', '0', '0.000', '11.76', '9.80', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/19_thumb_G_1396205102360.jpg', 'images/201403/goods_img/19_G_1396205102809.jpg', 'images/201403/source_img/19_G_1396205102753.jpg', '1', '', '1', '1', '0', '0', '1396205102', '100', '0', '0', '0', '0', '0', '0', '1396205102', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('20', '33', 'dsd000020', '上好佳虾条 [40g] ', '+', '0', '3', '', '0', '0.000', '3.48', '2.90', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/20_thumb_G_1396205119122.jpg', 'images/201403/goods_img/20_G_1396205119013.jpg', 'images/201403/source_img/20_G_1396205119075.jpg', '1', '', '1', '1', '0', '0', '1396205119', '100', '0', '0', '0', '0', '0', '0', '1396205119', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('21', '39', 'dsd000021', '120g亨氏猕猴桃豌豆菠菜泥', '+', '0', '5', '', '0', '0.000', '5.76', '4.80', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/21_thumb_G_1396205163818.jpg', 'images/201403/goods_img/21_G_1396205163373.jpg', 'images/201403/source_img/21_G_1396205163224.jpg', '1', '', '1', '1', '0', '0', '1396205163', '100', '0', '0', '0', '0', '0', '0', '1396205163', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('22', '39', 'dsd000022', '亨氏乐维滋蔬乐2+2苹果草莓番茄胡萝卜泥 120g', '+', '0', '5', '', '0', '0.000', '5.76', '4.80', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/22_thumb_G_1396205180918.jpg', 'images/201403/goods_img/22_G_1396205180411.jpg', 'images/201403/source_img/22_G_1396205180760.jpg', '1', '', '1', '1', '0', '0', '1396205180', '100', '0', '0', '0', '0', '0', '0', '1396205180', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('23', '33', 'dsd000023', '40g上好佳洋葱圈', '+', '0', '3', '', '0', '0.000', '3.48', '2.90', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/23_thumb_G_1396205195119.jpg', 'images/201403/goods_img/23_G_1396205195677.jpg', 'images/201403/source_img/23_G_1396205195971.jpg', '1', '', '1', '1', '0', '0', '1396205195', '100', '0', '0', '0', '0', '0', '0', '1396205195', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('24', '39', 'dsd000024', '120g亨氏苹果玉米南瓜泥', '+', '0', '5', '', '0', '0.000', '5.76', '4.80', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/24_thumb_G_1396205200532.jpg', 'images/201403/goods_img/24_G_1396205200918.jpg', 'images/201403/source_img/24_G_1396205200118.jpg', '1', '', '1', '1', '0', '0', '1396205200', '100', '0', '0', '0', '0', '0', '0', '1396205200', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('25', '41', 'dsd000025', '115g贝因美宝宝原味肉酥', '+', '0', '6', '', '0', '0.000', '43.19', '36.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/25_thumb_G_1396205265027.jpg', 'images/201403/goods_img/25_G_1396205265108.jpg', 'images/201403/source_img/25_G_1396205265157.jpg', '1', '', '1', '1', '0', '0', '1396205265', '100', '0', '0', '0', '0', '0', '0', '1396205265', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('26', '41', 'dsd000026', '115g贝因美胡萝卜营养肉酥', '+', '5', '6', '', '0', '0.000', '31.20', '26.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/26_thumb_G_1396205298296.jpg', 'images/201403/goods_img/26_G_1396205298939.jpg', 'images/201403/source_img/26_G_1396205298001.jpg', '1', '', '1', '1', '0', '0', '1396205298', '100', '0', '0', '0', '0', '0', '0', '1396205298', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('27', '40', 'dsd000027', '40g好丽友香焗原味', '+', '1', '8', '', '0', '0.000', '3.48', '2.90', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/27_thumb_G_1396205377211.jpg', 'images/201403/goods_img/27_G_1396205377029.jpg', 'images/201403/source_img/27_G_1396205377466.jpg', '1', '', '1', '1', '0', '0', '1396205377', '100', '0', '0', '0', '0', '0', '0', '1396205377', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('28', '40', 'dsd000028', '40g好丽友烤鸡比莎薯片', '+', '0', '8', '', '0', '0.000', '3.84', '3.20', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/28_thumb_G_1396205438374.jpg', 'images/201403/goods_img/28_G_1396205438903.jpg', 'images/201403/source_img/28_G_1396205438820.jpg', '1', '', '1', '1', '0', '0', '1396205438', '100', '0', '0', '0', '0', '0', '0', '1396205438', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('29', '40', 'dsd000029', '40g好丽友番茄酱味薯条', '+', '1', '8', '', '0', '0.000', '3.84', '3.20', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/29_thumb_G_1396205480924.jpg', 'images/201403/goods_img/29_G_1396205480950.jpg', 'images/201403/source_img/29_G_1396205480412.jpg', '1', '', '1', '1', '0', '0', '1396205480', '100', '0', '0', '0', '0', '0', '0', '1396205480', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('30', '19', 'dsd000030', '希乐清阳水瓶xl-3504 [500ml]', '+', '0', '6', '', '0', '0.000', '19.20', '16.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/30_thumb_G_1396205580372.jpg', 'images/201403/goods_img/30_G_1396205580879.jpg', 'images/201403/source_img/30_G_1396205580617.jpg', '1', '', '1', '1', '0', '0', '1396205563', '100', '0', '0', '0', '0', '0', '0', '1396205631', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('31', '42', 'dsd000031', '高露洁旅行套装/折叠牙刷加50克高露洁冰爽防蛀牙膏 ', '+', '0', '0', '', '0', '0.000', '15.48', '12.90', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/31_thumb_G_1396205655690.jpg', 'images/201403/goods_img/31_G_1396205655928.jpg', 'images/201403/source_img/31_G_1396205655522.jpg', '1', '', '1', '1', '0', '0', '1396205655', '100', '0', '0', '0', '0', '0', '0', '1396205674', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('32', '19', 'dsd000032', '乐扣乐扣500ml炫彩运动水杯HPP721T(蓝色) [中号 蓝', '+', '0', '10', '', '0', '0.000', '73.20', '61.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/32_thumb_G_1396205672483.jpg', 'images/201403/goods_img/32_G_1396205672090.jpg', 'images/201403/source_img/32_G_1396205672218.jpg', '1', '', '1', '1', '0', '0', '1396205672', '100', '0', '0', '0', '0', '0', '0', '1396205699', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('33', '19', 'dsd000033', '乐扣乐扣炫彩运动茶杯（黄）HPP722TO', '+', '0', '9', '', '0', '0.000', '81.60', '68.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/33_thumb_G_1396205688993.jpg', 'images/201403/goods_img/33_G_1396205688403.jpg', 'images/201403/source_img/33_G_1396205688671.jpg', '1', '', '1', '1', '0', '0', '1396205688', '100', '0', '0', '0', '0', '0', '0', '1396205688', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('34', '42', 'dsd000034', '佳洁士珍珠盐白牙膏(柠檬清新)140g ', '+', '0', '11', '', '0', '0.000', '9.48', '7.90', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/34_thumb_G_1396205793363.jpg', 'images/201403/goods_img/34_G_1396205793136.jpg', 'images/201403/source_img/34_G_1396205793216.jpg', '1', '', '1', '1', '0', '0', '1396205748', '100', '0', '0', '0', '0', '0', '0', '1396205818', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('35', '19', 'dsd000035', '雅诚德情侣对杯', '+', '0', '12', '', '0', '0.000', '57.59', '48.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/35_thumb_G_1396205777123.jpg', 'images/201403/goods_img/35_G_1396205777429.jpg', 'images/201403/source_img/35_G_1396205777470.jpg', '1', '', '1', '1', '0', '0', '1396205777', '100', '0', '0', '0', '0', '0', '0', '1396205777', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('36', '19', 'dsd000036', '雅诚德珍妮杯', '+', '0', '12', '', '0', '0.000', '21.59', '18.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/36_thumb_G_1396205803539.jpg', 'images/201403/goods_img/36_G_1396205803045.jpg', 'images/201403/source_img/36_G_1396205803536.jpg', '1', '', '1', '1', '0', '0', '1396205803', '100', '0', '0', '0', '0', '0', '0', '1396205803', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('37', '19', 'dsd000037', '雅诚德迎宾杯', '+', '0', '12', '', '0', '0.000', '130.79', '109.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/37_thumb_G_1396205822577.jpg', 'images/201403/goods_img/37_G_1396205822213.jpg', 'images/201403/source_img/37_G_1396205822322.jpg', '1', '', '1', '1', '0', '0', '1396205822', '100', '0', '0', '0', '0', '0', '0', '1396205822', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('38', '42', 'dsd000038', '佳洁士防蛀修护牙膏(晶莹薄荷香型)200g ', '+', '0', '11', '', '0', '0.000', '16.68', '13.90', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/38_thumb_G_1396205869977.jpg', 'images/201403/goods_img/38_G_1396205869001.jpg', 'images/201403/source_img/38_G_1396205869469.jpg', '1', '', '1', '1', '0', '0', '1396205869', '100', '0', '0', '0', '0', '0', '0', '1396205869', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('39', '19', 'dsd000039', '海洋工作室威忌杯B16112', '+', '0', '13', '', '0', '0.000', '18.00', '15.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/39_thumb_G_1396205872946.jpg', 'images/201403/goods_img/39_G_1396205872026.jpg', 'images/201403/source_img/39_G_1396205872665.jpg', '1', '', '1', '1', '0', '0', '1396205872', '100', '0', '0', '0', '0', '0', '0', '1396205872', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('40', '19', 'dsd000040', '海洋经典红酒杯B501R08', '+', '0', '13', '', '0', '0.000', '12.00', '10.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/40_thumb_G_1396205897944.jpg', 'images/201403/goods_img/40_G_1396205897522.jpg', 'images/201403/source_img/40_G_1396205897551.jpg', '1', '', '1', '1', '0', '0', '1396205897', '100', '0', '0', '0', '0', '0', '0', '1396205897', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('41', '42', 'dsd000041', '90g佳洁士全优7效牙膏 ', '+', '0', '11', '', '0', '0.000', '21.00', '17.50', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/41_thumb_G_1396205932159.jpg', 'images/201403/goods_img/41_G_1396205932637.jpg', 'images/201403/source_img/41_G_1396205932150.jpg', '1', '', '1', '1', '0', '0', '1396205932', '100', '0', '0', '0', '0', '0', '0', '1396205932', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('42', '19', 'dsd000042', '思宝双龙A2真空杯', '+', '0', '14', '', '0', '0.000', '142.79', '119.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/42_thumb_G_1396205961912.jpg', 'images/201403/goods_img/42_G_1396205961947.jpg', 'images/201403/source_img/42_G_1396205961018.jpg', '1', '', '1', '1', '0', '0', '1396205961', '100', '0', '0', '0', '0', '0', '0', '1396205961', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('43', '19', 'dsd000043', '富光超炫保温杯FGL-3121', '+', '0', '14', '', '0', '0.000', '120.00', '100.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/43_thumb_G_1396205985325.jpg', 'images/201403/goods_img/43_G_1396205985443.jpg', 'images/201403/source_img/43_G_1396205985977.jpg', '1', '', '1', '1', '0', '0', '1396205985', '100', '0', '0', '0', '0', '0', '0', '1396205985', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('44', '42', 'dsd000044', '120g佳洁士茶爽炫白牙膏', '+', '0', '11', '', '0', '0.000', '13.08', '10.90', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/44_thumb_G_1396205999173.jpg', 'images/201403/goods_img/44_G_1396205999838.jpg', 'images/201403/source_img/44_G_1396205999696.jpg', '1', '', '1', '1', '0', '0', '1396205999', '100', '0', '0', '0', '0', '0', '0', '1396205999', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('45', '19', 'dsd000045', '苏泊尔汤宝系列保温提锅KF25A1', '+', '0', '14', '', '0', '0.000', '132.00', '110.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/45_thumb_G_1396206040650.jpg', 'images/201403/goods_img/45_G_1396206040099.jpg', 'images/201403/source_img/45_G_1396206040842.jpg', '1', '', '1', '1', '0', '0', '1396206040', '100', '0', '0', '0', '0', '0', '0', '1396206040', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('46', '44', 'dsd000046', '胸花', '+', '1', '0', '', '0', '0.000', '1920.00', '1600.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/46_thumb_G_1396206132921.jpg', 'images/201403/goods_img/46_G_1396206132231.jpg', 'images/201403/source_img/46_G_1396206132679.jpg', '1', '', '1', '1', '0', '0', '1396206132', '100', '0', '0', '0', '0', '0', '0', '1396207433', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('47', '20', 'dsd000047', '华美小号妙奇油壶HM-9004', '+', '0', '14', '', '0', '0.000', '118.80', '99.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/47_thumb_G_1396206139922.jpg', 'images/201403/goods_img/47_G_1396206139559.jpg', 'images/201403/source_img/47_G_1396206139425.jpg', '1', '', '1', '1', '0', '0', '1396206139', '100', '0', '0', '0', '0', '0', '0', '1396206139', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('90', '44', 'dsd000090', '胸花', '+', '0', '0', '', '0', '0.000', '3000.00', '2500.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/90_thumb_G_1396207634132.jpg', 'images/201403/goods_img/90_G_1396207634426.jpg', 'images/201403/source_img/90_G_1396207634559.jpg', '1', '', '1', '1', '0', '0', '1396207634', '100', '0', '0', '0', '0', '0', '0', '1396207634', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('48', '20', 'dsd000048', '振兴圆型玻璃调味瓶YH5995', '+', '0', '16', '', '0', '0.000', '12.00', '10.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/48_thumb_G_1396206170197.jpg', 'images/201403/goods_img/48_G_1396206170243.jpg', 'images/201403/source_img/48_G_1396206170281.jpg', '1', '', '1', '1', '0', '0', '1396206170', '100', '0', '0', '0', '0', '0', '0', '1396206170', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('49', '46', 'dsd000049', '项链', '+', '0', '0', '', '0', '0.000', '3600.00', '3000.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/49_thumb_G_1396206194430.jpg', 'images/201403/goods_img/49_G_1396206194100.jpg', 'images/201403/source_img/49_G_1396206194415.jpg', '1', '', '1', '1', '0', '0', '1396206194', '100', '0', '0', '0', '0', '0', '0', '1396207407', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('50', '43', 'dsd000050', '清风200抽*3原木纯品抽取式面纸 [200张*3包]', '+', '0', '15', '', '0', '0.000', '14.63', '12.20', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/50_thumb_G_1396206202084.jpg', 'images/201403/goods_img/50_G_1396206202619.jpg', 'images/201403/source_img/50_G_1396206202667.jpg', '1', '', '1', '1', '0', '0', '1396206202', '100', '0', '0', '0', '0', '0', '0', '1396206202', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('51', '20', 'dsd000051', '紫丁香优质酱醋瓶JA2002', '+', '0', '17', '', '0', '0.000', '120.00', '100.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/51_thumb_G_1396206204996.jpg', 'images/201403/goods_img/51_G_1396206204609.jpg', 'images/201403/source_img/51_G_1396206204444.jpg', '1', '', '1', '1', '0', '0', '1396206204', '100', '0', '0', '0', '0', '0', '0', '1396206204', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('52', '45', 'dsd000052', '戒指', '+', '0', '0', '', '0', '0.000', '2400.00', '2000.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/52_thumb_G_1396206218275.jpg', 'images/201403/goods_img/52_G_1396206218475.jpg', 'images/201403/source_img/52_G_1396206218680.jpg', '1', '', '1', '1', '0', '0', '1396206218', '100', '0', '0', '0', '0', '0', '0', '1396207377', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('53', '20', 'dsd000053', '茶花微波蒸器2708 1*24 [长型 1200ml]', '+', '0', '18', '', '0', '0.000', '27.47', '22.90', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/53_thumb_G_1396206244869.jpg', 'images/201403/goods_img/53_G_1396206244501.jpg', 'images/201403/source_img/53_G_1396206244687.jpg', '1', '', '1', '1', '0', '0', '1396206244', '100', '0', '0', '0', '0', '0', '0', '1396206244', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('54', '43', 'dsd000054', '舒洁200抽迪士尼软抽', '+', '0', '0', '', '0', '0.000', '0.00', '0.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/54_thumb_G_1396206266372.jpg', 'images/201403/goods_img/54_G_1396206266855.jpg', 'images/201403/source_img/54_G_1396206266504.jpg', '1', '', '1', '1', '0', '0', '1396206266', '100', '0', '0', '0', '0', '0', '0', '1396206266', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('55', '20', 'dsd000055', '茶花2745 450ml微波杯', '+', '0', '18', '', '0', '0.000', '12.00', '10.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/55_thumb_G_1396206268537.jpg', 'images/201403/goods_img/55_G_1396206268265.jpg', 'images/201403/source_img/55_G_1396206268417.jpg', '1', '', '1', '1', '0', '0', '1396206268', '100', '0', '0', '0', '0', '0', '0', '1396206268', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('56', '44', 'dsd000056', '胸花', '+', '0', '0', '', '0', '0.000', '1800.00', '1500.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/56_thumb_G_1396206294957.jpg', 'images/201403/goods_img/56_G_1396206294269.jpg', 'images/201403/source_img/56_G_1396206294312.jpg', '1', '', '1', '1', '0', '0', '1396206294', '100', '0', '0', '0', '0', '0', '0', '1396207343', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('57', '20', 'dsd000057', '茶花微波大号专用煲2707', '+', '0', '18', '', '0', '0.000', '12.00', '10.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/57_thumb_G_1396206295126.jpg', 'images/201403/goods_img/57_G_1396206295725.jpg', 'images/201403/source_img/57_G_1396206295505.jpg', '1', '', '1', '1', '0', '0', '1396206295', '100', '0', '0', '0', '0', '0', '0', '1396206295', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('58', '43', 'dsd000058', '舒洁200抽盒抽', '+', '0', '0', '', '0', '0.000', '12.60', '10.50', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/58_thumb_G_1396206316633.jpg', 'images/201403/goods_img/58_G_1396206316459.jpg', 'images/201403/source_img/58_G_1396206316876.jpg', '1', '', '1', '1', '0', '0', '1396206316', '100', '0', '0', '0', '0', '0', '0', '1396206316', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('59', '20', 'dsd000059', '苏泊尔大漏勺KT04B1', '+', '0', '18', '', '0', '0.000', '94.80', '79.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/59_thumb_G_1396206345774.jpg', 'images/201403/goods_img/59_G_1396206345449.jpg', 'images/201403/source_img/59_G_1396206345292.jpg', '1', '', '1', '1', '0', '0', '1396206345', '100', '0', '0', '0', '0', '0', '0', '1396206345', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('60', '43', 'dsd000060', '珍爱80P筒装湿巾 [80片] ', '+', '0', '0', '', '0', '0.000', '17.04', '14.20', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/60_thumb_G_1396206368412.jpg', 'images/201403/goods_img/60_G_1396206368429.jpg', 'images/201403/source_img/60_G_1396206368926.jpg', '1', '', '1', '1', '0', '0', '1396206368', '100', '0', '0', '0', '0', '0', '0', '1396206368', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('61', '20', 'dsd000061', '富尔兴欧派不锈钢主食匙FC-225', '+', '0', '18', '', '0', '0.000', '12.00', '10.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/61_thumb_G_1396206372531.jpg', 'images/201403/goods_img/61_G_1396206372235.jpg', 'images/201403/source_img/61_G_1396206372118.jpg', '1', '', '1', '1', '0', '0', '1396206372', '100', '0', '0', '0', '0', '0', '0', '1396206372', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('62', '20', 'dsd000062', '富尔兴欧派不锈钢勺FC-222', '+', '0', '18', '', '0', '0.000', '12.00', '10.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/62_thumb_G_1396206406581.jpg', 'images/201403/goods_img/62_G_1396206406527.jpg', 'images/201403/source_img/62_G_1396206406272.jpg', '1', '', '1', '1', '0', '0', '1396206406', '100', '0', '0', '0', '0', '0', '0', '1396206406', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('63', '43', 'dsd000063', '10片清风绿茶湿巾 ', '+', '0', '15', '', '0', '0.000', '4.68', '3.90', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/63_thumb_G_1396206441154.jpg', 'images/201403/goods_img/63_G_1396206441734.jpg', 'images/201403/source_img/63_G_1396206441172.jpg', '1', '', '1', '1', '0', '0', '1396206441', '100', '0', '0', '0', '0', '0', '0', '1396206441', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('64', '20', 'dsd000064', '巧媳妇钢塑柄磨刀棒AM-006', '+', '0', '19', '', '0', '0.000', '24.00', '20.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/64_thumb_G_1396206453033.jpg', 'images/201403/goods_img/64_G_1396206453391.jpg', 'images/201403/source_img/64_G_1396206453605.jpg', '1', '', '1', '1', '0', '0', '1396206453', '100', '0', '0', '0', '0', '0', '0', '1396206453', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('65', '20', 'dsd000065', '张小泉咖啡彩木系列切片刀D11102300', '+', '0', '20', '', '0', '0.000', '24.00', '20.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/65_thumb_G_1396206479297.jpg', 'images/201403/goods_img/65_G_1396206479763.jpg', 'images/201403/source_img/65_G_1396206479846.jpg', '1', '', '1', '1', '0', '0', '1396206479', '100', '0', '0', '0', '0', '0', '0', '1396206479', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('66', '20', 'dsd000066', '张小泉中片刀N5472', '+', '0', '20', '', '0', '0.000', '36.00', '30.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/66_thumb_G_1396206501441.jpg', 'images/201403/goods_img/66_G_1396206501874.jpg', 'images/201403/source_img/66_G_1396206501376.jpg', '1', '', '1', '1', '0', '0', '1396206501', '100', '0', '0', '0', '0', '0', '0', '1396206501', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('67', '15', 'dsd000067', '妙洁MOPFD套布拖', '+', '0', '21', '', '0', '0.000', '106.80', '89.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/67_thumb_G_1396206596967.jpg', 'images/201403/goods_img/67_G_1396206596558.jpg', 'images/201403/source_img/67_G_1396206596815.jpg', '1', '', '1', '1', '0', '0', '1396206596', '100', '0', '0', '0', '0', '0', '0', '1396206596', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('68', '21', 'dsd000068', '海信LED39K360X3D电视', '+', '0', '22', '', '0', '0.000', '6000.00', '5000.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/68_thumb_G_1396206603567.jpg', 'images/201403/goods_img/68_G_1396206603041.jpg', 'images/201403/source_img/68_G_1396206603578.jpg', '1', '', '1', '1', '0', '0', '1396206603', '100', '0', '0', '0', '0', '0', '0', '1396206603', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('69', '21', 'dsd000069', '海信LED55K360X3D电视', '+', '0', '22', '', '0', '0.000', '7200.00', '6000.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/69_thumb_G_1396206621562.jpg', 'images/201403/goods_img/69_G_1396206621955.jpg', 'images/201403/source_img/69_G_1396206621663.jpg', '1', '', '1', '1', '0', '0', '1396206621', '100', '0', '0', '0', '0', '0', '0', '1396206621', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('70', '21', 'dsd000070', '海信LED39K300J电视', '+', '0', '22', '', '0', '0.000', '3600.00', '3000.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/70_thumb_G_1396206642929.jpg', 'images/201403/goods_img/70_G_1396206642001.jpg', 'images/201403/source_img/70_G_1396206642051.jpg', '1', '', '1', '1', '0', '0', '1396206642', '100', '0', '0', '0', '0', '0', '0', '1396206642', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('71', '15', 'dsd000071', '思高第二代魔力地圈(平拖)', '+', '1', '23', '', '0', '0.000', '99.00', '82.50', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/71_thumb_G_1396206676745.jpg', 'images/201403/goods_img/71_G_1396206676647.jpg', 'images/201403/source_img/71_G_1396206676193.jpg', '1', '', '1', '1', '0', '0', '1396206676', '100', '0', '0', '0', '0', '0', '0', '1396206676', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('72', '21', 'dsd000072', '美的215L三门电脑冰箱', '+', '0', '24', '', '0', '0.000', '3600.00', '3000.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/72_thumb_G_1396206691981.jpg', 'images/201403/goods_img/72_G_1396206691949.jpg', 'images/201403/source_img/72_G_1396206691364.jpg', '1', '', '1', '1', '0', '0', '1396206691', '100', '0', '0', '0', '0', '0', '0', '1396206691', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('73', '21', 'dsd000073', '海尔BCD-225SKHCB冰箱', '+', '0', '24', '', '0', '0.000', '3600.00', '3000.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/73_thumb_G_1396206710966.jpg', 'images/201403/goods_img/73_G_1396206710497.jpg', 'images/201403/source_img/73_G_1396206710334.jpg', '1', '', '1', '1', '0', '0', '1396206710', '100', '0', '0', '0', '0', '0', '0', '1396206710', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('74', '21', 'dsd000074', '海尔BCD-206STCM冰箱', '+', '0', '24', '', '0', '0.000', '24000.00', '20000.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/74_thumb_G_1396206735450.jpg', 'images/201403/goods_img/74_G_1396206735991.jpg', 'images/201403/source_img/74_G_1396206735113.jpg', '1', '', '1', '1', '0', '0', '1396206735', '100', '0', '0', '0', '0', '0', '0', '1396206735', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('75', '15', 'dsd000075', '思高动感吸尘魔力洁地擦促销装', '+', '0', '25', '', '0', '0.000', '165.60', '138.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/75_thumb_G_1396206776211.jpg', 'images/201403/goods_img/75_G_1396206776832.jpg', 'images/201403/source_img/75_G_1396206776041.jpg', '1', '', '1', '1', '0', '0', '1396206776', '100', '0', '0', '0', '0', '0', '0', '1396206776', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('76', '22', 'dsd000076', '飞利浦GC2810电熨斗', '+', '0', '24', '', '0', '0.000', '120.00', '100.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/76_thumb_G_1396206809546.jpg', 'images/201403/goods_img/76_G_1396206809671.jpg', 'images/201403/source_img/76_G_1396206809725.jpg', '1', '', '1', '1', '0', '0', '1396206809', '100', '0', '0', '0', '0', '0', '0', '1396206809', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('77', '22', 'dsd000077', '飞利浦GC2820电熨斗', '+', '0', '24', '', '0', '0.000', '3600.00', '3000.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/77_thumb_G_1396206831472.jpg', 'images/201403/goods_img/77_G_1396206831077.jpg', 'images/201403/source_img/77_G_1396206831318.jpg', '1', '', '1', '1', '0', '0', '1396206831', '100', '0', '0', '0', '0', '0', '0', '1396206831', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('78', '15', 'dsd000078', '美丽雅两个装钢丝球(促销装)', '+', '0', '26', '', '0', '0.000', '0.00', '0.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/78_thumb_G_1396206843610.jpg', 'images/201403/goods_img/78_G_1396206843045.jpg', 'images/201403/source_img/78_G_1396206843842.jpg', '1', '', '1', '1', '0', '0', '1396206843', '100', '0', '0', '0', '0', '0', '0', '1396206843', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('79', '22', 'dsd000079', '飞利浦GC2830电熨斗', '+', '0', '24', '', '0', '0.000', '600.00', '500.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/79_thumb_G_1396206869486.jpg', 'images/201403/goods_img/79_G_1396206869062.jpg', 'images/201403/source_img/79_G_1396206869736.jpg', '1', '', '1', '1', '0', '0', '1396206869', '100', '0', '0', '0', '0', '0', '0', '1396206869', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('80', '15', 'dsd000080', '思高灵巧洁地擦促销装', '+', '0', '25', '', '0', '0.000', '82.80', '69.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/80_thumb_G_1396206917658.jpg', 'images/201403/goods_img/80_G_1396206917923.jpg', 'images/201403/source_img/80_G_1396206917983.jpg', '1', '', '1', '1', '0', '0', '1396206917', '100', '0', '0', '0', '0', '0', '0', '1396206917', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('81', '22', 'dsd000081', '飞利浦HD9220空气炸锅', '+', '0', '27', '', '0', '0.000', '2400.00', '2000.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/81_thumb_G_1396206921241.jpg', 'images/201403/goods_img/81_G_1396206921023.jpg', 'images/201403/source_img/81_G_1396206921707.jpg', '1', '', '1', '1', '0', '0', '1396206921', '100', '0', '0', '0', '0', '0', '0', '1396206921', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('82', '22', 'dsd000082', '飞利浦HD9316电水壶', '+', '0', '27', '', '0', '0.000', '1200.00', '1000.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/82_thumb_G_1396206948841.jpg', 'images/201403/goods_img/82_G_1396206948635.jpg', 'images/201403/source_img/82_G_1396206948602.jpg', '1', '', '1', '1', '0', '0', '1396206948', '100', '0', '0', '0', '0', '0', '0', '1396206948', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('83', '22', 'dsd000083', '飞利浦HD9312电水壶', '+', '0', '27', '', '0', '0.000', '360.00', '300.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/83_thumb_G_1396206969035.jpg', 'images/201403/goods_img/83_G_1396206969410.jpg', 'images/201403/source_img/83_G_1396206969292.jpg', '1', '', '1', '1', '0', '0', '1396206969', '100', '0', '0', '0', '0', '0', '0', '1396206969', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('84', '23', 'dsd000084', '茶花四组方便调味盒2527 [四格]', '+', '0', '0', '', '0', '0.000', '25.20', '21.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/84_thumb_G_1396207052467.jpg', 'images/201403/goods_img/84_G_1396207052791.jpg', 'images/201403/source_img/84_G_1396207052475.jpg', '1', '', '1', '1', '0', '0', '1396207052', '100', '0', '0', '0', '0', '0', '0', '1396207052', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('85', '23', 'dsd000085', '紫丁香调味缸套装JA300', '+', '0', '0', '', '0', '0.000', '28.79', '24.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/85_thumb_G_1396207068719.jpg', 'images/201403/goods_img/85_G_1396207068479.jpg', 'images/201403/source_img/85_G_1396207068522.jpg', '1', '', '1', '1', '0', '0', '1396207068', '100', '0', '0', '0', '0', '0', '0', '1396207068', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('86', '23', 'dsd000086', '优美家时尚3组调味盒KC-7008', '+', '0', '0', '', '0', '0.000', '36.00', '30.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/86_thumb_G_1396207095645.jpg', 'images/201403/goods_img/86_G_1396207095091.jpg', 'images/201403/source_img/86_G_1396207095580.jpg', '1', '', '1', '1', '0', '0', '1396207095', '100', '0', '0', '0', '0', '0', '0', '1396207095', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('87', '24', 'dsd000087', '华美小号妙奇油壶HM-9004', '+', '0', '0', '', '0', '0.000', '11.88', '9.90', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/87_thumb_G_1396207159322.jpg', 'images/201403/goods_img/87_G_1396207159721.jpg', 'images/201403/source_img/87_G_1396207159018.jpg', '1', '', '1', '1', '0', '0', '1396207159', '100', '0', '0', '0', '0', '0', '0', '1396207159', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('88', '24', 'dsd000088', '振兴圆型玻璃调味瓶YH5995', '+', '0', '0', '', '0', '0.000', '12.00', '10.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/88_thumb_G_1396207183644.jpg', 'images/201403/goods_img/88_G_1396207183556.jpg', 'images/201403/source_img/88_G_1396207183143.jpg', '1', '', '1', '1', '0', '0', '1396207183', '100', '0', '0', '0', '0', '0', '0', '1396207183', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('89', '24', 'dsd000089', '紫丁香优质酱醋瓶', '+', '0', '0', '', '0', '0.000', '24.00', '20.00', '19.80', '1398326400', '1419408000', '0', '', '', '', 'images/201403/thumb_img/89_thumb_G_1396207224557.jpg', 'images/201403/goods_img/89_G_1396207224621.jpg', 'images/201403/source_img/89_G_1396207224130.jpg', '1', '', '1', '1', '0', '0', '1396207224', '100', '0', '0', '0', '0', '1', '0', '1398382003', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('91', '48', 'dsd000091', '康师傅3+2饼干 375g [香草]', '+', '0', '28', '', '0', '0.000', '13.79', '11.50', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/91_thumb_G_1396207676009.jpg', 'images/201403/goods_img/91_G_1396207676357.jpg', 'images/201403/source_img/91_G_1396207676058.jpg', '1', '', '1', '1', '0', '0', '1396207676', '100', '0', '0', '0', '0', '0', '0', '1396207676', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('92', '45', 'dsd000092', '戒指', '+', '0', '0', '', '0', '0.000', '2200.00', '0.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/92_thumb_G_1396207677407.jpg', 'images/201403/goods_img/92_G_1396207677006.jpg', 'images/201403/source_img/92_G_1396207677865.jpg', '1', '', '1', '1', '0', '0', '1396207677', '100', '0', '0', '0', '0', '0', '0', '1396207677', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('93', '46', 'dsd000093', '项链', '+', '0', '0', '', '0', '0.000', '6000.00', '5000.00', '4999.00', '1398326400', '1419408000', '0', '', '', '', 'images/201403/thumb_img/93_thumb_G_1396207699660.jpg', 'images/201403/goods_img/93_G_1396207699581.jpg', 'images/201403/source_img/93_G_1396207699689.jpg', '1', '', '1', '1', '0', '0', '1396207699', '100', '0', '0', '0', '0', '1', '0', '1398382078', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('94', '45', 'dsd000094', '戒指', '+', '0', '0', '', '0', '0.000', '1800.00', '1500.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/94_thumb_G_1396207733790.jpg', 'images/201403/goods_img/94_G_1396207733954.jpg', 'images/201403/source_img/94_G_1396207733771.jpg', '1', '', '1', '1', '0', '0', '1396207733', '100', '0', '0', '0', '0', '0', '0', '1396207733', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('95', '48', 'dsd000095', '康师傅3+2饼干 375g [奶油] ', '+', '0', '28', '', '0', '0.000', '12.71', '10.60', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/95_thumb_G_1396207735342.jpg', 'images/201403/goods_img/95_G_1396207735075.jpg', 'images/201403/source_img/95_G_1396207735665.jpg', '1', '', '1', '1', '0', '0', '1396207735', '100', '0', '0', '0', '0', '0', '0', '1396207735', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('96', '57', 'dsd000096', '耳饰', '+', '0', '0', '', '0', '0.000', '1560.00', '1300.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/96_thumb_G_1396207764125.jpg', 'images/201403/goods_img/96_G_1396207764222.jpg', 'images/201403/source_img/96_G_1396207764781.jpg', '1', '', '1', '1', '0', '0', '1396207764', '100', '0', '0', '0', '0', '0', '0', '1396209851', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('97', '48', 'dsd000097', '康师傅3+2饼干 375g [柠檬] ', '+', '0', '28', '', '0', '0.000', '12.71', '10.60', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/97_thumb_G_1396207799629.jpg', 'images/201403/goods_img/97_G_1396207799802.jpg', 'images/201403/source_img/97_G_1396207799464.jpg', '1', '', '1', '1', '0', '0', '1396207799', '100', '0', '0', '0', '0', '0', '0', '1396207799', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('98', '48', 'dsd000098', '391g奥利奥双心脆威化 [草莓+巧克力]', '+', '0', '0', '', '0', '0.000', '25.20', '21.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/98_thumb_G_1396207865779.jpg', 'images/201403/goods_img/98_G_1396207865875.jpg', 'images/201403/source_img/98_G_1396207865395.jpg', '1', '', '1', '1', '0', '0', '1396207865', '100', '0', '0', '0', '0', '0', '0', '1396207865', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('99', '52', 'dsd000099', '拉杆箱', '+', '0', '0', '', '0', '0.000', '180.00', '150.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/99_thumb_G_1396207969985.jpg', 'images/201403/goods_img/99_G_1396207969488.jpg', 'images/201403/source_img/99_G_1396207969616.jpg', '1', '', '1', '1', '0', '0', '1396207969', '100', '0', '0', '0', '0', '0', '0', '1396208027', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('100', '51', 'dsd000100', '72g农心辛拉面香菇牛肉面(杯)', '+', '0', '29', '', '0', '0.000', '5.04', '4.20', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/100_thumb_G_1396208052241.jpg', 'images/201403/goods_img/100_G_1396208052813.jpg', 'images/201403/source_img/100_G_1396208052529.jpg', '1', '', '1', '1', '0', '0', '1396208052', '100', '0', '0', '0', '0', '0', '0', '1396208052', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('101', '52', 'dsd000101', '拉杆箱', '+', '0', '0', '', '0', '0.000', '360.00', '300.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/101_thumb_G_1396208078325.jpg', 'images/201403/goods_img/101_G_1396208078005.jpg', 'images/201403/source_img/101_G_1396208078259.jpg', '1', '', '1', '1', '0', '0', '1396208078', '100', '0', '0', '0', '0', '0', '0', '1396208078', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('102', '52', 'dsd000102', '拉杆箱', '+', '0', '0', '', '0', '0.000', '600.00', '500.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/102_thumb_G_1396208093485.jpg', 'images/201403/goods_img/102_G_1396208093091.jpg', 'images/201403/source_img/102_G_1396208093840.jpg', '1', '', '1', '1', '0', '0', '1396208093', '100', '0', '0', '0', '0', '0', '0', '1396208093', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('103', '51', 'dsd000103', '117g农心辣白菜辛拉面（桶面） ', '+', '1', '29', '', '0', '0.000', '7.43', '6.20', '6.99', '1398326400', '1419408000', '0', '', '', '', 'images/201403/thumb_img/103_thumb_G_1396208096966.jpg', 'images/201403/goods_img/103_G_1396208096778.jpg', 'images/201403/source_img/103_G_1396208096339.jpg', '1', '', '1', '1', '0', '0', '1396208096', '100', '0', '0', '0', '0', '1', '0', '1398381943', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('104', '52', 'dsd000104', '拉杆箱', '+', '2', '0', '', '0', '0.000', '240.00', '200.00', '199.00', '1398326400', '1416902400', '0', '', '', '', 'images/201403/thumb_img/104_thumb_G_1396208107449.jpg', 'images/201403/goods_img/104_G_1396208107349.jpg', 'images/201403/source_img/104_G_1396208107918.jpg', '1', '', '1', '1', '0', '0', '1396208107', '100', '0', '0', '0', '0', '1', '0', '1398381897', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('105', '53', 'dsd000105', '旅行包', '+', '0', '0', '', '0', '0.000', '144.00', '120.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/105_thumb_G_1396208151627.jpg', 'images/201403/goods_img/105_G_1396208151976.jpg', 'images/201403/source_img/105_G_1396208151826.jpg', '1', '', '1', '1', '0', '0', '1396208151', '100', '0', '0', '0', '0', '0', '0', '1396208151', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('106', '51', 'dsd000106', '70g农心上海汤面（鸡肉面）', '+', '0', '29', '', '0', '0.000', '5.04', '4.20', '3.90', '1396166400', '1397980800', '0', '', '', '', 'images/201403/thumb_img/106_thumb_G_1396208166012.jpg', 'images/201403/goods_img/106_G_1396208166461.jpg', 'images/201403/source_img/106_G_1396208166600.jpg', '1', '', '1', '1', '0', '0', '1396208166', '100', '0', '0', '0', '0', '1', '0', '1396209506', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('107', '53', 'dsd000107', '旅行包', '+', '0', '0', '', '0', '0.000', '600.00', '500.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/107_thumb_G_1396208223183.jpg', 'images/201403/goods_img/107_G_1396208223739.jpg', 'images/201403/source_img/107_G_1396208223233.jpg', '1', '', '1', '1', '0', '0', '1396208223', '100', '0', '0', '0', '0', '0', '0', '1396208223', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('108', '51', 'dsd000108', '120g*5农心辣白菜五连包 ', '+', '0', '29', '', '0', '0.000', '23.76', '19.80', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/108_thumb_G_1396208274652.jpg', 'images/201403/goods_img/108_G_1396208274387.jpg', 'images/201403/source_img/108_G_1396208274173.jpg', '1', '', '1', '1', '0', '0', '1396208227', '100', '0', '0', '0', '0', '0', '0', '1396208274', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('109', '53', 'dsd000109', '旅行包', '+', '0', '0', '', '0', '0.000', '312.00', '260.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/109_thumb_G_1396208282305.jpg', 'images/201403/goods_img/109_G_1396208282154.jpg', 'images/201403/source_img/109_G_1396208282051.jpg', '1', '', '1', '1', '0', '0', '1396208282', '100', '0', '0', '0', '0', '0', '0', '1396208282', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('110', '51', 'dsd000110', '120g*5农心乌龙面', '+', '0', '29', '', '0', '0.000', '24.96', '20.80', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/110_thumb_G_1396208361120.jpg', 'images/201403/goods_img/110_G_1396208361392.jpg', 'images/201403/source_img/110_G_1396208361321.jpg', '1', '', '1', '1', '0', '0', '1396208361', '100', '0', '0', '0', '0', '0', '0', '1396208361', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('111', '55', 'dsd000111', '240g好时黑巧克力家庭装 ', '+', '0', '30', '', '0', '0.000', '48.00', '40.00', '38.00', '1396166400', '1398326400', '0', '', '', '', 'images/201403/thumb_img/111_thumb_G_1396208495463.jpg', 'images/201403/goods_img/111_G_1396208495740.jpg', 'images/201403/source_img/111_G_1396208495515.jpg', '1', '', '1', '1', '0', '0', '1396208495', '100', '0', '0', '0', '0', '1', '0', '1396209483', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('112', '55', 'dsd000112', '240g好时曲奇奶香白巧克力 ', '+', '0', '30', '', '0', '0.000', '48.00', '40.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/112_thumb_G_1396208545474.jpg', 'images/201403/goods_img/112_G_1396208545572.jpg', 'images/201403/source_img/112_G_1396208545968.jpg', '1', '', '1', '1', '0', '0', '1396208545', '100', '0', '0', '0', '0', '0', '0', '1396208545', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('113', '27', 'dsd000113', '金莱克', '+', '0', '33', '', '0', '0.000', '456.00', '380.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/113_thumb_G_1396208551628.jpg', 'images/201403/goods_img/113_G_1396208551078.jpg', 'images/201403/source_img/113_G_1396208551563.jpg', '1', '', '1', '1', '0', '0', '1396208551', '100', '0', '1', '0', '0', '0', '0', '1396209367', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('114', '27', 'dsd000114', '李宁', '+', '2', '31', '', '0', '0.000', '540.00', '450.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/114_thumb_G_1396208578955.jpg', 'images/201403/goods_img/114_G_1396208578144.jpg', 'images/201403/source_img/114_G_1396208578265.jpg', '1', '', '1', '1', '0', '0', '1396208578', '100', '0', '0', '0', '1', '0', '0', '1396209366', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('115', '55', 'dsd000115', '100g好时精选巧克力礼盒(牛奶巧克力) ', '+', '0', '30', '', '0', '0.000', '48.00', '40.00', '38.00', '1396166400', '1397203200', '0', '', '', '', 'images/201403/thumb_img/115_thumb_G_1396208593275.jpg', 'images/201403/goods_img/115_G_1396208593096.jpg', 'images/201403/source_img/115_G_1396208593736.jpg', '1', '', '1', '1', '0', '0', '1396208593', '100', '0', '0', '1', '0', '1', '0', '1396209465', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('116', '27', 'dsd000116', '耐克', '+', '0', '31', '', '0', '0.000', '432.00', '360.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/116_thumb_G_1396208602103.jpg', 'images/201403/goods_img/116_G_1396208602526.jpg', 'images/201403/source_img/116_G_1396208602731.jpg', '1', '', '1', '1', '0', '0', '1396208602', '100', '0', '1', '0', '0', '0', '0', '1396209365', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('117', '27', 'dsd000117', '运动鞋', '+', '0', '0', '', '0', '0.000', '150.00', '0.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/117_thumb_G_1396208633212.jpg', 'images/201403/goods_img/117_G_1396208633532.jpg', 'images/201403/source_img/117_G_1396208633544.jpg', '1', '', '1', '1', '0', '0', '1396208633', '100', '0', '0', '1', '0', '0', '0', '1396209364', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('118', '55', 'dsd000118', '216g德芙脆香米（碗装） ', '+', '0', '34', '', '0', '0.000', '0.00', '0.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/118_thumb_G_1396208651139.jpg', 'images/201403/goods_img/118_G_1396208651177.jpg', 'images/201403/source_img/118_G_1396208651210.jpg', '1', '', '1', '1', '0', '0', '1396208651', '100', '0', '0', '0', '1', '0', '0', '1396209364', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('119', '55', 'dsd000119', '  135g德芙m&ms逗趣礼盒 [花生] ', '+', '3', '34', '', '0', '0.000', '45.60', '38.00', '35.00', '1396166400', '1397462400', '0', '', '', '', 'images/201403/thumb_img/119_thumb_G_1396208697963.jpg', 'images/201403/goods_img/119_G_1396208697487.jpg', 'images/201403/source_img/119_G_1396208697635.jpg', '1', '', '1', '1', '0', '0', '1396208697', '100', '0', '1', '0', '1', '1', '0', '1398382473', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('120', '56', 'dsd000120', '200g雨润肉枣 餐桌特色食品 腊味小香肠 腊枣 ', '+', '0', '34', '', '0', '0.000', '32.40', '27.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/120_thumb_G_1396208789802.jpg', 'images/201403/goods_img/120_G_1396208789153.jpg', 'images/201403/source_img/120_G_1396208789686.jpg', '1', '', '1', '1', '0', '0', '1396208789', '100', '0', '0', '1', '0', '0', '0', '1396209363', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('121', '29', 'dsd000121', '户外鞋', '+', '0', '0', '', '0', '0.000', '312.00', '260.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/121_thumb_G_1396208953228.jpg', 'images/201403/goods_img/121_G_1396208953811.jpg', 'images/201403/source_img/121_G_1396208953935.jpg', '1', '', '1', '1', '0', '0', '1396208953', '100', '0', '0', '0', '1', '0', '0', '1396209362', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('122', '29', 'dsd000122', '冲锋衣', '+', '0', '0', '', '0', '0.000', '432.00', '360.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/122_thumb_G_1396208973477.jpg', 'images/201403/goods_img/122_G_1396208973987.jpg', 'images/201403/source_img/122_G_1396208973090.jpg', '1', '', '1', '1', '0', '0', '1396208973', '100', '0', '0', '1', '0', '0', '0', '1396209361', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('123', '29', 'dsd000123', '木林森户外鞋', '+', '0', '36', '', '0', '0.000', '540.00', '450.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/123_thumb_G_1396209007293.jpg', 'images/201403/goods_img/123_G_1396209007256.jpg', 'images/201403/source_img/123_G_1396209007325.jpg', '1', '', '1', '1', '0', '0', '1396209007', '100', '0', '1', '0', '0', '0', '0', '1396209361', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('124', '29', 'dsd000124', '防水户外服装', '+', '0', '0', '', '0', '0.000', '0.00', '0.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/124_thumb_G_1396209072261.jpg', 'images/201403/goods_img/124_G_1396209072259.jpg', 'images/201403/source_img/124_G_1396209072349.jpg', '1', '', '1', '1', '0', '0', '1396209072', '100', '0', '0', '1', '0', '0', '0', '1396209360', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('125', '119', 'dsd000125', '运动服', '+', '0', '0', '', '0', '0.000', '220.00', '0.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/125_thumb_G_1396209311682.jpg', 'images/201403/goods_img/125_G_1396209311147.jpg', 'images/201403/source_img/125_G_1396209311061.jpg', '1', '', '1', '1', '0', '0', '1396209311', '100', '0', '0', '0', '1', '0', '0', '1398709865', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('126', '119', 'dsd000126', '运动服', '+', '0', '0', '', '0', '0.000', '360.00', '0.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/126_thumb_G_1396209328116.jpg', 'images/201403/goods_img/126_G_1396209328330.jpg', 'images/201403/source_img/126_G_1396209328800.jpg', '1', '', '1', '1', '0', '0', '1396209328', '100', '0', '0', '1', '0', '0', '0', '1398709854', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('127', '119', 'dsd000127', '运动服', '+', '1', '0', '', '0', '0.000', '400.00', '0.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/127_thumb_G_1396209343614.jpg', 'images/201403/goods_img/127_G_1396209343149.jpg', 'images/201403/source_img/127_G_1396209343668.jpg', '1', '', '1', '1', '0', '0', '1396209343', '100', '0', '1', '0', '0', '0', '0', '1398709836', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('128', '119', 'dsd000128', '运动包', '+', '2', '37', '', '0', '0.000', '576.00', '480.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/128_thumb_G_1396209400408.jpg', 'images/201403/goods_img/128_G_1396209400233.jpg', 'images/201403/source_img/128_G_1396209400463.jpg', '1', '', '1', '1', '0', '0', '1396209400', '100', '0', '0', '0', '0', '0', '0', '1398709824', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('129', '119', 'dsd000129', '运动包', '+', '0', '37', '', '0', '0.000', '504.00', '420.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/129_thumb_G_1396209416830.jpg', 'images/201403/goods_img/129_G_1396209416970.jpg', 'images/201403/source_img/129_G_1396209416710.jpg', '1', '', '1', '1', '0', '0', '1396209416', '100', '0', '0', '0', '0', '0', '0', '1398709815', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('130', '119', 'dsd000130', '运动包', '+', '4', '0', '', '0', '0.000', '144.00', '120.00', '0.00', '0', '0', '0', '', '', '', 'images/201403/thumb_img/130_thumb_G_1396209456972.jpg', 'images/201403/goods_img/130_G_1396209456191.jpg', 'images/201403/source_img/130_G_1396209456778.jpg', '1', '', '1', '1', '0', '0', '1396209456', '100', '0', '0', '0', '0', '0', '0', '1398709805', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('131', '7', 'dsd000131', '书包', '+', '5', '0', '', '0', '0.000', '30.00', '25.00', '19.90', '1398240000', '1414137600', '0', '', '', '', 'images/201404/thumb_img/131_thumb_G_1398369495233.jpg', 'images/201404/goods_img/131_G_1398369495813.jpg', 'images/201404/source_img/131_G_1398369495333.jpg', '1', '', '1', '1', '0', '0', '1398369495', '100', '1', '0', '0', '1', '1', '0', '1398377017', '0', '', '-1', '-1', '0', null);
INSERT INTO `sw_goods` VALUES ('132', '7', 'dsd000132', '珠宝', '+', '1', '23', '', '0', '0.000', '480.00', '400.00', '350.00', '1398326400', '1419408000', '0', '', '', '', 'images/201404/thumb_img/132_thumb_G_1398376067315.jpg', 'images/201404/goods_img/132_G_1398376067114.jpg', 'images/201404/source_img/132_G_1398376067879.jpg', '1', '', '1', '1', '0', '0', '1398376067', '100', '1', '0', '0', '1', '1', '0', '1398376684', '0', '', '-1', '-1', '0', null);

-- ----------------------------
-- Table structure for `sw_goods_activity`
-- ----------------------------
DROP TABLE IF EXISTS `sw_goods_activity`;
CREATE TABLE `sw_goods_activity` (
  `act_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `act_name` varchar(255) NOT NULL,
  `act_desc` text NOT NULL,
  `act_type` tinyint(3) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(255) NOT NULL,
  `start_time` int(10) unsigned NOT NULL,
  `end_time` int(10) unsigned NOT NULL,
  `is_finished` tinyint(3) unsigned NOT NULL,
  `ext_info` text NOT NULL,
  PRIMARY KEY (`act_id`),
  KEY `act_name` (`act_name`,`act_type`,`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_goods_activity
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_goods_article`
-- ----------------------------
DROP TABLE IF EXISTS `sw_goods_article`;
CREATE TABLE `sw_goods_article` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `article_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`,`article_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_goods_article
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_goods_attr`
-- ----------------------------
DROP TABLE IF EXISTS `sw_goods_attr`;
CREATE TABLE `sw_goods_attr` (
  `goods_attr_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attr_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `attr_value` text NOT NULL,
  `attr_price` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`goods_attr_id`),
  KEY `goods_id` (`goods_id`),
  KEY `attr_id` (`attr_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_goods_attr
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_goods_cat`
-- ----------------------------
DROP TABLE IF EXISTS `sw_goods_cat`;
CREATE TABLE `sw_goods_cat` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `cat_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`,`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_goods_cat
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_goods_gallery`
-- ----------------------------
DROP TABLE IF EXISTS `sw_goods_gallery`;
CREATE TABLE `sw_goods_gallery` (
  `img_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `img_url` varchar(255) NOT NULL DEFAULT '',
  `img_desc` varchar(255) NOT NULL DEFAULT '',
  `thumb_url` varchar(255) NOT NULL DEFAULT '',
  `img_original` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`img_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_goods_gallery
-- ----------------------------
INSERT INTO `sw_goods_gallery` VALUES ('1', '1', 'images/201403/goods_img/1_P_1396121018063.jpg', '', 'images/201403/thumb_img/1_thumb_P_1396121018467.jpg', 'images/201403/source_img/1_P_1396121017725.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('2', '2', 'images/201403/goods_img/2_P_1396204122054.jpg', '', 'images/201403/thumb_img/2_thumb_P_1396204122611.jpg', 'images/201403/source_img/2_P_1396204122191.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('3', '3', 'images/201403/goods_img/3_P_1396204245856.jpg', '', 'images/201403/thumb_img/3_thumb_P_1396204245229.jpg', 'images/201403/source_img/3_P_1396204245943.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('4', '4', 'images/201403/goods_img/4_P_1396204288551.jpg', '', 'images/201403/thumb_img/4_thumb_P_1396204288917.jpg', 'images/201403/source_img/4_P_1396204288501.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('5', '5', 'images/201403/goods_img/5_P_1396204317287.jpg', '', 'images/201403/thumb_img/5_thumb_P_1396204317545.jpg', 'images/201403/source_img/5_P_1396204317556.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('6', '6', 'images/201403/goods_img/6_P_1396204438477.jpg', '', 'images/201403/thumb_img/6_thumb_P_1396204438995.jpg', 'images/201403/source_img/6_P_1396204438501.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('7', '7', 'images/201403/goods_img/7_P_1396204465076.jpg', '', 'images/201403/thumb_img/7_thumb_P_1396204465386.jpg', 'images/201403/source_img/7_P_1396204465482.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('8', '8', 'images/201403/goods_img/8_P_1396204527734.jpg', '', 'images/201403/thumb_img/8_thumb_P_1396204527181.jpg', 'images/201403/source_img/8_P_1396204527849.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('9', '10', 'images/201403/goods_img/10_P_1396204648694.jpg', '', 'images/201403/thumb_img/10_thumb_P_1396204648435.jpg', 'images/201403/source_img/10_P_1396204648249.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('10', '11', 'images/201403/goods_img/11_P_1396204672506.jpg', '', 'images/201403/thumb_img/11_thumb_P_1396204672329.jpg', 'images/201403/source_img/11_P_1396204672164.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('11', '12', 'images/201403/goods_img/12_P_1396204747921.jpg', '', 'images/201403/thumb_img/12_thumb_P_1396204747570.jpg', 'images/201403/source_img/12_P_1396204747828.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('12', '14', 'images/201403/goods_img/14_P_1396204872566.jpg', '', 'images/201403/thumb_img/14_thumb_P_1396204872716.jpg', 'images/201403/source_img/14_P_1396204872530.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('13', '15', 'images/201403/goods_img/15_P_1396205038624.jpg', '', 'images/201403/thumb_img/15_thumb_P_1396205038592.jpg', 'images/201403/source_img/15_P_1396205038190.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('14', '18', 'images/201403/goods_img/18_P_1396205074683.jpg', '', 'images/201403/thumb_img/18_thumb_P_1396205074738.jpg', 'images/201403/source_img/18_P_1396205074229.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('15', '19', 'images/201403/goods_img/19_P_1396205102619.jpg', '', 'images/201403/thumb_img/19_thumb_P_1396205102996.jpg', 'images/201403/source_img/19_P_1396205102348.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('16', '20', 'images/201403/goods_img/20_P_1396205119759.jpg', '', 'images/201403/thumb_img/20_thumb_P_1396205119019.jpg', 'images/201403/source_img/20_P_1396205119408.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('17', '21', 'images/201403/goods_img/21_P_1396205164983.jpg', '', 'images/201403/thumb_img/21_thumb_P_1396205164749.jpg', 'images/201403/source_img/21_P_1396205163149.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('18', '22', 'images/201403/goods_img/22_P_1396205180920.jpg', '', 'images/201403/thumb_img/22_thumb_P_1396205180636.jpg', 'images/201403/source_img/22_P_1396205180090.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('19', '23', 'images/201403/goods_img/23_P_1396205195158.jpg', '', 'images/201403/thumb_img/23_thumb_P_1396205195251.jpg', 'images/201403/source_img/23_P_1396205195550.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('20', '24', 'images/201403/goods_img/24_P_1396205200566.jpg', '', 'images/201403/thumb_img/24_thumb_P_1396205200882.jpg', 'images/201403/source_img/24_P_1396205200513.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('21', '25', 'images/201403/goods_img/25_P_1396205265041.jpg', '', 'images/201403/thumb_img/25_thumb_P_1396205265532.jpg', 'images/201403/source_img/25_P_1396205265391.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('22', '26', 'images/201403/goods_img/26_P_1396205298396.jpg', '', 'images/201403/thumb_img/26_thumb_P_1396205298790.jpg', 'images/201403/source_img/26_P_1396205298593.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('23', '27', 'images/201403/goods_img/27_P_1396205377526.jpg', '', 'images/201403/thumb_img/27_thumb_P_1396205377308.jpg', 'images/201403/source_img/27_P_1396205377715.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('24', '28', 'images/201403/goods_img/28_P_1396205438469.jpg', '', 'images/201403/thumb_img/28_thumb_P_1396205438861.jpg', 'images/201403/source_img/28_P_1396205438605.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('25', '29', 'images/201403/goods_img/29_P_1396205481182.jpg', '', 'images/201403/thumb_img/29_thumb_P_1396205481139.jpg', 'images/201403/source_img/29_P_1396205480913.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('26', '30', 'images/201403/goods_img/30_P_1396205580357.jpg', '', 'images/201403/thumb_img/30_thumb_P_1396205580048.jpg', 'images/201403/source_img/30_P_1396205580385.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('27', '31', 'images/201403/goods_img/31_P_1396205655913.jpg', '', 'images/201403/thumb_img/31_thumb_P_1396205655814.jpg', 'images/201403/source_img/31_P_1396205655626.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('28', '32', 'images/201403/goods_img/32_P_1396205672313.jpg', '', 'images/201403/thumb_img/32_thumb_P_1396205672499.jpg', 'images/201403/source_img/32_P_1396205672930.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('29', '33', 'images/201403/goods_img/33_P_1396205688942.jpg', '', 'images/201403/thumb_img/33_thumb_P_1396205688719.jpg', 'images/201403/source_img/33_P_1396205688352.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('30', '34', 'images/201403/goods_img/34_P_1396205748074.jpg', '', 'images/201403/thumb_img/34_thumb_P_1396205748340.jpg', 'images/201403/source_img/34_P_1396205748598.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('31', '35', 'images/201403/goods_img/35_P_1396205778019.jpg', '', 'images/201403/thumb_img/35_thumb_P_1396205778096.jpg', 'images/201403/source_img/35_P_1396205777749.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('32', '34', 'images/201403/goods_img/34_P_1396205793807.jpg', '', 'images/201403/thumb_img/34_thumb_P_1396205793357.jpg', 'images/201403/source_img/34_P_1396205793941.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('33', '36', 'images/201403/goods_img/36_P_1396205803053.jpg', '', 'images/201403/thumb_img/36_thumb_P_1396205803701.jpg', 'images/201403/source_img/36_P_1396205803897.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('34', '37', 'images/201403/goods_img/37_P_1396205822651.jpg', '', 'images/201403/thumb_img/37_thumb_P_1396205822227.jpg', 'images/201403/source_img/37_P_1396205822423.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('35', '38', 'images/201403/goods_img/38_P_1396205869625.jpg', '', 'images/201403/thumb_img/38_thumb_P_1396205869465.jpg', 'images/201403/source_img/38_P_1396205869242.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('36', '39', 'images/201403/goods_img/39_P_1396205872787.jpg', '', 'images/201403/thumb_img/39_thumb_P_1396205872563.jpg', 'images/201403/source_img/39_P_1396205872296.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('37', '40', 'images/201403/goods_img/40_P_1396205898082.jpg', '', 'images/201403/thumb_img/40_thumb_P_1396205898463.jpg', 'images/201403/source_img/40_P_1396205897861.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('38', '41', 'images/201403/goods_img/41_P_1396205932213.jpg', '', 'images/201403/thumb_img/41_thumb_P_1396205932406.jpg', 'images/201403/source_img/41_P_1396205932819.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('39', '42', 'images/201403/goods_img/42_P_1396205961163.jpg', '', 'images/201403/thumb_img/42_thumb_P_1396205961796.jpg', 'images/201403/source_img/42_P_1396205961910.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('40', '43', 'images/201403/goods_img/43_P_1396205985606.jpg', '', 'images/201403/thumb_img/43_thumb_P_1396205985185.jpg', 'images/201403/source_img/43_P_1396205985847.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('41', '44', 'images/201403/goods_img/44_P_1396205999264.jpg', '', 'images/201403/thumb_img/44_thumb_P_1396205999046.jpg', 'images/201403/source_img/44_P_1396205999131.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('42', '45', 'images/201403/goods_img/45_P_1396206040094.jpg', '', 'images/201403/thumb_img/45_thumb_P_1396206040245.jpg', 'images/201403/source_img/45_P_1396206040249.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('43', '46', 'images/201403/goods_img/46_P_1396206132261.jpg', '', 'images/201403/thumb_img/46_thumb_P_1396206132436.jpg', 'images/201403/source_img/46_P_1396206132716.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('44', '47', 'images/201403/goods_img/47_P_1396206139393.jpg', '', 'images/201403/thumb_img/47_thumb_P_1396206139050.jpg', 'images/201403/source_img/47_P_1396206139260.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('45', '48', 'images/201403/goods_img/48_P_1396206170901.jpg', '', 'images/201403/thumb_img/48_thumb_P_1396206170680.jpg', 'images/201403/source_img/48_P_1396206170806.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('46', '49', 'images/201403/goods_img/49_P_1396206194708.jpg', '', 'images/201403/thumb_img/49_thumb_P_1396206194316.jpg', 'images/201403/source_img/49_P_1396206194422.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('47', '50', 'images/201403/goods_img/50_P_1396206202916.jpg', '', 'images/201403/thumb_img/50_thumb_P_1396206202104.jpg', 'images/201403/source_img/50_P_1396206202135.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('48', '51', 'images/201403/goods_img/51_P_1396206204908.jpg', '', 'images/201403/thumb_img/51_thumb_P_1396206204277.jpg', 'images/201403/source_img/51_P_1396206204488.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('49', '52', 'images/201403/goods_img/52_P_1396206218450.jpg', '', 'images/201403/thumb_img/52_thumb_P_1396206218812.jpg', 'images/201403/source_img/52_P_1396206218942.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('50', '53', 'images/201403/goods_img/53_P_1396206244813.jpg', '', 'images/201403/thumb_img/53_thumb_P_1396206244512.jpg', 'images/201403/source_img/53_P_1396206244316.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('51', '54', 'images/201403/goods_img/54_P_1396206266789.jpg', '', 'images/201403/thumb_img/54_thumb_P_1396206266003.jpg', 'images/201403/source_img/54_P_1396206266103.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('52', '55', 'images/201403/goods_img/55_P_1396206268409.jpg', '', 'images/201403/thumb_img/55_thumb_P_1396206268351.jpg', 'images/201403/source_img/55_P_1396206268651.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('53', '56', 'images/201403/goods_img/56_P_1396206294883.jpg', '', 'images/201403/thumb_img/56_thumb_P_1396206294834.jpg', 'images/201403/source_img/56_P_1396206294893.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('54', '57', 'images/201403/goods_img/57_P_1396206295143.jpg', '', 'images/201403/thumb_img/57_thumb_P_1396206295586.jpg', 'images/201403/source_img/57_P_1396206295478.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('55', '58', 'images/201403/goods_img/58_P_1396206316105.jpg', '', 'images/201403/thumb_img/58_thumb_P_1396206316249.jpg', 'images/201403/source_img/58_P_1396206316103.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('56', '59', 'images/201403/goods_img/59_P_1396206345371.jpg', '', 'images/201403/thumb_img/59_thumb_P_1396206345034.jpg', 'images/201403/source_img/59_P_1396206345156.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('57', '60', 'images/201403/goods_img/60_P_1396206368775.jpg', '', 'images/201403/thumb_img/60_thumb_P_1396206368789.jpg', 'images/201403/source_img/60_P_1396206368984.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('58', '61', 'images/201403/goods_img/61_P_1396206372618.jpg', '', 'images/201403/thumb_img/61_thumb_P_1396206372913.jpg', 'images/201403/source_img/61_P_1396206372228.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('59', '62', 'images/201403/goods_img/62_P_1396206406546.jpg', '', 'images/201403/thumb_img/62_thumb_P_1396206406382.jpg', 'images/201403/source_img/62_P_1396206406104.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('60', '63', 'images/201403/goods_img/63_P_1396206441577.jpg', '', 'images/201403/thumb_img/63_thumb_P_1396206441260.jpg', 'images/201403/source_img/63_P_1396206441344.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('61', '64', 'images/201403/goods_img/64_P_1396206453297.jpg', '', 'images/201403/thumb_img/64_thumb_P_1396206453814.jpg', 'images/201403/source_img/64_P_1396206453711.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('62', '65', 'images/201403/goods_img/65_P_1396206479921.jpg', '', 'images/201403/thumb_img/65_thumb_P_1396206479181.jpg', 'images/201403/source_img/65_P_1396206479628.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('63', '66', 'images/201403/goods_img/66_P_1396206501631.jpg', '', 'images/201403/thumb_img/66_thumb_P_1396206501522.jpg', 'images/201403/source_img/66_P_1396206501235.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('64', '67', 'images/201403/goods_img/67_P_1396206597794.jpg', '', 'images/201403/thumb_img/67_thumb_P_1396206597617.jpg', 'images/201403/source_img/67_P_1396206596150.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('65', '68', 'images/201403/goods_img/68_P_1396206603540.jpg', '', 'images/201403/thumb_img/68_thumb_P_1396206603475.jpg', 'images/201403/source_img/68_P_1396206603659.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('66', '69', 'images/201403/goods_img/69_P_1396206621165.jpg', '', 'images/201403/thumb_img/69_thumb_P_1396206621638.jpg', 'images/201403/source_img/69_P_1396206621199.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('67', '70', 'images/201403/goods_img/70_P_1396206642726.jpg', '', 'images/201403/thumb_img/70_thumb_P_1396206642673.jpg', 'images/201403/source_img/70_P_1396206642038.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('68', '71', 'images/201403/goods_img/71_P_1396206676687.jpg', '', 'images/201403/thumb_img/71_thumb_P_1396206676388.jpg', 'images/201403/source_img/71_P_1396206676262.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('69', '72', 'images/201403/goods_img/72_P_1396206691078.jpg', '', 'images/201403/thumb_img/72_thumb_P_1396206691128.jpg', 'images/201403/source_img/72_P_1396206691171.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('70', '73', 'images/201403/goods_img/73_P_1396206710710.jpg', '', 'images/201403/thumb_img/73_thumb_P_1396206710698.jpg', 'images/201403/source_img/73_P_1396206710396.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('71', '74', 'images/201403/goods_img/74_P_1396206736276.jpg', '', 'images/201403/thumb_img/74_thumb_P_1396206736282.jpg', 'images/201403/source_img/74_P_1396206735676.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('72', '75', 'images/201403/goods_img/75_P_1396206777482.jpg', '', 'images/201403/thumb_img/75_thumb_P_1396206777990.jpg', 'images/201403/source_img/75_P_1396206776662.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('73', '76', 'images/201403/goods_img/76_P_1396206809742.jpg', '', 'images/201403/thumb_img/76_thumb_P_1396206809107.jpg', 'images/201403/source_img/76_P_1396206809801.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('74', '77', 'images/201403/goods_img/77_P_1396206831867.jpg', '', 'images/201403/thumb_img/77_thumb_P_1396206831497.jpg', 'images/201403/source_img/77_P_1396206831910.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('75', '78', 'images/201403/goods_img/78_P_1396206843798.jpg', '', 'images/201403/thumb_img/78_thumb_P_1396206843271.jpg', 'images/201403/source_img/78_P_1396206843981.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('76', '79', 'images/201403/goods_img/79_P_1396206870538.jpg', '', 'images/201403/thumb_img/79_thumb_P_1396206870355.jpg', 'images/201403/source_img/79_P_1396206869645.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('77', '80', 'images/201403/goods_img/80_P_1396206917900.jpg', '', 'images/201403/thumb_img/80_thumb_P_1396206917497.jpg', 'images/201403/source_img/80_P_1396206917747.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('78', '81', 'images/201403/goods_img/81_P_1396206921984.jpg', '', 'images/201403/thumb_img/81_thumb_P_1396206921516.jpg', 'images/201403/source_img/81_P_1396206921540.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('79', '82', 'images/201403/goods_img/82_P_1396206948811.jpg', '', 'images/201403/thumb_img/82_thumb_P_1396206948873.jpg', 'images/201403/source_img/82_P_1396206948023.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('80', '83', 'images/201403/goods_img/83_P_1396206969466.jpg', '', 'images/201403/thumb_img/83_thumb_P_1396206969427.jpg', 'images/201403/source_img/83_P_1396206969237.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('81', '84', 'images/201403/goods_img/84_P_1396207052798.jpg', '', 'images/201403/thumb_img/84_thumb_P_1396207052124.jpg', 'images/201403/source_img/84_P_1396207052813.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('82', '85', 'images/201403/goods_img/85_P_1396207068239.jpg', '', 'images/201403/thumb_img/85_thumb_P_1396207068310.jpg', 'images/201403/source_img/85_P_1396207068939.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('83', '86', 'images/201403/goods_img/86_P_1396207095070.jpg', '', 'images/201403/thumb_img/86_thumb_P_1396207095185.jpg', 'images/201403/source_img/86_P_1396207095544.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('84', '87', 'images/201403/goods_img/87_P_1396207159568.jpg', '', 'images/201403/thumb_img/87_thumb_P_1396207159588.jpg', 'images/201403/source_img/87_P_1396207159637.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('85', '88', 'images/201403/goods_img/88_P_1396207183541.jpg', '', 'images/201403/thumb_img/88_thumb_P_1396207183208.jpg', 'images/201403/source_img/88_P_1396207183072.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('86', '89', 'images/201403/goods_img/89_P_1396207224876.jpg', '', 'images/201403/thumb_img/89_thumb_P_1396207224055.jpg', 'images/201403/source_img/89_P_1396207224834.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('87', '90', 'images/201403/goods_img/90_P_1396207634463.jpg', '', 'images/201403/thumb_img/90_thumb_P_1396207634153.jpg', 'images/201403/source_img/90_P_1396207634569.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('88', '91', 'images/201403/goods_img/91_P_1396207676348.jpg', '', 'images/201403/thumb_img/91_thumb_P_1396207676180.jpg', 'images/201403/source_img/91_P_1396207676666.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('89', '92', 'images/201403/goods_img/92_P_1396207677534.jpg', '', 'images/201403/thumb_img/92_thumb_P_1396207677014.jpg', 'images/201403/source_img/92_P_1396207677118.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('90', '93', 'images/201403/goods_img/93_P_1396207700557.jpg', '', 'images/201403/thumb_img/93_thumb_P_1396207700451.jpg', 'images/201403/source_img/93_P_1396207699424.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('91', '94', 'images/201403/goods_img/94_P_1396207733580.jpg', '', 'images/201403/thumb_img/94_thumb_P_1396207733323.jpg', 'images/201403/source_img/94_P_1396207733870.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('92', '95', 'images/201403/goods_img/95_P_1396207736128.jpg', '', 'images/201403/thumb_img/95_thumb_P_1396207736047.jpg', 'images/201403/source_img/95_P_1396207735268.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('93', '96', 'images/201403/goods_img/96_P_1396207764167.jpg', '', 'images/201403/thumb_img/96_thumb_P_1396207764610.jpg', 'images/201403/source_img/96_P_1396207764745.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('94', '97', 'images/201403/goods_img/97_P_1396207799689.jpg', '', 'images/201403/thumb_img/97_thumb_P_1396207800439.jpg', 'images/201403/source_img/97_P_1396207799325.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('95', '98', 'images/201403/goods_img/98_P_1396207865594.jpg', '', 'images/201403/thumb_img/98_thumb_P_1396207865072.jpg', 'images/201403/source_img/98_P_1396207865221.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('96', '99', 'images/201403/goods_img/99_P_1396207970386.jpg', '', 'images/201403/thumb_img/99_thumb_P_1396207970830.jpg', 'images/201403/source_img/99_P_1396207969560.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('97', '100', 'images/201403/goods_img/100_P_1396208052887.jpg', '', 'images/201403/thumb_img/100_thumb_P_1396208052356.jpg', 'images/201403/source_img/100_P_1396208052863.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('98', '101', 'images/201403/goods_img/101_P_1396208078184.jpg', '', 'images/201403/thumb_img/101_thumb_P_1396208078336.jpg', 'images/201403/source_img/101_P_1396208078737.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('99', '102', 'images/201403/goods_img/102_P_1396208094663.jpg', '', 'images/201403/thumb_img/102_thumb_P_1396208094069.jpg', 'images/201403/source_img/102_P_1396208093150.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('100', '103', 'images/201403/goods_img/103_P_1396208096720.jpg', '', 'images/201403/thumb_img/103_thumb_P_1396208096328.jpg', 'images/201403/source_img/103_P_1396208096468.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('101', '104', 'images/201403/goods_img/104_P_1396208108126.jpg', '', 'images/201403/thumb_img/104_thumb_P_1396208108676.jpg', 'images/201403/source_img/104_P_1396208107007.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('102', '105', 'images/201403/goods_img/105_P_1396208151412.jpg', '', 'images/201403/thumb_img/105_thumb_P_1396208151836.jpg', 'images/201403/source_img/105_P_1396208151663.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('103', '106', 'images/201403/goods_img/106_P_1396208166087.jpg', '', 'images/201403/thumb_img/106_thumb_P_1396208166297.jpg', 'images/201403/source_img/106_P_1396208166940.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('104', '107', 'images/201403/goods_img/107_P_1396208223794.jpg', '', 'images/201403/thumb_img/107_thumb_P_1396208223949.jpg', 'images/201403/source_img/107_P_1396208223853.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('105', '108', 'images/201403/goods_img/108_P_1396208227808.jpg', '', 'images/201403/thumb_img/108_thumb_P_1396208227402.jpg', 'images/201403/source_img/108_P_1396208227182.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('106', '108', 'images/201403/goods_img/108_P_1396208274307.jpg', '', 'images/201403/thumb_img/108_thumb_P_1396208274116.jpg', 'images/201403/source_img/108_P_1396208274252.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('107', '109', 'images/201403/goods_img/109_P_1396208282557.jpg', '', 'images/201403/thumb_img/109_thumb_P_1396208282266.jpg', 'images/201403/source_img/109_P_1396208282150.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('108', '110', 'images/201403/goods_img/110_P_1396208362205.jpg', '', 'images/201403/thumb_img/110_thumb_P_1396208362923.jpg', 'images/201403/source_img/110_P_1396208361085.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('109', '111', 'images/201403/goods_img/111_P_1396208495850.jpg', '', 'images/201403/thumb_img/111_thumb_P_1396208495403.jpg', 'images/201403/source_img/111_P_1396208495432.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('110', '112', 'images/201403/goods_img/112_P_1396208545582.jpg', '', 'images/201403/thumb_img/112_thumb_P_1396208545194.jpg', 'images/201403/source_img/112_P_1396208545799.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('111', '113', 'images/201403/goods_img/113_P_1396208551213.jpg', '', 'images/201403/thumb_img/113_thumb_P_1396208551135.jpg', 'images/201403/source_img/113_P_1396208551251.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('112', '114', 'images/201403/goods_img/114_P_1396208578793.jpg', '', 'images/201403/thumb_img/114_thumb_P_1396208578085.jpg', 'images/201403/source_img/114_P_1396208578762.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('113', '115', 'images/201403/goods_img/115_P_1396208593312.jpg', '', 'images/201403/thumb_img/115_thumb_P_1396208593274.jpg', 'images/201403/source_img/115_P_1396208593224.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('114', '116', 'images/201403/goods_img/116_P_1396208602701.jpg', '', 'images/201403/thumb_img/116_thumb_P_1396208602544.jpg', 'images/201403/source_img/116_P_1396208602759.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('115', '117', 'images/201403/goods_img/117_P_1396208634773.jpg', '', 'images/201403/thumb_img/117_thumb_P_1396208634874.jpg', 'images/201403/source_img/117_P_1396208633441.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('116', '118', 'images/201403/goods_img/118_P_1396208651863.jpg', '', 'images/201403/thumb_img/118_thumb_P_1396208651119.jpg', 'images/201403/source_img/118_P_1396208651666.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('117', '119', 'images/201403/goods_img/119_P_1396208697020.jpg', '', 'images/201403/thumb_img/119_thumb_P_1396208697309.jpg', 'images/201403/source_img/119_P_1396208697458.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('118', '120', 'images/201403/goods_img/120_P_1396208789704.jpg', '', 'images/201403/thumb_img/120_thumb_P_1396208789875.jpg', 'images/201403/source_img/120_P_1396208789594.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('119', '121', 'images/201403/goods_img/121_P_1396208953139.jpg', '', 'images/201403/thumb_img/121_thumb_P_1396208953433.jpg', 'images/201403/source_img/121_P_1396208953545.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('120', '122', 'images/201403/goods_img/122_P_1396208973753.jpg', '', 'images/201403/thumb_img/122_thumb_P_1396208973859.jpg', 'images/201403/source_img/122_P_1396208973567.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('121', '123', 'images/201403/goods_img/123_P_1396209007295.jpg', '', 'images/201403/thumb_img/123_thumb_P_1396209007335.jpg', 'images/201403/source_img/123_P_1396209007193.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('122', '124', 'images/201403/goods_img/124_P_1396209072775.jpg', '', 'images/201403/thumb_img/124_thumb_P_1396209072148.jpg', 'images/201403/source_img/124_P_1396209072835.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('123', '125', 'images/201403/goods_img/125_P_1396209311660.jpg', '', 'images/201403/thumb_img/125_thumb_P_1396209311212.jpg', 'images/201403/source_img/125_P_1396209311471.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('124', '126', 'images/201403/goods_img/126_P_1396209329718.jpg', '', 'images/201403/thumb_img/126_thumb_P_1396209329852.jpg', 'images/201403/source_img/126_P_1396209328008.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('125', '127', 'images/201403/goods_img/127_P_1396209343784.jpg', '', 'images/201403/thumb_img/127_thumb_P_1396209343304.jpg', 'images/201403/source_img/127_P_1396209343328.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('126', '128', 'images/201403/goods_img/128_P_1396209401689.jpg', '', 'images/201403/thumb_img/128_thumb_P_1396209401329.jpg', 'images/201403/source_img/128_P_1396209400061.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('127', '129', 'images/201403/goods_img/129_P_1396209416253.jpg', '', 'images/201403/thumb_img/129_thumb_P_1396209416318.jpg', 'images/201403/source_img/129_P_1396209416856.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('128', '130', 'images/201403/goods_img/130_P_1396209456900.jpg', '', 'images/201403/thumb_img/130_thumb_P_1396209456272.jpg', 'images/201403/source_img/130_P_1396209456468.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('129', '131', 'images/201404/goods_img/131_P_1398369495646.jpg', '', 'images/201404/thumb_img/131_thumb_P_1398369495549.jpg', 'images/201404/source_img/131_P_1398369495267.jpg');
INSERT INTO `sw_goods_gallery` VALUES ('130', '132', 'images/201404/goods_img/132_P_1398376068799.jpg', '', 'images/201404/thumb_img/132_thumb_P_1398376068791.jpg', 'images/201404/source_img/132_P_1398376067712.jpg');

-- ----------------------------
-- Table structure for `sw_goods_type`
-- ----------------------------
DROP TABLE IF EXISTS `sw_goods_type`;
CREATE TABLE `sw_goods_type` (
  `cat_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(60) NOT NULL DEFAULT '',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `attr_group` varchar(255) NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_goods_type
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_group_goods`
-- ----------------------------
DROP TABLE IF EXISTS `sw_group_goods`;
CREATE TABLE `sw_group_goods` (
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_price` decimal(10,2) unsigned NOT NULL DEFAULT '0.00',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`parent_id`,`goods_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_group_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_keywords`
-- ----------------------------
DROP TABLE IF EXISTS `sw_keywords`;
CREATE TABLE `sw_keywords` (
  `date` date NOT NULL DEFAULT '0000-00-00',
  `searchengine` varchar(20) NOT NULL DEFAULT '',
  `keyword` varchar(90) NOT NULL DEFAULT '',
  `count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`date`,`searchengine`,`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_keywords
-- ----------------------------
INSERT INTO `sw_keywords` VALUES ('2014-03-29', 'ecshop', '厨卫清洁', '1');
INSERT INTO `sw_keywords` VALUES ('2014-04-25', 'ecshop', '厨卫清洁', '1');
INSERT INTO `sw_keywords` VALUES ('2014-04-25', 'ecshop', '纸', '1');
INSERT INTO `sw_keywords` VALUES ('2014-04-25', 'ecshop', '手机', '1');
INSERT INTO `sw_keywords` VALUES ('2014-04-25', 'ecshop', 'apple', '2');
INSERT INTO `sw_keywords` VALUES ('2014-04-25', 'ecshop', '衣服', '2');
INSERT INTO `sw_keywords` VALUES ('2014-04-25', 'ecshop', '运动', '1');

-- ----------------------------
-- Table structure for `sw_link_goods`
-- ----------------------------
DROP TABLE IF EXISTS `sw_link_goods`;
CREATE TABLE `sw_link_goods` (
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `link_goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_double` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`goods_id`,`link_goods_id`,`admin_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_link_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_mail_templates`
-- ----------------------------
DROP TABLE IF EXISTS `sw_mail_templates`;
CREATE TABLE `sw_mail_templates` (
  `template_id` tinyint(1) unsigned NOT NULL AUTO_INCREMENT,
  `template_code` varchar(30) NOT NULL DEFAULT '',
  `is_html` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `template_subject` varchar(200) NOT NULL DEFAULT '',
  `template_content` text NOT NULL,
  `last_modify` int(10) unsigned NOT NULL DEFAULT '0',
  `last_send` int(10) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `template_code` (`template_code`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_mail_templates
-- ----------------------------
INSERT INTO `sw_mail_templates` VALUES ('1', 'send_password', '1', '密码找回', '{$user_name}您好！<br>\n<br>\n您已经进行了密码重置的操作，请点击以下链接(或者复制到您的浏览器):<br>\n<br>\n<a href=\"{$reset_email}\" target=\"_blank\">{$reset_email}</a><br>\n<br>\n以确认您的新密码重置操作！<br>\n<br>\n{$shop_name}<br>\n{$send_date}', '1194824789', '0', 'template');
INSERT INTO `sw_mail_templates` VALUES ('2', 'order_confirm', '0', '订单确认通知', '亲爱的{$order.consignee}，你好！ \n\n我们已经收到您于 {$order.formated_add_time} 提交的订单，该订单编号为：{$order.order_sn} 请记住这个编号以便日后的查询。\n\n{$shop_name}\n{$sent_date}\n\n\n', '1158226370', '0', 'template');
INSERT INTO `sw_mail_templates` VALUES ('3', 'deliver_notice', '1', '发货通知', '亲爱的{$order.consignee}。你好！</br></br>\n\n您的订单{$order.order_sn}已于{$send_time}按照您预定的配送方式给您发货了。</br>\n</br>\n{if $order.invoice_no}发货单号是{$order.invoice_no}。</br>{/if}\n</br>\n在您收到货物之后请点击下面的链接确认您已经收到货物：</br>\n<a href=\"{$confirm_url}\" target=\"_blank\">{$confirm_url}</a></br></br>\n如果您还没有收到货物可以点击以下链接给我们留言：</br></br>\n<a href=\"{$send_msg_url}\" target=\"_blank\">{$send_msg_url}</a></br>\n<br>\n再次感谢您对我们的支持。欢迎您的再次光临。 <br>\n<br>\n{$shop_name} </br>\n{$send_date}', '1194823291', '0', 'template');
INSERT INTO `sw_mail_templates` VALUES ('4', 'order_cancel', '0', '订单取消', '亲爱的{$order.consignee}，你好！ \n\n您的编号为：{$order.order_sn}的订单已取消。\n\n{$shop_name}\n{$send_date}', '1156491130', '0', 'template');
INSERT INTO `sw_mail_templates` VALUES ('5', 'order_invalid', '0', '订单无效', '亲爱的{$order.consignee}，你好！\n\n您的编号为：{$order.order_sn}的订单无效。\n\n{$shop_name}\n{$send_date}', '1156491164', '0', 'template');
INSERT INTO `sw_mail_templates` VALUES ('6', 'send_bonus', '0', '发红包', '亲爱的{$user_name}您好！\n\n恭喜您获得了{$count}个红包，金额{if $count > 1}分别{/if}为{$money}\n\n{$shop_name}\n{$send_date}\n', '1156491184', '0', 'template');
INSERT INTO `sw_mail_templates` VALUES ('7', 'group_buy', '1', '团购商品', '亲爱的{$consignee}，您好！<br>\n<br>\n您于{$order_time}在本店参加团购商品活动，所购买的商品名称为：{$goods_name}，数量：{$goods_number}，订单号为：{$order_sn}，订单金额为：{$order_amount}<br>\n<br>\n此团购商品现在已到结束日期，并达到最低价格，您现在可以对该订单付款。<br>\n<br>\n请点击下面的链接：<br>\n<a href=\"{$shop_url}\" target=\"_blank\">{$shop_url}</a><br>\n<br>\n请尽快登录到用户中心，查看您的订单详情信息。 <br>\n<br>\n{$shop_name} <br>\n<br>\n{$send_date}', '1194824668', '0', 'template');
INSERT INTO `sw_mail_templates` VALUES ('8', 'register_validate', '1', '邮件验证', '{$user_name}您好！<br><br>\r\n\r\n这封邮件是 {$shop_name} 发送的。你收到这封邮件是为了验证你注册邮件地址是否有效。如果您已经通过验证了，请忽略这封邮件。<br>\r\n请点击以下链接(或者复制到您的浏览器)来验证你的邮件地址:<br>\r\n<a href=\"{$validate_email}\" target=\"_blank\">{$validate_email}</a><br><br>\r\n\r\n{$shop_name}<br>\r\n{$send_date}', '1162201031', '0', 'template');
INSERT INTO `sw_mail_templates` VALUES ('9', 'virtual_card', '0', '虚拟卡片', '亲爱的{$order.consignee}\r\n你好！您的订单{$order.order_sn}中{$goods.goods_name} 商品的详细信息如下:\r\n{foreach from=$virtual_card item=card}\r\n{if $card.card_sn}卡号：{$card.card_sn}{/if}{if $card.card_password}卡片密码：{$card.card_password}{/if}{if $card.end_date}截至日期：{$card.end_date}{/if}\r\n{/foreach}\r\n再次感谢您对我们的支持。欢迎您的再次光临。\r\n\r\n{$shop_name} \r\n{$send_date}', '1162201031', '0', 'template');
INSERT INTO `sw_mail_templates` VALUES ('10', 'attention_list', '0', '关注商品', '亲爱的{$user_name}您好~\n\n您关注的商品 : {$goods_name} 最近已经更新,请您查看最新的商品信息\n\n{$goods_url}\r\n\r\n{$shop_name} \r\n{$send_date}', '1183851073', '0', 'template');
INSERT INTO `sw_mail_templates` VALUES ('11', 'remind_of_new_order', '0', '新订单通知', '亲爱的店长，您好：\n   快来看看吧，又有新订单了。\n    订单号:{$order.order_sn} \n 订单金额:{$order.order_amount}，\n 用户购买商品:{foreach from=$goods_list item=goods_data}{$goods_data.goods_name}(货号:{$goods_data.goods_sn})    {/foreach} \n\n 收货人:{$order.consignee}， \n 收货人地址:{$order.address}，\n 收货人电话:{$order.tel} {$order.mobile}, \n 配送方式:{$order.shipping_name}(费用:{$order.shipping_fee}), \n 付款方式:{$order.pay_name}(费用:{$order.pay_fee})。\n\n               系统提醒\n               {$send_date}', '1196239170', '0', 'template');
INSERT INTO `sw_mail_templates` VALUES ('12', 'goods_booking', '1', '缺货回复', '亲爱的{$user_name}。你好！</br></br>{$dispose_note}</br></br>您提交的缺货商品链接为</br></br><a href=\"{$goods_link}\" target=\"_blank\">{$goods_name}</a></br><br>{$shop_name} </br>{$send_date}', '0', '0', 'template');
INSERT INTO `sw_mail_templates` VALUES ('13', 'user_message', '1', '留言回复', '亲爱的{$user_name}。你好！</br></br>对您的留言：</br>{$message_content}</br></br>店主作了如下回复：</br>{$message_note}</br></br>您可以随时回到店中和店主继续沟通。</br>{$shop_name}</br>{$send_date}', '0', '0', 'template');
INSERT INTO `sw_mail_templates` VALUES ('14', 'recomment', '1', '用户评论回复', '亲爱的{$user_name}。你好！</br></br>对您的评论：</br>“{$comment}”</br></br>店主作了如下回复：</br>“{$recomment}”</br></br>您可以随时回到店中和店主继续沟通。</br>{$shop_name}</br>{$send_date}', '0', '0', 'template');

-- ----------------------------
-- Table structure for `sw_member_price`
-- ----------------------------
DROP TABLE IF EXISTS `sw_member_price`;
CREATE TABLE `sw_member_price` (
  `price_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_rank` tinyint(3) NOT NULL DEFAULT '0',
  `user_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`price_id`),
  KEY `goods_id` (`goods_id`,`user_rank`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_member_price
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_nav`
-- ----------------------------
DROP TABLE IF EXISTS `sw_nav`;
CREATE TABLE `sw_nav` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `ctype` varchar(10) DEFAULT NULL,
  `cid` smallint(5) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `ifshow` tinyint(1) NOT NULL,
  `vieworder` tinyint(1) NOT NULL,
  `opennew` tinyint(1) NOT NULL,
  `url` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `ifshow` (`ifshow`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_nav
-- ----------------------------
INSERT INTO `sw_nav` VALUES ('1', null, null, '产品展示', '1', '1', '0', 'search.php', 'middle');
INSERT INTO `sw_nav` VALUES ('2', null, null, '推荐产品', '1', '2', '0', 'search-best.html', 'middle');
INSERT INTO `sw_nav` VALUES ('3', null, null, '限时抢购', '1', '3', '0', 'search-promotion.html', 'middle');
INSERT INTO `sw_nav` VALUES ('4', 'a', '4', '商城资讯', '1', '4', '0', 'article_cat-4.html', 'middle');
INSERT INTO `sw_nav` VALUES ('5', 'a', '5', '经销商展区', '1', '6', '0', 'article_cat-5.html', 'middle');
INSERT INTO `sw_nav` VALUES ('6', null, null, '盛得佳帮购', '1', '1', '0', 'index.php', 'bottom');
INSERT INTO `sw_nav` VALUES ('7', null, null, '关于我们', '1', '2', '0', '#', 'bottom');
INSERT INTO `sw_nav` VALUES ('8', null, null, '联系我们', '1', '3', '0', '#', 'bottom');
INSERT INTO `sw_nav` VALUES ('9', null, null, '友情链接', '1', '4', '0', '#', 'bottom');
INSERT INTO `sw_nav` VALUES ('10', null, null, '报货平台', '1', '1', '0', '#', 'top');
INSERT INTO `sw_nav` VALUES ('11', null, null, '客户服务', '1', '2', '0', '#', 'top');
INSERT INTO `sw_nav` VALUES ('12', null, null, '帮助中心', '1', '3', '0', '#', 'top');
INSERT INTO `sw_nav` VALUES ('13', '', '0', '联系我们', '1', '5', '0', 'category.php', 'middle');

-- ----------------------------
-- Table structure for `sw_order_action`
-- ----------------------------
DROP TABLE IF EXISTS `sw_order_action`;
CREATE TABLE `sw_order_action` (
  `action_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `action_user` varchar(30) NOT NULL DEFAULT '',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `action_place` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `action_note` varchar(255) NOT NULL DEFAULT '',
  `log_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`action_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_order_action
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_order_goods`
-- ----------------------------
DROP TABLE IF EXISTS `sw_order_goods`;
CREATE TABLE `sw_order_goods` (
  `rec_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_name` varchar(120) NOT NULL DEFAULT '',
  `goods_sn` varchar(60) NOT NULL DEFAULT '',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '1',
  `market_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `goods_attr` text NOT NULL,
  `send_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_real` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_gift` smallint(5) unsigned NOT NULL DEFAULT '0',
  `goods_attr_id` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`rec_id`),
  KEY `order_id` (`order_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_order_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_order_info`
-- ----------------------------
DROP TABLE IF EXISTS `sw_order_info`;
CREATE TABLE `sw_order_info` (
  `order_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `order_sn` varchar(20) NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) unsigned NOT NULL DEFAULT '0',
  `province` smallint(5) unsigned NOT NULL DEFAULT '0',
  `city` smallint(5) unsigned NOT NULL DEFAULT '0',
  `district` smallint(5) unsigned NOT NULL DEFAULT '0',
  `address` varchar(255) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `best_time` varchar(120) NOT NULL DEFAULT '',
  `sign_building` varchar(120) NOT NULL DEFAULT '',
  `postscript` varchar(255) NOT NULL DEFAULT '',
  `shipping_id` tinyint(3) NOT NULL DEFAULT '0',
  `shipping_name` varchar(120) NOT NULL DEFAULT '',
  `pay_id` tinyint(3) NOT NULL DEFAULT '0',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `how_oos` varchar(120) NOT NULL DEFAULT '',
  `how_surplus` varchar(120) NOT NULL DEFAULT '',
  `pack_name` varchar(120) NOT NULL DEFAULT '',
  `card_name` varchar(120) NOT NULL DEFAULT '',
  `card_message` varchar(255) NOT NULL DEFAULT '',
  `inv_payee` varchar(120) NOT NULL DEFAULT '',
  `inv_content` varchar(120) NOT NULL DEFAULT '',
  `goods_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `shipping_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `insure_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pack_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `card_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `money_paid` decimal(10,2) NOT NULL DEFAULT '0.00',
  `surplus` decimal(10,2) NOT NULL DEFAULT '0.00',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `integral_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bonus` decimal(10,2) NOT NULL DEFAULT '0.00',
  `order_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `from_ad` smallint(5) NOT NULL DEFAULT '0',
  `referer` varchar(255) NOT NULL DEFAULT '',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `confirm_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pay_time` int(10) unsigned NOT NULL DEFAULT '0',
  `shipping_time` int(10) unsigned NOT NULL DEFAULT '0',
  `pack_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `card_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonus_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `invoice_no` varchar(255) NOT NULL DEFAULT '',
  `extension_code` varchar(30) NOT NULL DEFAULT '',
  `extension_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `to_buyer` varchar(255) NOT NULL DEFAULT '',
  `pay_note` varchar(255) NOT NULL DEFAULT '',
  `agency_id` smallint(5) unsigned NOT NULL,
  `inv_type` varchar(60) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `is_separate` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `discount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_sn` (`order_sn`),
  KEY `user_id` (`user_id`),
  KEY `order_status` (`order_status`),
  KEY `shipping_status` (`shipping_status`),
  KEY `pay_status` (`pay_status`),
  KEY `shipping_id` (`shipping_id`),
  KEY `pay_id` (`pay_id`),
  KEY `extension_code` (`extension_code`,`extension_id`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_order_info
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_pack`
-- ----------------------------
DROP TABLE IF EXISTS `sw_pack`;
CREATE TABLE `sw_pack` (
  `pack_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pack_name` varchar(120) NOT NULL DEFAULT '',
  `pack_img` varchar(255) NOT NULL DEFAULT '',
  `pack_fee` decimal(6,2) unsigned NOT NULL DEFAULT '0.00',
  `free_money` smallint(5) unsigned NOT NULL DEFAULT '0',
  `pack_desc` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`pack_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_pack
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_package_goods`
-- ----------------------------
DROP TABLE IF EXISTS `sw_package_goods`;
CREATE TABLE `sw_package_goods` (
  `package_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `product_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_number` smallint(5) unsigned NOT NULL DEFAULT '1',
  `admin_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`package_id`,`goods_id`,`admin_id`,`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_package_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_payment`
-- ----------------------------
DROP TABLE IF EXISTS `sw_payment`;
CREATE TABLE `sw_payment` (
  `pay_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `pay_code` varchar(20) NOT NULL DEFAULT '',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `pay_fee` varchar(10) NOT NULL DEFAULT '0',
  `pay_desc` text NOT NULL,
  `pay_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pay_config` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pay_id`),
  UNIQUE KEY `pay_code` (`pay_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_payment
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_pay_log`
-- ----------------------------
DROP TABLE IF EXISTS `sw_pay_log`;
CREATE TABLE `sw_pay_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `order_amount` decimal(10,2) unsigned NOT NULL,
  `order_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_paid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_pay_log
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_plugins`
-- ----------------------------
DROP TABLE IF EXISTS `sw_plugins`;
CREATE TABLE `sw_plugins` (
  `code` varchar(30) NOT NULL DEFAULT '',
  `version` varchar(10) NOT NULL DEFAULT '',
  `library` varchar(255) NOT NULL DEFAULT '',
  `assign` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `install_date` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_plugins
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_products`
-- ----------------------------
DROP TABLE IF EXISTS `sw_products`;
CREATE TABLE `sw_products` (
  `product_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_attr` varchar(50) DEFAULT NULL,
  `product_sn` varchar(60) DEFAULT NULL,
  `product_number` smallint(5) unsigned DEFAULT '0',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_products
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_region`
-- ----------------------------
DROP TABLE IF EXISTS `sw_region`;
CREATE TABLE `sw_region` (
  `region_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `region_name` varchar(120) NOT NULL DEFAULT '',
  `region_type` tinyint(1) NOT NULL DEFAULT '2',
  `agency_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`region_id`),
  KEY `parent_id` (`parent_id`),
  KEY `region_type` (`region_type`),
  KEY `agency_id` (`agency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3409 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_region
-- ----------------------------
INSERT INTO `sw_region` VALUES ('1', '0', '中国', '0', '0');
INSERT INTO `sw_region` VALUES ('2', '1', '北京', '1', '0');
INSERT INTO `sw_region` VALUES ('3', '1', '安徽', '1', '0');
INSERT INTO `sw_region` VALUES ('4', '1', '福建', '1', '0');
INSERT INTO `sw_region` VALUES ('5', '1', '甘肃', '1', '0');
INSERT INTO `sw_region` VALUES ('6', '1', '广东', '1', '0');
INSERT INTO `sw_region` VALUES ('7', '1', '广西', '1', '0');
INSERT INTO `sw_region` VALUES ('8', '1', '贵州', '1', '0');
INSERT INTO `sw_region` VALUES ('9', '1', '海南', '1', '0');
INSERT INTO `sw_region` VALUES ('10', '1', '河北', '1', '0');
INSERT INTO `sw_region` VALUES ('11', '1', '河南', '1', '0');
INSERT INTO `sw_region` VALUES ('12', '1', '黑龙江', '1', '0');
INSERT INTO `sw_region` VALUES ('13', '1', '湖北', '1', '0');
INSERT INTO `sw_region` VALUES ('14', '1', '湖南', '1', '0');
INSERT INTO `sw_region` VALUES ('15', '1', '吉林', '1', '0');
INSERT INTO `sw_region` VALUES ('16', '1', '江苏', '1', '0');
INSERT INTO `sw_region` VALUES ('17', '1', '江西', '1', '0');
INSERT INTO `sw_region` VALUES ('18', '1', '辽宁', '1', '0');
INSERT INTO `sw_region` VALUES ('19', '1', '内蒙古', '1', '0');
INSERT INTO `sw_region` VALUES ('20', '1', '宁夏', '1', '0');
INSERT INTO `sw_region` VALUES ('21', '1', '青海', '1', '0');
INSERT INTO `sw_region` VALUES ('22', '1', '山东', '1', '0');
INSERT INTO `sw_region` VALUES ('23', '1', '山西', '1', '0');
INSERT INTO `sw_region` VALUES ('24', '1', '陕西', '1', '0');
INSERT INTO `sw_region` VALUES ('25', '1', '上海', '1', '0');
INSERT INTO `sw_region` VALUES ('26', '1', '四川', '1', '0');
INSERT INTO `sw_region` VALUES ('27', '1', '天津', '1', '0');
INSERT INTO `sw_region` VALUES ('28', '1', '西藏', '1', '0');
INSERT INTO `sw_region` VALUES ('29', '1', '新疆', '1', '0');
INSERT INTO `sw_region` VALUES ('30', '1', '云南', '1', '0');
INSERT INTO `sw_region` VALUES ('31', '1', '浙江', '1', '0');
INSERT INTO `sw_region` VALUES ('32', '1', '重庆', '1', '0');
INSERT INTO `sw_region` VALUES ('33', '1', '香港', '1', '0');
INSERT INTO `sw_region` VALUES ('34', '1', '澳门', '1', '0');
INSERT INTO `sw_region` VALUES ('35', '1', '台湾', '1', '0');
INSERT INTO `sw_region` VALUES ('36', '3', '安庆', '2', '0');
INSERT INTO `sw_region` VALUES ('37', '3', '蚌埠', '2', '0');
INSERT INTO `sw_region` VALUES ('38', '3', '巢湖', '2', '0');
INSERT INTO `sw_region` VALUES ('39', '3', '池州', '2', '0');
INSERT INTO `sw_region` VALUES ('40', '3', '滁州', '2', '0');
INSERT INTO `sw_region` VALUES ('41', '3', '阜阳', '2', '0');
INSERT INTO `sw_region` VALUES ('42', '3', '淮北', '2', '0');
INSERT INTO `sw_region` VALUES ('43', '3', '淮南', '2', '0');
INSERT INTO `sw_region` VALUES ('44', '3', '黄山', '2', '0');
INSERT INTO `sw_region` VALUES ('45', '3', '六安', '2', '0');
INSERT INTO `sw_region` VALUES ('46', '3', '马鞍山', '2', '0');
INSERT INTO `sw_region` VALUES ('47', '3', '宿州', '2', '0');
INSERT INTO `sw_region` VALUES ('48', '3', '铜陵', '2', '0');
INSERT INTO `sw_region` VALUES ('49', '3', '芜湖', '2', '0');
INSERT INTO `sw_region` VALUES ('50', '3', '宣城', '2', '0');
INSERT INTO `sw_region` VALUES ('51', '3', '亳州', '2', '0');
INSERT INTO `sw_region` VALUES ('52', '2', '北京', '2', '0');
INSERT INTO `sw_region` VALUES ('53', '4', '福州', '2', '0');
INSERT INTO `sw_region` VALUES ('54', '4', '龙岩', '2', '0');
INSERT INTO `sw_region` VALUES ('55', '4', '南平', '2', '0');
INSERT INTO `sw_region` VALUES ('56', '4', '宁德', '2', '0');
INSERT INTO `sw_region` VALUES ('57', '4', '莆田', '2', '0');
INSERT INTO `sw_region` VALUES ('58', '4', '泉州', '2', '0');
INSERT INTO `sw_region` VALUES ('59', '4', '三明', '2', '0');
INSERT INTO `sw_region` VALUES ('60', '4', '厦门', '2', '0');
INSERT INTO `sw_region` VALUES ('61', '4', '漳州', '2', '0');
INSERT INTO `sw_region` VALUES ('62', '5', '兰州', '2', '0');
INSERT INTO `sw_region` VALUES ('63', '5', '白银', '2', '0');
INSERT INTO `sw_region` VALUES ('64', '5', '定西', '2', '0');
INSERT INTO `sw_region` VALUES ('65', '5', '甘南', '2', '0');
INSERT INTO `sw_region` VALUES ('66', '5', '嘉峪关', '2', '0');
INSERT INTO `sw_region` VALUES ('67', '5', '金昌', '2', '0');
INSERT INTO `sw_region` VALUES ('68', '5', '酒泉', '2', '0');
INSERT INTO `sw_region` VALUES ('69', '5', '临夏', '2', '0');
INSERT INTO `sw_region` VALUES ('70', '5', '陇南', '2', '0');
INSERT INTO `sw_region` VALUES ('71', '5', '平凉', '2', '0');
INSERT INTO `sw_region` VALUES ('72', '5', '庆阳', '2', '0');
INSERT INTO `sw_region` VALUES ('73', '5', '天水', '2', '0');
INSERT INTO `sw_region` VALUES ('74', '5', '武威', '2', '0');
INSERT INTO `sw_region` VALUES ('75', '5', '张掖', '2', '0');
INSERT INTO `sw_region` VALUES ('76', '6', '广州', '2', '0');
INSERT INTO `sw_region` VALUES ('77', '6', '深圳', '2', '0');
INSERT INTO `sw_region` VALUES ('78', '6', '潮州', '2', '0');
INSERT INTO `sw_region` VALUES ('79', '6', '东莞', '2', '0');
INSERT INTO `sw_region` VALUES ('80', '6', '佛山', '2', '0');
INSERT INTO `sw_region` VALUES ('81', '6', '河源', '2', '0');
INSERT INTO `sw_region` VALUES ('82', '6', '惠州', '2', '0');
INSERT INTO `sw_region` VALUES ('83', '6', '江门', '2', '0');
INSERT INTO `sw_region` VALUES ('84', '6', '揭阳', '2', '0');
INSERT INTO `sw_region` VALUES ('85', '6', '茂名', '2', '0');
INSERT INTO `sw_region` VALUES ('86', '6', '梅州', '2', '0');
INSERT INTO `sw_region` VALUES ('87', '6', '清远', '2', '0');
INSERT INTO `sw_region` VALUES ('88', '6', '汕头', '2', '0');
INSERT INTO `sw_region` VALUES ('89', '6', '汕尾', '2', '0');
INSERT INTO `sw_region` VALUES ('90', '6', '韶关', '2', '0');
INSERT INTO `sw_region` VALUES ('91', '6', '阳江', '2', '0');
INSERT INTO `sw_region` VALUES ('92', '6', '云浮', '2', '0');
INSERT INTO `sw_region` VALUES ('93', '6', '湛江', '2', '0');
INSERT INTO `sw_region` VALUES ('94', '6', '肇庆', '2', '0');
INSERT INTO `sw_region` VALUES ('95', '6', '中山', '2', '0');
INSERT INTO `sw_region` VALUES ('96', '6', '珠海', '2', '0');
INSERT INTO `sw_region` VALUES ('97', '7', '南宁', '2', '0');
INSERT INTO `sw_region` VALUES ('98', '7', '桂林', '2', '0');
INSERT INTO `sw_region` VALUES ('99', '7', '百色', '2', '0');
INSERT INTO `sw_region` VALUES ('100', '7', '北海', '2', '0');
INSERT INTO `sw_region` VALUES ('101', '7', '崇左', '2', '0');
INSERT INTO `sw_region` VALUES ('102', '7', '防城港', '2', '0');
INSERT INTO `sw_region` VALUES ('103', '7', '贵港', '2', '0');
INSERT INTO `sw_region` VALUES ('104', '7', '河池', '2', '0');
INSERT INTO `sw_region` VALUES ('105', '7', '贺州', '2', '0');
INSERT INTO `sw_region` VALUES ('106', '7', '来宾', '2', '0');
INSERT INTO `sw_region` VALUES ('107', '7', '柳州', '2', '0');
INSERT INTO `sw_region` VALUES ('108', '7', '钦州', '2', '0');
INSERT INTO `sw_region` VALUES ('109', '7', '梧州', '2', '0');
INSERT INTO `sw_region` VALUES ('110', '7', '玉林', '2', '0');
INSERT INTO `sw_region` VALUES ('111', '8', '贵阳', '2', '0');
INSERT INTO `sw_region` VALUES ('112', '8', '安顺', '2', '0');
INSERT INTO `sw_region` VALUES ('113', '8', '毕节', '2', '0');
INSERT INTO `sw_region` VALUES ('114', '8', '六盘水', '2', '0');
INSERT INTO `sw_region` VALUES ('115', '8', '黔东南', '2', '0');
INSERT INTO `sw_region` VALUES ('116', '8', '黔南', '2', '0');
INSERT INTO `sw_region` VALUES ('117', '8', '黔西南', '2', '0');
INSERT INTO `sw_region` VALUES ('118', '8', '铜仁', '2', '0');
INSERT INTO `sw_region` VALUES ('119', '8', '遵义', '2', '0');
INSERT INTO `sw_region` VALUES ('120', '9', '海口', '2', '0');
INSERT INTO `sw_region` VALUES ('121', '9', '三亚', '2', '0');
INSERT INTO `sw_region` VALUES ('122', '9', '白沙', '2', '0');
INSERT INTO `sw_region` VALUES ('123', '9', '保亭', '2', '0');
INSERT INTO `sw_region` VALUES ('124', '9', '昌江', '2', '0');
INSERT INTO `sw_region` VALUES ('125', '9', '澄迈县', '2', '0');
INSERT INTO `sw_region` VALUES ('126', '9', '定安县', '2', '0');
INSERT INTO `sw_region` VALUES ('127', '9', '东方', '2', '0');
INSERT INTO `sw_region` VALUES ('128', '9', '乐东', '2', '0');
INSERT INTO `sw_region` VALUES ('129', '9', '临高县', '2', '0');
INSERT INTO `sw_region` VALUES ('130', '9', '陵水', '2', '0');
INSERT INTO `sw_region` VALUES ('131', '9', '琼海', '2', '0');
INSERT INTO `sw_region` VALUES ('132', '9', '琼中', '2', '0');
INSERT INTO `sw_region` VALUES ('133', '9', '屯昌县', '2', '0');
INSERT INTO `sw_region` VALUES ('134', '9', '万宁', '2', '0');
INSERT INTO `sw_region` VALUES ('135', '9', '文昌', '2', '0');
INSERT INTO `sw_region` VALUES ('136', '9', '五指山', '2', '0');
INSERT INTO `sw_region` VALUES ('137', '9', '儋州', '2', '0');
INSERT INTO `sw_region` VALUES ('138', '10', '石家庄', '2', '0');
INSERT INTO `sw_region` VALUES ('139', '10', '保定', '2', '0');
INSERT INTO `sw_region` VALUES ('140', '10', '沧州', '2', '0');
INSERT INTO `sw_region` VALUES ('141', '10', '承德', '2', '0');
INSERT INTO `sw_region` VALUES ('142', '10', '邯郸', '2', '0');
INSERT INTO `sw_region` VALUES ('143', '10', '衡水', '2', '0');
INSERT INTO `sw_region` VALUES ('144', '10', '廊坊', '2', '0');
INSERT INTO `sw_region` VALUES ('145', '10', '秦皇岛', '2', '0');
INSERT INTO `sw_region` VALUES ('146', '10', '唐山', '2', '0');
INSERT INTO `sw_region` VALUES ('147', '10', '邢台', '2', '0');
INSERT INTO `sw_region` VALUES ('148', '10', '张家口', '2', '0');
INSERT INTO `sw_region` VALUES ('149', '11', '郑州', '2', '0');
INSERT INTO `sw_region` VALUES ('150', '11', '洛阳', '2', '0');
INSERT INTO `sw_region` VALUES ('151', '11', '开封', '2', '0');
INSERT INTO `sw_region` VALUES ('152', '11', '安阳', '2', '0');
INSERT INTO `sw_region` VALUES ('153', '11', '鹤壁', '2', '0');
INSERT INTO `sw_region` VALUES ('154', '11', '济源', '2', '0');
INSERT INTO `sw_region` VALUES ('155', '11', '焦作', '2', '0');
INSERT INTO `sw_region` VALUES ('156', '11', '南阳', '2', '0');
INSERT INTO `sw_region` VALUES ('157', '11', '平顶山', '2', '0');
INSERT INTO `sw_region` VALUES ('158', '11', '三门峡', '2', '0');
INSERT INTO `sw_region` VALUES ('159', '11', '商丘', '2', '0');
INSERT INTO `sw_region` VALUES ('160', '11', '新乡', '2', '0');
INSERT INTO `sw_region` VALUES ('161', '11', '信阳', '2', '0');
INSERT INTO `sw_region` VALUES ('162', '11', '许昌', '2', '0');
INSERT INTO `sw_region` VALUES ('163', '11', '周口', '2', '0');
INSERT INTO `sw_region` VALUES ('164', '11', '驻马店', '2', '0');
INSERT INTO `sw_region` VALUES ('165', '11', '漯河', '2', '0');
INSERT INTO `sw_region` VALUES ('166', '11', '濮阳', '2', '0');
INSERT INTO `sw_region` VALUES ('167', '12', '哈尔滨', '2', '0');
INSERT INTO `sw_region` VALUES ('168', '12', '大庆', '2', '0');
INSERT INTO `sw_region` VALUES ('169', '12', '大兴安岭', '2', '0');
INSERT INTO `sw_region` VALUES ('170', '12', '鹤岗', '2', '0');
INSERT INTO `sw_region` VALUES ('171', '12', '黑河', '2', '0');
INSERT INTO `sw_region` VALUES ('172', '12', '鸡西', '2', '0');
INSERT INTO `sw_region` VALUES ('173', '12', '佳木斯', '2', '0');
INSERT INTO `sw_region` VALUES ('174', '12', '牡丹江', '2', '0');
INSERT INTO `sw_region` VALUES ('175', '12', '七台河', '2', '0');
INSERT INTO `sw_region` VALUES ('176', '12', '齐齐哈尔', '2', '0');
INSERT INTO `sw_region` VALUES ('177', '12', '双鸭山', '2', '0');
INSERT INTO `sw_region` VALUES ('178', '12', '绥化', '2', '0');
INSERT INTO `sw_region` VALUES ('179', '12', '伊春', '2', '0');
INSERT INTO `sw_region` VALUES ('180', '13', '武汉', '2', '0');
INSERT INTO `sw_region` VALUES ('181', '13', '仙桃', '2', '0');
INSERT INTO `sw_region` VALUES ('182', '13', '鄂州', '2', '0');
INSERT INTO `sw_region` VALUES ('183', '13', '黄冈', '2', '0');
INSERT INTO `sw_region` VALUES ('184', '13', '黄石', '2', '0');
INSERT INTO `sw_region` VALUES ('185', '13', '荆门', '2', '0');
INSERT INTO `sw_region` VALUES ('186', '13', '荆州', '2', '0');
INSERT INTO `sw_region` VALUES ('187', '13', '潜江', '2', '0');
INSERT INTO `sw_region` VALUES ('188', '13', '神农架林区', '2', '0');
INSERT INTO `sw_region` VALUES ('189', '13', '十堰', '2', '0');
INSERT INTO `sw_region` VALUES ('190', '13', '随州', '2', '0');
INSERT INTO `sw_region` VALUES ('191', '13', '天门', '2', '0');
INSERT INTO `sw_region` VALUES ('192', '13', '咸宁', '2', '0');
INSERT INTO `sw_region` VALUES ('193', '13', '襄樊', '2', '0');
INSERT INTO `sw_region` VALUES ('194', '13', '孝感', '2', '0');
INSERT INTO `sw_region` VALUES ('195', '13', '宜昌', '2', '0');
INSERT INTO `sw_region` VALUES ('196', '13', '恩施', '2', '0');
INSERT INTO `sw_region` VALUES ('197', '14', '长沙', '2', '0');
INSERT INTO `sw_region` VALUES ('198', '14', '张家界', '2', '0');
INSERT INTO `sw_region` VALUES ('199', '14', '常德', '2', '0');
INSERT INTO `sw_region` VALUES ('200', '14', '郴州', '2', '0');
INSERT INTO `sw_region` VALUES ('201', '14', '衡阳', '2', '0');
INSERT INTO `sw_region` VALUES ('202', '14', '怀化', '2', '0');
INSERT INTO `sw_region` VALUES ('203', '14', '娄底', '2', '0');
INSERT INTO `sw_region` VALUES ('204', '14', '邵阳', '2', '0');
INSERT INTO `sw_region` VALUES ('205', '14', '湘潭', '2', '0');
INSERT INTO `sw_region` VALUES ('206', '14', '湘西', '2', '0');
INSERT INTO `sw_region` VALUES ('207', '14', '益阳', '2', '0');
INSERT INTO `sw_region` VALUES ('208', '14', '永州', '2', '0');
INSERT INTO `sw_region` VALUES ('209', '14', '岳阳', '2', '0');
INSERT INTO `sw_region` VALUES ('210', '14', '株洲', '2', '0');
INSERT INTO `sw_region` VALUES ('211', '15', '长春', '2', '0');
INSERT INTO `sw_region` VALUES ('212', '15', '吉林', '2', '0');
INSERT INTO `sw_region` VALUES ('213', '15', '白城', '2', '0');
INSERT INTO `sw_region` VALUES ('214', '15', '白山', '2', '0');
INSERT INTO `sw_region` VALUES ('215', '15', '辽源', '2', '0');
INSERT INTO `sw_region` VALUES ('216', '15', '四平', '2', '0');
INSERT INTO `sw_region` VALUES ('217', '15', '松原', '2', '0');
INSERT INTO `sw_region` VALUES ('218', '15', '通化', '2', '0');
INSERT INTO `sw_region` VALUES ('219', '15', '延边', '2', '0');
INSERT INTO `sw_region` VALUES ('220', '16', '南京', '2', '0');
INSERT INTO `sw_region` VALUES ('221', '16', '苏州', '2', '0');
INSERT INTO `sw_region` VALUES ('222', '16', '无锡', '2', '0');
INSERT INTO `sw_region` VALUES ('223', '16', '常州', '2', '0');
INSERT INTO `sw_region` VALUES ('224', '16', '淮安', '2', '0');
INSERT INTO `sw_region` VALUES ('225', '16', '连云港', '2', '0');
INSERT INTO `sw_region` VALUES ('226', '16', '南通', '2', '0');
INSERT INTO `sw_region` VALUES ('227', '16', '宿迁', '2', '0');
INSERT INTO `sw_region` VALUES ('228', '16', '泰州', '2', '0');
INSERT INTO `sw_region` VALUES ('229', '16', '徐州', '2', '0');
INSERT INTO `sw_region` VALUES ('230', '16', '盐城', '2', '0');
INSERT INTO `sw_region` VALUES ('231', '16', '扬州', '2', '0');
INSERT INTO `sw_region` VALUES ('232', '16', '镇江', '2', '0');
INSERT INTO `sw_region` VALUES ('233', '17', '南昌', '2', '0');
INSERT INTO `sw_region` VALUES ('234', '17', '抚州', '2', '0');
INSERT INTO `sw_region` VALUES ('235', '17', '赣州', '2', '0');
INSERT INTO `sw_region` VALUES ('236', '17', '吉安', '2', '0');
INSERT INTO `sw_region` VALUES ('237', '17', '景德镇', '2', '0');
INSERT INTO `sw_region` VALUES ('238', '17', '九江', '2', '0');
INSERT INTO `sw_region` VALUES ('239', '17', '萍乡', '2', '0');
INSERT INTO `sw_region` VALUES ('240', '17', '上饶', '2', '0');
INSERT INTO `sw_region` VALUES ('241', '17', '新余', '2', '0');
INSERT INTO `sw_region` VALUES ('242', '17', '宜春', '2', '0');
INSERT INTO `sw_region` VALUES ('243', '17', '鹰潭', '2', '0');
INSERT INTO `sw_region` VALUES ('244', '18', '沈阳', '2', '0');
INSERT INTO `sw_region` VALUES ('245', '18', '大连', '2', '0');
INSERT INTO `sw_region` VALUES ('246', '18', '鞍山', '2', '0');
INSERT INTO `sw_region` VALUES ('247', '18', '本溪', '2', '0');
INSERT INTO `sw_region` VALUES ('248', '18', '朝阳', '2', '0');
INSERT INTO `sw_region` VALUES ('249', '18', '丹东', '2', '0');
INSERT INTO `sw_region` VALUES ('250', '18', '抚顺', '2', '0');
INSERT INTO `sw_region` VALUES ('251', '18', '阜新', '2', '0');
INSERT INTO `sw_region` VALUES ('252', '18', '葫芦岛', '2', '0');
INSERT INTO `sw_region` VALUES ('253', '18', '锦州', '2', '0');
INSERT INTO `sw_region` VALUES ('254', '18', '辽阳', '2', '0');
INSERT INTO `sw_region` VALUES ('255', '18', '盘锦', '2', '0');
INSERT INTO `sw_region` VALUES ('256', '18', '铁岭', '2', '0');
INSERT INTO `sw_region` VALUES ('257', '18', '营口', '2', '0');
INSERT INTO `sw_region` VALUES ('258', '19', '呼和浩特', '2', '0');
INSERT INTO `sw_region` VALUES ('259', '19', '阿拉善盟', '2', '0');
INSERT INTO `sw_region` VALUES ('260', '19', '巴彦淖尔盟', '2', '0');
INSERT INTO `sw_region` VALUES ('261', '19', '包头', '2', '0');
INSERT INTO `sw_region` VALUES ('262', '19', '赤峰', '2', '0');
INSERT INTO `sw_region` VALUES ('263', '19', '鄂尔多斯', '2', '0');
INSERT INTO `sw_region` VALUES ('264', '19', '呼伦贝尔', '2', '0');
INSERT INTO `sw_region` VALUES ('265', '19', '通辽', '2', '0');
INSERT INTO `sw_region` VALUES ('266', '19', '乌海', '2', '0');
INSERT INTO `sw_region` VALUES ('267', '19', '乌兰察布市', '2', '0');
INSERT INTO `sw_region` VALUES ('268', '19', '锡林郭勒盟', '2', '0');
INSERT INTO `sw_region` VALUES ('269', '19', '兴安盟', '2', '0');
INSERT INTO `sw_region` VALUES ('270', '20', '银川', '2', '0');
INSERT INTO `sw_region` VALUES ('271', '20', '固原', '2', '0');
INSERT INTO `sw_region` VALUES ('272', '20', '石嘴山', '2', '0');
INSERT INTO `sw_region` VALUES ('273', '20', '吴忠', '2', '0');
INSERT INTO `sw_region` VALUES ('274', '20', '中卫', '2', '0');
INSERT INTO `sw_region` VALUES ('275', '21', '西宁', '2', '0');
INSERT INTO `sw_region` VALUES ('276', '21', '果洛', '2', '0');
INSERT INTO `sw_region` VALUES ('277', '21', '海北', '2', '0');
INSERT INTO `sw_region` VALUES ('278', '21', '海东', '2', '0');
INSERT INTO `sw_region` VALUES ('279', '21', '海南', '2', '0');
INSERT INTO `sw_region` VALUES ('280', '21', '海西', '2', '0');
INSERT INTO `sw_region` VALUES ('281', '21', '黄南', '2', '0');
INSERT INTO `sw_region` VALUES ('282', '21', '玉树', '2', '0');
INSERT INTO `sw_region` VALUES ('283', '22', '济南', '2', '0');
INSERT INTO `sw_region` VALUES ('284', '22', '青岛', '2', '0');
INSERT INTO `sw_region` VALUES ('285', '22', '滨州', '2', '0');
INSERT INTO `sw_region` VALUES ('286', '22', '德州', '2', '0');
INSERT INTO `sw_region` VALUES ('287', '22', '东营', '2', '0');
INSERT INTO `sw_region` VALUES ('288', '22', '菏泽', '2', '0');
INSERT INTO `sw_region` VALUES ('289', '22', '济宁', '2', '0');
INSERT INTO `sw_region` VALUES ('290', '22', '莱芜', '2', '0');
INSERT INTO `sw_region` VALUES ('291', '22', '聊城', '2', '0');
INSERT INTO `sw_region` VALUES ('292', '22', '临沂', '2', '0');
INSERT INTO `sw_region` VALUES ('293', '22', '日照', '2', '0');
INSERT INTO `sw_region` VALUES ('294', '22', '泰安', '2', '0');
INSERT INTO `sw_region` VALUES ('295', '22', '威海', '2', '0');
INSERT INTO `sw_region` VALUES ('296', '22', '潍坊', '2', '0');
INSERT INTO `sw_region` VALUES ('297', '22', '烟台', '2', '0');
INSERT INTO `sw_region` VALUES ('298', '22', '枣庄', '2', '0');
INSERT INTO `sw_region` VALUES ('299', '22', '淄博', '2', '0');
INSERT INTO `sw_region` VALUES ('300', '23', '太原', '2', '0');
INSERT INTO `sw_region` VALUES ('301', '23', '长治', '2', '0');
INSERT INTO `sw_region` VALUES ('302', '23', '大同', '2', '0');
INSERT INTO `sw_region` VALUES ('303', '23', '晋城', '2', '0');
INSERT INTO `sw_region` VALUES ('304', '23', '晋中', '2', '0');
INSERT INTO `sw_region` VALUES ('305', '23', '临汾', '2', '0');
INSERT INTO `sw_region` VALUES ('306', '23', '吕梁', '2', '0');
INSERT INTO `sw_region` VALUES ('307', '23', '朔州', '2', '0');
INSERT INTO `sw_region` VALUES ('308', '23', '忻州', '2', '0');
INSERT INTO `sw_region` VALUES ('309', '23', '阳泉', '2', '0');
INSERT INTO `sw_region` VALUES ('310', '23', '运城', '2', '0');
INSERT INTO `sw_region` VALUES ('311', '24', '西安', '2', '0');
INSERT INTO `sw_region` VALUES ('312', '24', '安康', '2', '0');
INSERT INTO `sw_region` VALUES ('313', '24', '宝鸡', '2', '0');
INSERT INTO `sw_region` VALUES ('314', '24', '汉中', '2', '0');
INSERT INTO `sw_region` VALUES ('315', '24', '商洛', '2', '0');
INSERT INTO `sw_region` VALUES ('316', '24', '铜川', '2', '0');
INSERT INTO `sw_region` VALUES ('317', '24', '渭南', '2', '0');
INSERT INTO `sw_region` VALUES ('318', '24', '咸阳', '2', '0');
INSERT INTO `sw_region` VALUES ('319', '24', '延安', '2', '0');
INSERT INTO `sw_region` VALUES ('320', '24', '榆林', '2', '0');
INSERT INTO `sw_region` VALUES ('321', '25', '上海', '2', '0');
INSERT INTO `sw_region` VALUES ('322', '26', '成都', '2', '0');
INSERT INTO `sw_region` VALUES ('323', '26', '绵阳', '2', '0');
INSERT INTO `sw_region` VALUES ('324', '26', '阿坝', '2', '0');
INSERT INTO `sw_region` VALUES ('325', '26', '巴中', '2', '0');
INSERT INTO `sw_region` VALUES ('326', '26', '达州', '2', '0');
INSERT INTO `sw_region` VALUES ('327', '26', '德阳', '2', '0');
INSERT INTO `sw_region` VALUES ('328', '26', '甘孜', '2', '0');
INSERT INTO `sw_region` VALUES ('329', '26', '广安', '2', '0');
INSERT INTO `sw_region` VALUES ('330', '26', '广元', '2', '0');
INSERT INTO `sw_region` VALUES ('331', '26', '乐山', '2', '0');
INSERT INTO `sw_region` VALUES ('332', '26', '凉山', '2', '0');
INSERT INTO `sw_region` VALUES ('333', '26', '眉山', '2', '0');
INSERT INTO `sw_region` VALUES ('334', '26', '南充', '2', '0');
INSERT INTO `sw_region` VALUES ('335', '26', '内江', '2', '0');
INSERT INTO `sw_region` VALUES ('336', '26', '攀枝花', '2', '0');
INSERT INTO `sw_region` VALUES ('337', '26', '遂宁', '2', '0');
INSERT INTO `sw_region` VALUES ('338', '26', '雅安', '2', '0');
INSERT INTO `sw_region` VALUES ('339', '26', '宜宾', '2', '0');
INSERT INTO `sw_region` VALUES ('340', '26', '资阳', '2', '0');
INSERT INTO `sw_region` VALUES ('341', '26', '自贡', '2', '0');
INSERT INTO `sw_region` VALUES ('342', '26', '泸州', '2', '0');
INSERT INTO `sw_region` VALUES ('343', '27', '天津', '2', '0');
INSERT INTO `sw_region` VALUES ('344', '28', '拉萨', '2', '0');
INSERT INTO `sw_region` VALUES ('345', '28', '阿里', '2', '0');
INSERT INTO `sw_region` VALUES ('346', '28', '昌都', '2', '0');
INSERT INTO `sw_region` VALUES ('347', '28', '林芝', '2', '0');
INSERT INTO `sw_region` VALUES ('348', '28', '那曲', '2', '0');
INSERT INTO `sw_region` VALUES ('349', '28', '日喀则', '2', '0');
INSERT INTO `sw_region` VALUES ('350', '28', '山南', '2', '0');
INSERT INTO `sw_region` VALUES ('351', '29', '乌鲁木齐', '2', '0');
INSERT INTO `sw_region` VALUES ('352', '29', '阿克苏', '2', '0');
INSERT INTO `sw_region` VALUES ('353', '29', '阿拉尔', '2', '0');
INSERT INTO `sw_region` VALUES ('354', '29', '巴音郭楞', '2', '0');
INSERT INTO `sw_region` VALUES ('355', '29', '博尔塔拉', '2', '0');
INSERT INTO `sw_region` VALUES ('356', '29', '昌吉', '2', '0');
INSERT INTO `sw_region` VALUES ('357', '29', '哈密', '2', '0');
INSERT INTO `sw_region` VALUES ('358', '29', '和田', '2', '0');
INSERT INTO `sw_region` VALUES ('359', '29', '喀什', '2', '0');
INSERT INTO `sw_region` VALUES ('360', '29', '克拉玛依', '2', '0');
INSERT INTO `sw_region` VALUES ('361', '29', '克孜勒苏', '2', '0');
INSERT INTO `sw_region` VALUES ('362', '29', '石河子', '2', '0');
INSERT INTO `sw_region` VALUES ('363', '29', '图木舒克', '2', '0');
INSERT INTO `sw_region` VALUES ('364', '29', '吐鲁番', '2', '0');
INSERT INTO `sw_region` VALUES ('365', '29', '五家渠', '2', '0');
INSERT INTO `sw_region` VALUES ('366', '29', '伊犁', '2', '0');
INSERT INTO `sw_region` VALUES ('367', '30', '昆明', '2', '0');
INSERT INTO `sw_region` VALUES ('368', '30', '怒江', '2', '0');
INSERT INTO `sw_region` VALUES ('369', '30', '普洱', '2', '0');
INSERT INTO `sw_region` VALUES ('370', '30', '丽江', '2', '0');
INSERT INTO `sw_region` VALUES ('371', '30', '保山', '2', '0');
INSERT INTO `sw_region` VALUES ('372', '30', '楚雄', '2', '0');
INSERT INTO `sw_region` VALUES ('373', '30', '大理', '2', '0');
INSERT INTO `sw_region` VALUES ('374', '30', '德宏', '2', '0');
INSERT INTO `sw_region` VALUES ('375', '30', '迪庆', '2', '0');
INSERT INTO `sw_region` VALUES ('376', '30', '红河', '2', '0');
INSERT INTO `sw_region` VALUES ('377', '30', '临沧', '2', '0');
INSERT INTO `sw_region` VALUES ('378', '30', '曲靖', '2', '0');
INSERT INTO `sw_region` VALUES ('379', '30', '文山', '2', '0');
INSERT INTO `sw_region` VALUES ('380', '30', '西双版纳', '2', '0');
INSERT INTO `sw_region` VALUES ('381', '30', '玉溪', '2', '0');
INSERT INTO `sw_region` VALUES ('382', '30', '昭通', '2', '0');
INSERT INTO `sw_region` VALUES ('383', '31', '杭州', '2', '0');
INSERT INTO `sw_region` VALUES ('384', '31', '湖州', '2', '0');
INSERT INTO `sw_region` VALUES ('385', '31', '嘉兴', '2', '0');
INSERT INTO `sw_region` VALUES ('386', '31', '金华', '2', '0');
INSERT INTO `sw_region` VALUES ('387', '31', '丽水', '2', '0');
INSERT INTO `sw_region` VALUES ('388', '31', '宁波', '2', '0');
INSERT INTO `sw_region` VALUES ('389', '31', '绍兴', '2', '0');
INSERT INTO `sw_region` VALUES ('390', '31', '台州', '2', '0');
INSERT INTO `sw_region` VALUES ('391', '31', '温州', '2', '0');
INSERT INTO `sw_region` VALUES ('392', '31', '舟山', '2', '0');
INSERT INTO `sw_region` VALUES ('393', '31', '衢州', '2', '0');
INSERT INTO `sw_region` VALUES ('394', '32', '重庆', '2', '0');
INSERT INTO `sw_region` VALUES ('395', '33', '香港', '2', '0');
INSERT INTO `sw_region` VALUES ('396', '34', '澳门', '2', '0');
INSERT INTO `sw_region` VALUES ('397', '35', '台湾', '2', '0');
INSERT INTO `sw_region` VALUES ('398', '36', '迎江区', '3', '0');
INSERT INTO `sw_region` VALUES ('399', '36', '大观区', '3', '0');
INSERT INTO `sw_region` VALUES ('400', '36', '宜秀区', '3', '0');
INSERT INTO `sw_region` VALUES ('401', '36', '桐城市', '3', '0');
INSERT INTO `sw_region` VALUES ('402', '36', '怀宁县', '3', '0');
INSERT INTO `sw_region` VALUES ('403', '36', '枞阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('404', '36', '潜山县', '3', '0');
INSERT INTO `sw_region` VALUES ('405', '36', '太湖县', '3', '0');
INSERT INTO `sw_region` VALUES ('406', '36', '宿松县', '3', '0');
INSERT INTO `sw_region` VALUES ('407', '36', '望江县', '3', '0');
INSERT INTO `sw_region` VALUES ('408', '36', '岳西县', '3', '0');
INSERT INTO `sw_region` VALUES ('409', '37', '中市区', '3', '0');
INSERT INTO `sw_region` VALUES ('410', '37', '东市区', '3', '0');
INSERT INTO `sw_region` VALUES ('411', '37', '西市区', '3', '0');
INSERT INTO `sw_region` VALUES ('412', '37', '郊区', '3', '0');
INSERT INTO `sw_region` VALUES ('413', '37', '怀远县', '3', '0');
INSERT INTO `sw_region` VALUES ('414', '37', '五河县', '3', '0');
INSERT INTO `sw_region` VALUES ('415', '37', '固镇县', '3', '0');
INSERT INTO `sw_region` VALUES ('416', '38', '居巢区', '3', '0');
INSERT INTO `sw_region` VALUES ('417', '38', '庐江县', '3', '0');
INSERT INTO `sw_region` VALUES ('418', '38', '无为县', '3', '0');
INSERT INTO `sw_region` VALUES ('419', '38', '含山县', '3', '0');
INSERT INTO `sw_region` VALUES ('420', '38', '和县', '3', '0');
INSERT INTO `sw_region` VALUES ('421', '39', '贵池区', '3', '0');
INSERT INTO `sw_region` VALUES ('422', '39', '东至县', '3', '0');
INSERT INTO `sw_region` VALUES ('423', '39', '石台县', '3', '0');
INSERT INTO `sw_region` VALUES ('424', '39', '青阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('425', '40', '琅琊区', '3', '0');
INSERT INTO `sw_region` VALUES ('426', '40', '南谯区', '3', '0');
INSERT INTO `sw_region` VALUES ('427', '40', '天长市', '3', '0');
INSERT INTO `sw_region` VALUES ('428', '40', '明光市', '3', '0');
INSERT INTO `sw_region` VALUES ('429', '40', '来安县', '3', '0');
INSERT INTO `sw_region` VALUES ('430', '40', '全椒县', '3', '0');
INSERT INTO `sw_region` VALUES ('431', '40', '定远县', '3', '0');
INSERT INTO `sw_region` VALUES ('432', '40', '凤阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('433', '41', '蚌山区', '3', '0');
INSERT INTO `sw_region` VALUES ('434', '41', '龙子湖区', '3', '0');
INSERT INTO `sw_region` VALUES ('435', '41', '禹会区', '3', '0');
INSERT INTO `sw_region` VALUES ('436', '41', '淮上区', '3', '0');
INSERT INTO `sw_region` VALUES ('437', '41', '颍州区', '3', '0');
INSERT INTO `sw_region` VALUES ('438', '41', '颍东区', '3', '0');
INSERT INTO `sw_region` VALUES ('439', '41', '颍泉区', '3', '0');
INSERT INTO `sw_region` VALUES ('440', '41', '界首市', '3', '0');
INSERT INTO `sw_region` VALUES ('441', '41', '临泉县', '3', '0');
INSERT INTO `sw_region` VALUES ('442', '41', '太和县', '3', '0');
INSERT INTO `sw_region` VALUES ('443', '41', '阜南县', '3', '0');
INSERT INTO `sw_region` VALUES ('444', '41', '颖上县', '3', '0');
INSERT INTO `sw_region` VALUES ('445', '42', '相山区', '3', '0');
INSERT INTO `sw_region` VALUES ('446', '42', '杜集区', '3', '0');
INSERT INTO `sw_region` VALUES ('447', '42', '烈山区', '3', '0');
INSERT INTO `sw_region` VALUES ('448', '42', '濉溪县', '3', '0');
INSERT INTO `sw_region` VALUES ('449', '43', '田家庵区', '3', '0');
INSERT INTO `sw_region` VALUES ('450', '43', '大通区', '3', '0');
INSERT INTO `sw_region` VALUES ('451', '43', '谢家集区', '3', '0');
INSERT INTO `sw_region` VALUES ('452', '43', '八公山区', '3', '0');
INSERT INTO `sw_region` VALUES ('453', '43', '潘集区', '3', '0');
INSERT INTO `sw_region` VALUES ('454', '43', '凤台县', '3', '0');
INSERT INTO `sw_region` VALUES ('455', '44', '屯溪区', '3', '0');
INSERT INTO `sw_region` VALUES ('456', '44', '黄山区', '3', '0');
INSERT INTO `sw_region` VALUES ('457', '44', '徽州区', '3', '0');
INSERT INTO `sw_region` VALUES ('458', '44', '歙县', '3', '0');
INSERT INTO `sw_region` VALUES ('459', '44', '休宁县', '3', '0');
INSERT INTO `sw_region` VALUES ('460', '44', '黟县', '3', '0');
INSERT INTO `sw_region` VALUES ('461', '44', '祁门县', '3', '0');
INSERT INTO `sw_region` VALUES ('462', '45', '金安区', '3', '0');
INSERT INTO `sw_region` VALUES ('463', '45', '裕安区', '3', '0');
INSERT INTO `sw_region` VALUES ('464', '45', '寿县', '3', '0');
INSERT INTO `sw_region` VALUES ('465', '45', '霍邱县', '3', '0');
INSERT INTO `sw_region` VALUES ('466', '45', '舒城县', '3', '0');
INSERT INTO `sw_region` VALUES ('467', '45', '金寨县', '3', '0');
INSERT INTO `sw_region` VALUES ('468', '45', '霍山县', '3', '0');
INSERT INTO `sw_region` VALUES ('469', '46', '雨山区', '3', '0');
INSERT INTO `sw_region` VALUES ('470', '46', '花山区', '3', '0');
INSERT INTO `sw_region` VALUES ('471', '46', '金家庄区', '3', '0');
INSERT INTO `sw_region` VALUES ('472', '46', '当涂县', '3', '0');
INSERT INTO `sw_region` VALUES ('473', '47', '埇桥区', '3', '0');
INSERT INTO `sw_region` VALUES ('474', '47', '砀山县', '3', '0');
INSERT INTO `sw_region` VALUES ('475', '47', '萧县', '3', '0');
INSERT INTO `sw_region` VALUES ('476', '47', '灵璧县', '3', '0');
INSERT INTO `sw_region` VALUES ('477', '47', '泗县', '3', '0');
INSERT INTO `sw_region` VALUES ('478', '48', '铜官山区', '3', '0');
INSERT INTO `sw_region` VALUES ('479', '48', '狮子山区', '3', '0');
INSERT INTO `sw_region` VALUES ('480', '48', '郊区', '3', '0');
INSERT INTO `sw_region` VALUES ('481', '48', '铜陵县', '3', '0');
INSERT INTO `sw_region` VALUES ('482', '49', '镜湖区', '3', '0');
INSERT INTO `sw_region` VALUES ('483', '49', '弋江区', '3', '0');
INSERT INTO `sw_region` VALUES ('484', '49', '鸠江区', '3', '0');
INSERT INTO `sw_region` VALUES ('485', '49', '三山区', '3', '0');
INSERT INTO `sw_region` VALUES ('486', '49', '芜湖县', '3', '0');
INSERT INTO `sw_region` VALUES ('487', '49', '繁昌县', '3', '0');
INSERT INTO `sw_region` VALUES ('488', '49', '南陵县', '3', '0');
INSERT INTO `sw_region` VALUES ('489', '50', '宣州区', '3', '0');
INSERT INTO `sw_region` VALUES ('490', '50', '宁国市', '3', '0');
INSERT INTO `sw_region` VALUES ('491', '50', '郎溪县', '3', '0');
INSERT INTO `sw_region` VALUES ('492', '50', '广德县', '3', '0');
INSERT INTO `sw_region` VALUES ('493', '50', '泾县', '3', '0');
INSERT INTO `sw_region` VALUES ('494', '50', '绩溪县', '3', '0');
INSERT INTO `sw_region` VALUES ('495', '50', '旌德县', '3', '0');
INSERT INTO `sw_region` VALUES ('496', '51', '涡阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('497', '51', '蒙城县', '3', '0');
INSERT INTO `sw_region` VALUES ('498', '51', '利辛县', '3', '0');
INSERT INTO `sw_region` VALUES ('499', '51', '谯城区', '3', '0');
INSERT INTO `sw_region` VALUES ('500', '52', '东城区', '3', '0');
INSERT INTO `sw_region` VALUES ('501', '52', '西城区', '3', '0');
INSERT INTO `sw_region` VALUES ('502', '52', '海淀区', '3', '0');
INSERT INTO `sw_region` VALUES ('503', '52', '朝阳区', '3', '0');
INSERT INTO `sw_region` VALUES ('504', '52', '崇文区', '3', '0');
INSERT INTO `sw_region` VALUES ('505', '52', '宣武区', '3', '0');
INSERT INTO `sw_region` VALUES ('506', '52', '丰台区', '3', '0');
INSERT INTO `sw_region` VALUES ('507', '52', '石景山区', '3', '0');
INSERT INTO `sw_region` VALUES ('508', '52', '房山区', '3', '0');
INSERT INTO `sw_region` VALUES ('509', '52', '门头沟区', '3', '0');
INSERT INTO `sw_region` VALUES ('510', '52', '通州区', '3', '0');
INSERT INTO `sw_region` VALUES ('511', '52', '顺义区', '3', '0');
INSERT INTO `sw_region` VALUES ('512', '52', '昌平区', '3', '0');
INSERT INTO `sw_region` VALUES ('513', '52', '怀柔区', '3', '0');
INSERT INTO `sw_region` VALUES ('514', '52', '平谷区', '3', '0');
INSERT INTO `sw_region` VALUES ('515', '52', '大兴区', '3', '0');
INSERT INTO `sw_region` VALUES ('516', '52', '密云县', '3', '0');
INSERT INTO `sw_region` VALUES ('517', '52', '延庆县', '3', '0');
INSERT INTO `sw_region` VALUES ('518', '53', '鼓楼区', '3', '0');
INSERT INTO `sw_region` VALUES ('519', '53', '台江区', '3', '0');
INSERT INTO `sw_region` VALUES ('520', '53', '仓山区', '3', '0');
INSERT INTO `sw_region` VALUES ('521', '53', '马尾区', '3', '0');
INSERT INTO `sw_region` VALUES ('522', '53', '晋安区', '3', '0');
INSERT INTO `sw_region` VALUES ('523', '53', '福清市', '3', '0');
INSERT INTO `sw_region` VALUES ('524', '53', '长乐市', '3', '0');
INSERT INTO `sw_region` VALUES ('525', '53', '闽侯县', '3', '0');
INSERT INTO `sw_region` VALUES ('526', '53', '连江县', '3', '0');
INSERT INTO `sw_region` VALUES ('527', '53', '罗源县', '3', '0');
INSERT INTO `sw_region` VALUES ('528', '53', '闽清县', '3', '0');
INSERT INTO `sw_region` VALUES ('529', '53', '永泰县', '3', '0');
INSERT INTO `sw_region` VALUES ('530', '53', '平潭县', '3', '0');
INSERT INTO `sw_region` VALUES ('531', '54', '新罗区', '3', '0');
INSERT INTO `sw_region` VALUES ('532', '54', '漳平市', '3', '0');
INSERT INTO `sw_region` VALUES ('533', '54', '长汀县', '3', '0');
INSERT INTO `sw_region` VALUES ('534', '54', '永定县', '3', '0');
INSERT INTO `sw_region` VALUES ('535', '54', '上杭县', '3', '0');
INSERT INTO `sw_region` VALUES ('536', '54', '武平县', '3', '0');
INSERT INTO `sw_region` VALUES ('537', '54', '连城县', '3', '0');
INSERT INTO `sw_region` VALUES ('538', '55', '延平区', '3', '0');
INSERT INTO `sw_region` VALUES ('539', '55', '邵武市', '3', '0');
INSERT INTO `sw_region` VALUES ('540', '55', '武夷山市', '3', '0');
INSERT INTO `sw_region` VALUES ('541', '55', '建瓯市', '3', '0');
INSERT INTO `sw_region` VALUES ('542', '55', '建阳市', '3', '0');
INSERT INTO `sw_region` VALUES ('543', '55', '顺昌县', '3', '0');
INSERT INTO `sw_region` VALUES ('544', '55', '浦城县', '3', '0');
INSERT INTO `sw_region` VALUES ('545', '55', '光泽县', '3', '0');
INSERT INTO `sw_region` VALUES ('546', '55', '松溪县', '3', '0');
INSERT INTO `sw_region` VALUES ('547', '55', '政和县', '3', '0');
INSERT INTO `sw_region` VALUES ('548', '56', '蕉城区', '3', '0');
INSERT INTO `sw_region` VALUES ('549', '56', '福安市', '3', '0');
INSERT INTO `sw_region` VALUES ('550', '56', '福鼎市', '3', '0');
INSERT INTO `sw_region` VALUES ('551', '56', '霞浦县', '3', '0');
INSERT INTO `sw_region` VALUES ('552', '56', '古田县', '3', '0');
INSERT INTO `sw_region` VALUES ('553', '56', '屏南县', '3', '0');
INSERT INTO `sw_region` VALUES ('554', '56', '寿宁县', '3', '0');
INSERT INTO `sw_region` VALUES ('555', '56', '周宁县', '3', '0');
INSERT INTO `sw_region` VALUES ('556', '56', '柘荣县', '3', '0');
INSERT INTO `sw_region` VALUES ('557', '57', '城厢区', '3', '0');
INSERT INTO `sw_region` VALUES ('558', '57', '涵江区', '3', '0');
INSERT INTO `sw_region` VALUES ('559', '57', '荔城区', '3', '0');
INSERT INTO `sw_region` VALUES ('560', '57', '秀屿区', '3', '0');
INSERT INTO `sw_region` VALUES ('561', '57', '仙游县', '3', '0');
INSERT INTO `sw_region` VALUES ('562', '58', '鲤城区', '3', '0');
INSERT INTO `sw_region` VALUES ('563', '58', '丰泽区', '3', '0');
INSERT INTO `sw_region` VALUES ('564', '58', '洛江区', '3', '0');
INSERT INTO `sw_region` VALUES ('565', '58', '清濛开发区', '3', '0');
INSERT INTO `sw_region` VALUES ('566', '58', '泉港区', '3', '0');
INSERT INTO `sw_region` VALUES ('567', '58', '石狮市', '3', '0');
INSERT INTO `sw_region` VALUES ('568', '58', '晋江市', '3', '0');
INSERT INTO `sw_region` VALUES ('569', '58', '南安市', '3', '0');
INSERT INTO `sw_region` VALUES ('570', '58', '惠安县', '3', '0');
INSERT INTO `sw_region` VALUES ('571', '58', '安溪县', '3', '0');
INSERT INTO `sw_region` VALUES ('572', '58', '永春县', '3', '0');
INSERT INTO `sw_region` VALUES ('573', '58', '德化县', '3', '0');
INSERT INTO `sw_region` VALUES ('574', '58', '金门县', '3', '0');
INSERT INTO `sw_region` VALUES ('575', '59', '梅列区', '3', '0');
INSERT INTO `sw_region` VALUES ('576', '59', '三元区', '3', '0');
INSERT INTO `sw_region` VALUES ('577', '59', '永安市', '3', '0');
INSERT INTO `sw_region` VALUES ('578', '59', '明溪县', '3', '0');
INSERT INTO `sw_region` VALUES ('579', '59', '清流县', '3', '0');
INSERT INTO `sw_region` VALUES ('580', '59', '宁化县', '3', '0');
INSERT INTO `sw_region` VALUES ('581', '59', '大田县', '3', '0');
INSERT INTO `sw_region` VALUES ('582', '59', '尤溪县', '3', '0');
INSERT INTO `sw_region` VALUES ('583', '59', '沙县', '3', '0');
INSERT INTO `sw_region` VALUES ('584', '59', '将乐县', '3', '0');
INSERT INTO `sw_region` VALUES ('585', '59', '泰宁县', '3', '0');
INSERT INTO `sw_region` VALUES ('586', '59', '建宁县', '3', '0');
INSERT INTO `sw_region` VALUES ('587', '60', '思明区', '3', '0');
INSERT INTO `sw_region` VALUES ('588', '60', '海沧区', '3', '0');
INSERT INTO `sw_region` VALUES ('589', '60', '湖里区', '3', '0');
INSERT INTO `sw_region` VALUES ('590', '60', '集美区', '3', '0');
INSERT INTO `sw_region` VALUES ('591', '60', '同安区', '3', '0');
INSERT INTO `sw_region` VALUES ('592', '60', '翔安区', '3', '0');
INSERT INTO `sw_region` VALUES ('593', '61', '芗城区', '3', '0');
INSERT INTO `sw_region` VALUES ('594', '61', '龙文区', '3', '0');
INSERT INTO `sw_region` VALUES ('595', '61', '龙海市', '3', '0');
INSERT INTO `sw_region` VALUES ('596', '61', '云霄县', '3', '0');
INSERT INTO `sw_region` VALUES ('597', '61', '漳浦县', '3', '0');
INSERT INTO `sw_region` VALUES ('598', '61', '诏安县', '3', '0');
INSERT INTO `sw_region` VALUES ('599', '61', '长泰县', '3', '0');
INSERT INTO `sw_region` VALUES ('600', '61', '东山县', '3', '0');
INSERT INTO `sw_region` VALUES ('601', '61', '南靖县', '3', '0');
INSERT INTO `sw_region` VALUES ('602', '61', '平和县', '3', '0');
INSERT INTO `sw_region` VALUES ('603', '61', '华安县', '3', '0');
INSERT INTO `sw_region` VALUES ('604', '62', '皋兰县', '3', '0');
INSERT INTO `sw_region` VALUES ('605', '62', '城关区', '3', '0');
INSERT INTO `sw_region` VALUES ('606', '62', '七里河区', '3', '0');
INSERT INTO `sw_region` VALUES ('607', '62', '西固区', '3', '0');
INSERT INTO `sw_region` VALUES ('608', '62', '安宁区', '3', '0');
INSERT INTO `sw_region` VALUES ('609', '62', '红古区', '3', '0');
INSERT INTO `sw_region` VALUES ('610', '62', '永登县', '3', '0');
INSERT INTO `sw_region` VALUES ('611', '62', '榆中县', '3', '0');
INSERT INTO `sw_region` VALUES ('612', '63', '白银区', '3', '0');
INSERT INTO `sw_region` VALUES ('613', '63', '平川区', '3', '0');
INSERT INTO `sw_region` VALUES ('614', '63', '会宁县', '3', '0');
INSERT INTO `sw_region` VALUES ('615', '63', '景泰县', '3', '0');
INSERT INTO `sw_region` VALUES ('616', '63', '靖远县', '3', '0');
INSERT INTO `sw_region` VALUES ('617', '64', '临洮县', '3', '0');
INSERT INTO `sw_region` VALUES ('618', '64', '陇西县', '3', '0');
INSERT INTO `sw_region` VALUES ('619', '64', '通渭县', '3', '0');
INSERT INTO `sw_region` VALUES ('620', '64', '渭源县', '3', '0');
INSERT INTO `sw_region` VALUES ('621', '64', '漳县', '3', '0');
INSERT INTO `sw_region` VALUES ('622', '64', '岷县', '3', '0');
INSERT INTO `sw_region` VALUES ('623', '64', '安定区', '3', '0');
INSERT INTO `sw_region` VALUES ('624', '64', '安定区', '3', '0');
INSERT INTO `sw_region` VALUES ('625', '65', '合作市', '3', '0');
INSERT INTO `sw_region` VALUES ('626', '65', '临潭县', '3', '0');
INSERT INTO `sw_region` VALUES ('627', '65', '卓尼县', '3', '0');
INSERT INTO `sw_region` VALUES ('628', '65', '舟曲县', '3', '0');
INSERT INTO `sw_region` VALUES ('629', '65', '迭部县', '3', '0');
INSERT INTO `sw_region` VALUES ('630', '65', '玛曲县', '3', '0');
INSERT INTO `sw_region` VALUES ('631', '65', '碌曲县', '3', '0');
INSERT INTO `sw_region` VALUES ('632', '65', '夏河县', '3', '0');
INSERT INTO `sw_region` VALUES ('633', '66', '嘉峪关市', '3', '0');
INSERT INTO `sw_region` VALUES ('634', '67', '金川区', '3', '0');
INSERT INTO `sw_region` VALUES ('635', '67', '永昌县', '3', '0');
INSERT INTO `sw_region` VALUES ('636', '68', '肃州区', '3', '0');
INSERT INTO `sw_region` VALUES ('637', '68', '玉门市', '3', '0');
INSERT INTO `sw_region` VALUES ('638', '68', '敦煌市', '3', '0');
INSERT INTO `sw_region` VALUES ('639', '68', '金塔县', '3', '0');
INSERT INTO `sw_region` VALUES ('640', '68', '瓜州县', '3', '0');
INSERT INTO `sw_region` VALUES ('641', '68', '肃北', '3', '0');
INSERT INTO `sw_region` VALUES ('642', '68', '阿克塞', '3', '0');
INSERT INTO `sw_region` VALUES ('643', '69', '临夏市', '3', '0');
INSERT INTO `sw_region` VALUES ('644', '69', '临夏县', '3', '0');
INSERT INTO `sw_region` VALUES ('645', '69', '康乐县', '3', '0');
INSERT INTO `sw_region` VALUES ('646', '69', '永靖县', '3', '0');
INSERT INTO `sw_region` VALUES ('647', '69', '广河县', '3', '0');
INSERT INTO `sw_region` VALUES ('648', '69', '和政县', '3', '0');
INSERT INTO `sw_region` VALUES ('649', '69', '东乡族自治县', '3', '0');
INSERT INTO `sw_region` VALUES ('650', '69', '积石山', '3', '0');
INSERT INTO `sw_region` VALUES ('651', '70', '成县', '3', '0');
INSERT INTO `sw_region` VALUES ('652', '70', '徽县', '3', '0');
INSERT INTO `sw_region` VALUES ('653', '70', '康县', '3', '0');
INSERT INTO `sw_region` VALUES ('654', '70', '礼县', '3', '0');
INSERT INTO `sw_region` VALUES ('655', '70', '两当县', '3', '0');
INSERT INTO `sw_region` VALUES ('656', '70', '文县', '3', '0');
INSERT INTO `sw_region` VALUES ('657', '70', '西和县', '3', '0');
INSERT INTO `sw_region` VALUES ('658', '70', '宕昌县', '3', '0');
INSERT INTO `sw_region` VALUES ('659', '70', '武都区', '3', '0');
INSERT INTO `sw_region` VALUES ('660', '71', '崇信县', '3', '0');
INSERT INTO `sw_region` VALUES ('661', '71', '华亭县', '3', '0');
INSERT INTO `sw_region` VALUES ('662', '71', '静宁县', '3', '0');
INSERT INTO `sw_region` VALUES ('663', '71', '灵台县', '3', '0');
INSERT INTO `sw_region` VALUES ('664', '71', '崆峒区', '3', '0');
INSERT INTO `sw_region` VALUES ('665', '71', '庄浪县', '3', '0');
INSERT INTO `sw_region` VALUES ('666', '71', '泾川县', '3', '0');
INSERT INTO `sw_region` VALUES ('667', '72', '合水县', '3', '0');
INSERT INTO `sw_region` VALUES ('668', '72', '华池县', '3', '0');
INSERT INTO `sw_region` VALUES ('669', '72', '环县', '3', '0');
INSERT INTO `sw_region` VALUES ('670', '72', '宁县', '3', '0');
INSERT INTO `sw_region` VALUES ('671', '72', '庆城县', '3', '0');
INSERT INTO `sw_region` VALUES ('672', '72', '西峰区', '3', '0');
INSERT INTO `sw_region` VALUES ('673', '72', '镇原县', '3', '0');
INSERT INTO `sw_region` VALUES ('674', '72', '正宁县', '3', '0');
INSERT INTO `sw_region` VALUES ('675', '73', '甘谷县', '3', '0');
INSERT INTO `sw_region` VALUES ('676', '73', '秦安县', '3', '0');
INSERT INTO `sw_region` VALUES ('677', '73', '清水县', '3', '0');
INSERT INTO `sw_region` VALUES ('678', '73', '秦州区', '3', '0');
INSERT INTO `sw_region` VALUES ('679', '73', '麦积区', '3', '0');
INSERT INTO `sw_region` VALUES ('680', '73', '武山县', '3', '0');
INSERT INTO `sw_region` VALUES ('681', '73', '张家川', '3', '0');
INSERT INTO `sw_region` VALUES ('682', '74', '古浪县', '3', '0');
INSERT INTO `sw_region` VALUES ('683', '74', '民勤县', '3', '0');
INSERT INTO `sw_region` VALUES ('684', '74', '天祝', '3', '0');
INSERT INTO `sw_region` VALUES ('685', '74', '凉州区', '3', '0');
INSERT INTO `sw_region` VALUES ('686', '75', '高台县', '3', '0');
INSERT INTO `sw_region` VALUES ('687', '75', '临泽县', '3', '0');
INSERT INTO `sw_region` VALUES ('688', '75', '民乐县', '3', '0');
INSERT INTO `sw_region` VALUES ('689', '75', '山丹县', '3', '0');
INSERT INTO `sw_region` VALUES ('690', '75', '肃南', '3', '0');
INSERT INTO `sw_region` VALUES ('691', '75', '甘州区', '3', '0');
INSERT INTO `sw_region` VALUES ('692', '76', '从化市', '3', '0');
INSERT INTO `sw_region` VALUES ('693', '76', '天河区', '3', '0');
INSERT INTO `sw_region` VALUES ('694', '76', '东山区', '3', '0');
INSERT INTO `sw_region` VALUES ('695', '76', '白云区', '3', '0');
INSERT INTO `sw_region` VALUES ('696', '76', '海珠区', '3', '0');
INSERT INTO `sw_region` VALUES ('697', '76', '荔湾区', '3', '0');
INSERT INTO `sw_region` VALUES ('698', '76', '越秀区', '3', '0');
INSERT INTO `sw_region` VALUES ('699', '76', '黄埔区', '3', '0');
INSERT INTO `sw_region` VALUES ('700', '76', '番禺区', '3', '0');
INSERT INTO `sw_region` VALUES ('701', '76', '花都区', '3', '0');
INSERT INTO `sw_region` VALUES ('702', '76', '增城区', '3', '0');
INSERT INTO `sw_region` VALUES ('703', '76', '从化区', '3', '0');
INSERT INTO `sw_region` VALUES ('704', '76', '市郊', '3', '0');
INSERT INTO `sw_region` VALUES ('705', '77', '福田区', '3', '0');
INSERT INTO `sw_region` VALUES ('706', '77', '罗湖区', '3', '0');
INSERT INTO `sw_region` VALUES ('707', '77', '南山区', '3', '0');
INSERT INTO `sw_region` VALUES ('708', '77', '宝安区', '3', '0');
INSERT INTO `sw_region` VALUES ('709', '77', '龙岗区', '3', '0');
INSERT INTO `sw_region` VALUES ('710', '77', '盐田区', '3', '0');
INSERT INTO `sw_region` VALUES ('711', '78', '湘桥区', '3', '0');
INSERT INTO `sw_region` VALUES ('712', '78', '潮安县', '3', '0');
INSERT INTO `sw_region` VALUES ('713', '78', '饶平县', '3', '0');
INSERT INTO `sw_region` VALUES ('714', '79', '南城区', '3', '0');
INSERT INTO `sw_region` VALUES ('715', '79', '东城区', '3', '0');
INSERT INTO `sw_region` VALUES ('716', '79', '万江区', '3', '0');
INSERT INTO `sw_region` VALUES ('717', '79', '莞城区', '3', '0');
INSERT INTO `sw_region` VALUES ('718', '79', '石龙镇', '3', '0');
INSERT INTO `sw_region` VALUES ('719', '79', '虎门镇', '3', '0');
INSERT INTO `sw_region` VALUES ('720', '79', '麻涌镇', '3', '0');
INSERT INTO `sw_region` VALUES ('721', '79', '道滘镇', '3', '0');
INSERT INTO `sw_region` VALUES ('722', '79', '石碣镇', '3', '0');
INSERT INTO `sw_region` VALUES ('723', '79', '沙田镇', '3', '0');
INSERT INTO `sw_region` VALUES ('724', '79', '望牛墩镇', '3', '0');
INSERT INTO `sw_region` VALUES ('725', '79', '洪梅镇', '3', '0');
INSERT INTO `sw_region` VALUES ('726', '79', '茶山镇', '3', '0');
INSERT INTO `sw_region` VALUES ('727', '79', '寮步镇', '3', '0');
INSERT INTO `sw_region` VALUES ('728', '79', '大岭山镇', '3', '0');
INSERT INTO `sw_region` VALUES ('729', '79', '大朗镇', '3', '0');
INSERT INTO `sw_region` VALUES ('730', '79', '黄江镇', '3', '0');
INSERT INTO `sw_region` VALUES ('731', '79', '樟木头', '3', '0');
INSERT INTO `sw_region` VALUES ('732', '79', '凤岗镇', '3', '0');
INSERT INTO `sw_region` VALUES ('733', '79', '塘厦镇', '3', '0');
INSERT INTO `sw_region` VALUES ('734', '79', '谢岗镇', '3', '0');
INSERT INTO `sw_region` VALUES ('735', '79', '厚街镇', '3', '0');
INSERT INTO `sw_region` VALUES ('736', '79', '清溪镇', '3', '0');
INSERT INTO `sw_region` VALUES ('737', '79', '常平镇', '3', '0');
INSERT INTO `sw_region` VALUES ('738', '79', '桥头镇', '3', '0');
INSERT INTO `sw_region` VALUES ('739', '79', '横沥镇', '3', '0');
INSERT INTO `sw_region` VALUES ('740', '79', '东坑镇', '3', '0');
INSERT INTO `sw_region` VALUES ('741', '79', '企石镇', '3', '0');
INSERT INTO `sw_region` VALUES ('742', '79', '石排镇', '3', '0');
INSERT INTO `sw_region` VALUES ('743', '79', '长安镇', '3', '0');
INSERT INTO `sw_region` VALUES ('744', '79', '中堂镇', '3', '0');
INSERT INTO `sw_region` VALUES ('745', '79', '高埗镇', '3', '0');
INSERT INTO `sw_region` VALUES ('746', '80', '禅城区', '3', '0');
INSERT INTO `sw_region` VALUES ('747', '80', '南海区', '3', '0');
INSERT INTO `sw_region` VALUES ('748', '80', '顺德区', '3', '0');
INSERT INTO `sw_region` VALUES ('749', '80', '三水区', '3', '0');
INSERT INTO `sw_region` VALUES ('750', '80', '高明区', '3', '0');
INSERT INTO `sw_region` VALUES ('751', '81', '东源县', '3', '0');
INSERT INTO `sw_region` VALUES ('752', '81', '和平县', '3', '0');
INSERT INTO `sw_region` VALUES ('753', '81', '源城区', '3', '0');
INSERT INTO `sw_region` VALUES ('754', '81', '连平县', '3', '0');
INSERT INTO `sw_region` VALUES ('755', '81', '龙川县', '3', '0');
INSERT INTO `sw_region` VALUES ('756', '81', '紫金县', '3', '0');
INSERT INTO `sw_region` VALUES ('757', '82', '惠阳区', '3', '0');
INSERT INTO `sw_region` VALUES ('758', '82', '惠城区', '3', '0');
INSERT INTO `sw_region` VALUES ('759', '82', '大亚湾', '3', '0');
INSERT INTO `sw_region` VALUES ('760', '82', '博罗县', '3', '0');
INSERT INTO `sw_region` VALUES ('761', '82', '惠东县', '3', '0');
INSERT INTO `sw_region` VALUES ('762', '82', '龙门县', '3', '0');
INSERT INTO `sw_region` VALUES ('763', '83', '江海区', '3', '0');
INSERT INTO `sw_region` VALUES ('764', '83', '蓬江区', '3', '0');
INSERT INTO `sw_region` VALUES ('765', '83', '新会区', '3', '0');
INSERT INTO `sw_region` VALUES ('766', '83', '台山市', '3', '0');
INSERT INTO `sw_region` VALUES ('767', '83', '开平市', '3', '0');
INSERT INTO `sw_region` VALUES ('768', '83', '鹤山市', '3', '0');
INSERT INTO `sw_region` VALUES ('769', '83', '恩平市', '3', '0');
INSERT INTO `sw_region` VALUES ('770', '84', '榕城区', '3', '0');
INSERT INTO `sw_region` VALUES ('771', '84', '普宁市', '3', '0');
INSERT INTO `sw_region` VALUES ('772', '84', '揭东县', '3', '0');
INSERT INTO `sw_region` VALUES ('773', '84', '揭西县', '3', '0');
INSERT INTO `sw_region` VALUES ('774', '84', '惠来县', '3', '0');
INSERT INTO `sw_region` VALUES ('775', '85', '茂南区', '3', '0');
INSERT INTO `sw_region` VALUES ('776', '85', '茂港区', '3', '0');
INSERT INTO `sw_region` VALUES ('777', '85', '高州市', '3', '0');
INSERT INTO `sw_region` VALUES ('778', '85', '化州市', '3', '0');
INSERT INTO `sw_region` VALUES ('779', '85', '信宜市', '3', '0');
INSERT INTO `sw_region` VALUES ('780', '85', '电白县', '3', '0');
INSERT INTO `sw_region` VALUES ('781', '86', '梅县', '3', '0');
INSERT INTO `sw_region` VALUES ('782', '86', '梅江区', '3', '0');
INSERT INTO `sw_region` VALUES ('783', '86', '兴宁市', '3', '0');
INSERT INTO `sw_region` VALUES ('784', '86', '大埔县', '3', '0');
INSERT INTO `sw_region` VALUES ('785', '86', '丰顺县', '3', '0');
INSERT INTO `sw_region` VALUES ('786', '86', '五华县', '3', '0');
INSERT INTO `sw_region` VALUES ('787', '86', '平远县', '3', '0');
INSERT INTO `sw_region` VALUES ('788', '86', '蕉岭县', '3', '0');
INSERT INTO `sw_region` VALUES ('789', '87', '清城区', '3', '0');
INSERT INTO `sw_region` VALUES ('790', '87', '英德市', '3', '0');
INSERT INTO `sw_region` VALUES ('791', '87', '连州市', '3', '0');
INSERT INTO `sw_region` VALUES ('792', '87', '佛冈县', '3', '0');
INSERT INTO `sw_region` VALUES ('793', '87', '阳山县', '3', '0');
INSERT INTO `sw_region` VALUES ('794', '87', '清新县', '3', '0');
INSERT INTO `sw_region` VALUES ('795', '87', '连山', '3', '0');
INSERT INTO `sw_region` VALUES ('796', '87', '连南', '3', '0');
INSERT INTO `sw_region` VALUES ('797', '88', '南澳县', '3', '0');
INSERT INTO `sw_region` VALUES ('798', '88', '潮阳区', '3', '0');
INSERT INTO `sw_region` VALUES ('799', '88', '澄海区', '3', '0');
INSERT INTO `sw_region` VALUES ('800', '88', '龙湖区', '3', '0');
INSERT INTO `sw_region` VALUES ('801', '88', '金平区', '3', '0');
INSERT INTO `sw_region` VALUES ('802', '88', '濠江区', '3', '0');
INSERT INTO `sw_region` VALUES ('803', '88', '潮南区', '3', '0');
INSERT INTO `sw_region` VALUES ('804', '89', '城区', '3', '0');
INSERT INTO `sw_region` VALUES ('805', '89', '陆丰市', '3', '0');
INSERT INTO `sw_region` VALUES ('806', '89', '海丰县', '3', '0');
INSERT INTO `sw_region` VALUES ('807', '89', '陆河县', '3', '0');
INSERT INTO `sw_region` VALUES ('808', '90', '曲江县', '3', '0');
INSERT INTO `sw_region` VALUES ('809', '90', '浈江区', '3', '0');
INSERT INTO `sw_region` VALUES ('810', '90', '武江区', '3', '0');
INSERT INTO `sw_region` VALUES ('811', '90', '曲江区', '3', '0');
INSERT INTO `sw_region` VALUES ('812', '90', '乐昌市', '3', '0');
INSERT INTO `sw_region` VALUES ('813', '90', '南雄市', '3', '0');
INSERT INTO `sw_region` VALUES ('814', '90', '始兴县', '3', '0');
INSERT INTO `sw_region` VALUES ('815', '90', '仁化县', '3', '0');
INSERT INTO `sw_region` VALUES ('816', '90', '翁源县', '3', '0');
INSERT INTO `sw_region` VALUES ('817', '90', '新丰县', '3', '0');
INSERT INTO `sw_region` VALUES ('818', '90', '乳源', '3', '0');
INSERT INTO `sw_region` VALUES ('819', '91', '江城区', '3', '0');
INSERT INTO `sw_region` VALUES ('820', '91', '阳春市', '3', '0');
INSERT INTO `sw_region` VALUES ('821', '91', '阳西县', '3', '0');
INSERT INTO `sw_region` VALUES ('822', '91', '阳东县', '3', '0');
INSERT INTO `sw_region` VALUES ('823', '92', '云城区', '3', '0');
INSERT INTO `sw_region` VALUES ('824', '92', '罗定市', '3', '0');
INSERT INTO `sw_region` VALUES ('825', '92', '新兴县', '3', '0');
INSERT INTO `sw_region` VALUES ('826', '92', '郁南县', '3', '0');
INSERT INTO `sw_region` VALUES ('827', '92', '云安县', '3', '0');
INSERT INTO `sw_region` VALUES ('828', '93', '赤坎区', '3', '0');
INSERT INTO `sw_region` VALUES ('829', '93', '霞山区', '3', '0');
INSERT INTO `sw_region` VALUES ('830', '93', '坡头区', '3', '0');
INSERT INTO `sw_region` VALUES ('831', '93', '麻章区', '3', '0');
INSERT INTO `sw_region` VALUES ('832', '93', '廉江市', '3', '0');
INSERT INTO `sw_region` VALUES ('833', '93', '雷州市', '3', '0');
INSERT INTO `sw_region` VALUES ('834', '93', '吴川市', '3', '0');
INSERT INTO `sw_region` VALUES ('835', '93', '遂溪县', '3', '0');
INSERT INTO `sw_region` VALUES ('836', '93', '徐闻县', '3', '0');
INSERT INTO `sw_region` VALUES ('837', '94', '肇庆市', '3', '0');
INSERT INTO `sw_region` VALUES ('838', '94', '高要市', '3', '0');
INSERT INTO `sw_region` VALUES ('839', '94', '四会市', '3', '0');
INSERT INTO `sw_region` VALUES ('840', '94', '广宁县', '3', '0');
INSERT INTO `sw_region` VALUES ('841', '94', '怀集县', '3', '0');
INSERT INTO `sw_region` VALUES ('842', '94', '封开县', '3', '0');
INSERT INTO `sw_region` VALUES ('843', '94', '德庆县', '3', '0');
INSERT INTO `sw_region` VALUES ('844', '95', '石岐街道', '3', '0');
INSERT INTO `sw_region` VALUES ('845', '95', '东区街道', '3', '0');
INSERT INTO `sw_region` VALUES ('846', '95', '西区街道', '3', '0');
INSERT INTO `sw_region` VALUES ('847', '95', '环城街道', '3', '0');
INSERT INTO `sw_region` VALUES ('848', '95', '中山港街道', '3', '0');
INSERT INTO `sw_region` VALUES ('849', '95', '五桂山街道', '3', '0');
INSERT INTO `sw_region` VALUES ('850', '96', '香洲区', '3', '0');
INSERT INTO `sw_region` VALUES ('851', '96', '斗门区', '3', '0');
INSERT INTO `sw_region` VALUES ('852', '96', '金湾区', '3', '0');
INSERT INTO `sw_region` VALUES ('853', '97', '邕宁区', '3', '0');
INSERT INTO `sw_region` VALUES ('854', '97', '青秀区', '3', '0');
INSERT INTO `sw_region` VALUES ('855', '97', '兴宁区', '3', '0');
INSERT INTO `sw_region` VALUES ('856', '97', '良庆区', '3', '0');
INSERT INTO `sw_region` VALUES ('857', '97', '西乡塘区', '3', '0');
INSERT INTO `sw_region` VALUES ('858', '97', '江南区', '3', '0');
INSERT INTO `sw_region` VALUES ('859', '97', '武鸣县', '3', '0');
INSERT INTO `sw_region` VALUES ('860', '97', '隆安县', '3', '0');
INSERT INTO `sw_region` VALUES ('861', '97', '马山县', '3', '0');
INSERT INTO `sw_region` VALUES ('862', '97', '上林县', '3', '0');
INSERT INTO `sw_region` VALUES ('863', '97', '宾阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('864', '97', '横县', '3', '0');
INSERT INTO `sw_region` VALUES ('865', '98', '秀峰区', '3', '0');
INSERT INTO `sw_region` VALUES ('866', '98', '叠彩区', '3', '0');
INSERT INTO `sw_region` VALUES ('867', '98', '象山区', '3', '0');
INSERT INTO `sw_region` VALUES ('868', '98', '七星区', '3', '0');
INSERT INTO `sw_region` VALUES ('869', '98', '雁山区', '3', '0');
INSERT INTO `sw_region` VALUES ('870', '98', '阳朔县', '3', '0');
INSERT INTO `sw_region` VALUES ('871', '98', '临桂县', '3', '0');
INSERT INTO `sw_region` VALUES ('872', '98', '灵川县', '3', '0');
INSERT INTO `sw_region` VALUES ('873', '98', '全州县', '3', '0');
INSERT INTO `sw_region` VALUES ('874', '98', '平乐县', '3', '0');
INSERT INTO `sw_region` VALUES ('875', '98', '兴安县', '3', '0');
INSERT INTO `sw_region` VALUES ('876', '98', '灌阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('877', '98', '荔浦县', '3', '0');
INSERT INTO `sw_region` VALUES ('878', '98', '资源县', '3', '0');
INSERT INTO `sw_region` VALUES ('879', '98', '永福县', '3', '0');
INSERT INTO `sw_region` VALUES ('880', '98', '龙胜', '3', '0');
INSERT INTO `sw_region` VALUES ('881', '98', '恭城', '3', '0');
INSERT INTO `sw_region` VALUES ('882', '99', '右江区', '3', '0');
INSERT INTO `sw_region` VALUES ('883', '99', '凌云县', '3', '0');
INSERT INTO `sw_region` VALUES ('884', '99', '平果县', '3', '0');
INSERT INTO `sw_region` VALUES ('885', '99', '西林县', '3', '0');
INSERT INTO `sw_region` VALUES ('886', '99', '乐业县', '3', '0');
INSERT INTO `sw_region` VALUES ('887', '99', '德保县', '3', '0');
INSERT INTO `sw_region` VALUES ('888', '99', '田林县', '3', '0');
INSERT INTO `sw_region` VALUES ('889', '99', '田阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('890', '99', '靖西县', '3', '0');
INSERT INTO `sw_region` VALUES ('891', '99', '田东县', '3', '0');
INSERT INTO `sw_region` VALUES ('892', '99', '那坡县', '3', '0');
INSERT INTO `sw_region` VALUES ('893', '99', '隆林', '3', '0');
INSERT INTO `sw_region` VALUES ('894', '100', '海城区', '3', '0');
INSERT INTO `sw_region` VALUES ('895', '100', '银海区', '3', '0');
INSERT INTO `sw_region` VALUES ('896', '100', '铁山港区', '3', '0');
INSERT INTO `sw_region` VALUES ('897', '100', '合浦县', '3', '0');
INSERT INTO `sw_region` VALUES ('898', '101', '江州区', '3', '0');
INSERT INTO `sw_region` VALUES ('899', '101', '凭祥市', '3', '0');
INSERT INTO `sw_region` VALUES ('900', '101', '宁明县', '3', '0');
INSERT INTO `sw_region` VALUES ('901', '101', '扶绥县', '3', '0');
INSERT INTO `sw_region` VALUES ('902', '101', '龙州县', '3', '0');
INSERT INTO `sw_region` VALUES ('903', '101', '大新县', '3', '0');
INSERT INTO `sw_region` VALUES ('904', '101', '天等县', '3', '0');
INSERT INTO `sw_region` VALUES ('905', '102', '港口区', '3', '0');
INSERT INTO `sw_region` VALUES ('906', '102', '防城区', '3', '0');
INSERT INTO `sw_region` VALUES ('907', '102', '东兴市', '3', '0');
INSERT INTO `sw_region` VALUES ('908', '102', '上思县', '3', '0');
INSERT INTO `sw_region` VALUES ('909', '103', '港北区', '3', '0');
INSERT INTO `sw_region` VALUES ('910', '103', '港南区', '3', '0');
INSERT INTO `sw_region` VALUES ('911', '103', '覃塘区', '3', '0');
INSERT INTO `sw_region` VALUES ('912', '103', '桂平市', '3', '0');
INSERT INTO `sw_region` VALUES ('913', '103', '平南县', '3', '0');
INSERT INTO `sw_region` VALUES ('914', '104', '金城江区', '3', '0');
INSERT INTO `sw_region` VALUES ('915', '104', '宜州市', '3', '0');
INSERT INTO `sw_region` VALUES ('916', '104', '天峨县', '3', '0');
INSERT INTO `sw_region` VALUES ('917', '104', '凤山县', '3', '0');
INSERT INTO `sw_region` VALUES ('918', '104', '南丹县', '3', '0');
INSERT INTO `sw_region` VALUES ('919', '104', '东兰县', '3', '0');
INSERT INTO `sw_region` VALUES ('920', '104', '都安', '3', '0');
INSERT INTO `sw_region` VALUES ('921', '104', '罗城', '3', '0');
INSERT INTO `sw_region` VALUES ('922', '104', '巴马', '3', '0');
INSERT INTO `sw_region` VALUES ('923', '104', '环江', '3', '0');
INSERT INTO `sw_region` VALUES ('924', '104', '大化', '3', '0');
INSERT INTO `sw_region` VALUES ('925', '105', '八步区', '3', '0');
INSERT INTO `sw_region` VALUES ('926', '105', '钟山县', '3', '0');
INSERT INTO `sw_region` VALUES ('927', '105', '昭平县', '3', '0');
INSERT INTO `sw_region` VALUES ('928', '105', '富川', '3', '0');
INSERT INTO `sw_region` VALUES ('929', '106', '兴宾区', '3', '0');
INSERT INTO `sw_region` VALUES ('930', '106', '合山市', '3', '0');
INSERT INTO `sw_region` VALUES ('931', '106', '象州县', '3', '0');
INSERT INTO `sw_region` VALUES ('932', '106', '武宣县', '3', '0');
INSERT INTO `sw_region` VALUES ('933', '106', '忻城县', '3', '0');
INSERT INTO `sw_region` VALUES ('934', '106', '金秀', '3', '0');
INSERT INTO `sw_region` VALUES ('935', '107', '城中区', '3', '0');
INSERT INTO `sw_region` VALUES ('936', '107', '鱼峰区', '3', '0');
INSERT INTO `sw_region` VALUES ('937', '107', '柳北区', '3', '0');
INSERT INTO `sw_region` VALUES ('938', '107', '柳南区', '3', '0');
INSERT INTO `sw_region` VALUES ('939', '107', '柳江县', '3', '0');
INSERT INTO `sw_region` VALUES ('940', '107', '柳城县', '3', '0');
INSERT INTO `sw_region` VALUES ('941', '107', '鹿寨县', '3', '0');
INSERT INTO `sw_region` VALUES ('942', '107', '融安县', '3', '0');
INSERT INTO `sw_region` VALUES ('943', '107', '融水', '3', '0');
INSERT INTO `sw_region` VALUES ('944', '107', '三江', '3', '0');
INSERT INTO `sw_region` VALUES ('945', '108', '钦南区', '3', '0');
INSERT INTO `sw_region` VALUES ('946', '108', '钦北区', '3', '0');
INSERT INTO `sw_region` VALUES ('947', '108', '灵山县', '3', '0');
INSERT INTO `sw_region` VALUES ('948', '108', '浦北县', '3', '0');
INSERT INTO `sw_region` VALUES ('949', '109', '万秀区', '3', '0');
INSERT INTO `sw_region` VALUES ('950', '109', '蝶山区', '3', '0');
INSERT INTO `sw_region` VALUES ('951', '109', '长洲区', '3', '0');
INSERT INTO `sw_region` VALUES ('952', '109', '岑溪市', '3', '0');
INSERT INTO `sw_region` VALUES ('953', '109', '苍梧县', '3', '0');
INSERT INTO `sw_region` VALUES ('954', '109', '藤县', '3', '0');
INSERT INTO `sw_region` VALUES ('955', '109', '蒙山县', '3', '0');
INSERT INTO `sw_region` VALUES ('956', '110', '玉州区', '3', '0');
INSERT INTO `sw_region` VALUES ('957', '110', '北流市', '3', '0');
INSERT INTO `sw_region` VALUES ('958', '110', '容县', '3', '0');
INSERT INTO `sw_region` VALUES ('959', '110', '陆川县', '3', '0');
INSERT INTO `sw_region` VALUES ('960', '110', '博白县', '3', '0');
INSERT INTO `sw_region` VALUES ('961', '110', '兴业县', '3', '0');
INSERT INTO `sw_region` VALUES ('962', '111', '南明区', '3', '0');
INSERT INTO `sw_region` VALUES ('963', '111', '云岩区', '3', '0');
INSERT INTO `sw_region` VALUES ('964', '111', '花溪区', '3', '0');
INSERT INTO `sw_region` VALUES ('965', '111', '乌当区', '3', '0');
INSERT INTO `sw_region` VALUES ('966', '111', '白云区', '3', '0');
INSERT INTO `sw_region` VALUES ('967', '111', '小河区', '3', '0');
INSERT INTO `sw_region` VALUES ('968', '111', '金阳新区', '3', '0');
INSERT INTO `sw_region` VALUES ('969', '111', '新天园区', '3', '0');
INSERT INTO `sw_region` VALUES ('970', '111', '清镇市', '3', '0');
INSERT INTO `sw_region` VALUES ('971', '111', '开阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('972', '111', '修文县', '3', '0');
INSERT INTO `sw_region` VALUES ('973', '111', '息烽县', '3', '0');
INSERT INTO `sw_region` VALUES ('974', '112', '西秀区', '3', '0');
INSERT INTO `sw_region` VALUES ('975', '112', '关岭', '3', '0');
INSERT INTO `sw_region` VALUES ('976', '112', '镇宁', '3', '0');
INSERT INTO `sw_region` VALUES ('977', '112', '紫云', '3', '0');
INSERT INTO `sw_region` VALUES ('978', '112', '平坝县', '3', '0');
INSERT INTO `sw_region` VALUES ('979', '112', '普定县', '3', '0');
INSERT INTO `sw_region` VALUES ('980', '113', '毕节市', '3', '0');
INSERT INTO `sw_region` VALUES ('981', '113', '大方县', '3', '0');
INSERT INTO `sw_region` VALUES ('982', '113', '黔西县', '3', '0');
INSERT INTO `sw_region` VALUES ('983', '113', '金沙县', '3', '0');
INSERT INTO `sw_region` VALUES ('984', '113', '织金县', '3', '0');
INSERT INTO `sw_region` VALUES ('985', '113', '纳雍县', '3', '0');
INSERT INTO `sw_region` VALUES ('986', '113', '赫章县', '3', '0');
INSERT INTO `sw_region` VALUES ('987', '113', '威宁', '3', '0');
INSERT INTO `sw_region` VALUES ('988', '114', '钟山区', '3', '0');
INSERT INTO `sw_region` VALUES ('989', '114', '六枝特区', '3', '0');
INSERT INTO `sw_region` VALUES ('990', '114', '水城县', '3', '0');
INSERT INTO `sw_region` VALUES ('991', '114', '盘县', '3', '0');
INSERT INTO `sw_region` VALUES ('992', '115', '凯里市', '3', '0');
INSERT INTO `sw_region` VALUES ('993', '115', '黄平县', '3', '0');
INSERT INTO `sw_region` VALUES ('994', '115', '施秉县', '3', '0');
INSERT INTO `sw_region` VALUES ('995', '115', '三穗县', '3', '0');
INSERT INTO `sw_region` VALUES ('996', '115', '镇远县', '3', '0');
INSERT INTO `sw_region` VALUES ('997', '115', '岑巩县', '3', '0');
INSERT INTO `sw_region` VALUES ('998', '115', '天柱县', '3', '0');
INSERT INTO `sw_region` VALUES ('999', '115', '锦屏县', '3', '0');
INSERT INTO `sw_region` VALUES ('1000', '115', '剑河县', '3', '0');
INSERT INTO `sw_region` VALUES ('1001', '115', '台江县', '3', '0');
INSERT INTO `sw_region` VALUES ('1002', '115', '黎平县', '3', '0');
INSERT INTO `sw_region` VALUES ('1003', '115', '榕江县', '3', '0');
INSERT INTO `sw_region` VALUES ('1004', '115', '从江县', '3', '0');
INSERT INTO `sw_region` VALUES ('1005', '115', '雷山县', '3', '0');
INSERT INTO `sw_region` VALUES ('1006', '115', '麻江县', '3', '0');
INSERT INTO `sw_region` VALUES ('1007', '115', '丹寨县', '3', '0');
INSERT INTO `sw_region` VALUES ('1008', '116', '都匀市', '3', '0');
INSERT INTO `sw_region` VALUES ('1009', '116', '福泉市', '3', '0');
INSERT INTO `sw_region` VALUES ('1010', '116', '荔波县', '3', '0');
INSERT INTO `sw_region` VALUES ('1011', '116', '贵定县', '3', '0');
INSERT INTO `sw_region` VALUES ('1012', '116', '瓮安县', '3', '0');
INSERT INTO `sw_region` VALUES ('1013', '116', '独山县', '3', '0');
INSERT INTO `sw_region` VALUES ('1014', '116', '平塘县', '3', '0');
INSERT INTO `sw_region` VALUES ('1015', '116', '罗甸县', '3', '0');
INSERT INTO `sw_region` VALUES ('1016', '116', '长顺县', '3', '0');
INSERT INTO `sw_region` VALUES ('1017', '116', '龙里县', '3', '0');
INSERT INTO `sw_region` VALUES ('1018', '116', '惠水县', '3', '0');
INSERT INTO `sw_region` VALUES ('1019', '116', '三都', '3', '0');
INSERT INTO `sw_region` VALUES ('1020', '117', '兴义市', '3', '0');
INSERT INTO `sw_region` VALUES ('1021', '117', '兴仁县', '3', '0');
INSERT INTO `sw_region` VALUES ('1022', '117', '普安县', '3', '0');
INSERT INTO `sw_region` VALUES ('1023', '117', '晴隆县', '3', '0');
INSERT INTO `sw_region` VALUES ('1024', '117', '贞丰县', '3', '0');
INSERT INTO `sw_region` VALUES ('1025', '117', '望谟县', '3', '0');
INSERT INTO `sw_region` VALUES ('1026', '117', '册亨县', '3', '0');
INSERT INTO `sw_region` VALUES ('1027', '117', '安龙县', '3', '0');
INSERT INTO `sw_region` VALUES ('1028', '118', '铜仁市', '3', '0');
INSERT INTO `sw_region` VALUES ('1029', '118', '江口县', '3', '0');
INSERT INTO `sw_region` VALUES ('1030', '118', '石阡县', '3', '0');
INSERT INTO `sw_region` VALUES ('1031', '118', '思南县', '3', '0');
INSERT INTO `sw_region` VALUES ('1032', '118', '德江县', '3', '0');
INSERT INTO `sw_region` VALUES ('1033', '118', '玉屏', '3', '0');
INSERT INTO `sw_region` VALUES ('1034', '118', '印江', '3', '0');
INSERT INTO `sw_region` VALUES ('1035', '118', '沿河', '3', '0');
INSERT INTO `sw_region` VALUES ('1036', '118', '松桃', '3', '0');
INSERT INTO `sw_region` VALUES ('1037', '118', '万山特区', '3', '0');
INSERT INTO `sw_region` VALUES ('1038', '119', '红花岗区', '3', '0');
INSERT INTO `sw_region` VALUES ('1039', '119', '务川县', '3', '0');
INSERT INTO `sw_region` VALUES ('1040', '119', '道真县', '3', '0');
INSERT INTO `sw_region` VALUES ('1041', '119', '汇川区', '3', '0');
INSERT INTO `sw_region` VALUES ('1042', '119', '赤水市', '3', '0');
INSERT INTO `sw_region` VALUES ('1043', '119', '仁怀市', '3', '0');
INSERT INTO `sw_region` VALUES ('1044', '119', '遵义县', '3', '0');
INSERT INTO `sw_region` VALUES ('1045', '119', '桐梓县', '3', '0');
INSERT INTO `sw_region` VALUES ('1046', '119', '绥阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('1047', '119', '正安县', '3', '0');
INSERT INTO `sw_region` VALUES ('1048', '119', '凤冈县', '3', '0');
INSERT INTO `sw_region` VALUES ('1049', '119', '湄潭县', '3', '0');
INSERT INTO `sw_region` VALUES ('1050', '119', '余庆县', '3', '0');
INSERT INTO `sw_region` VALUES ('1051', '119', '习水县', '3', '0');
INSERT INTO `sw_region` VALUES ('1052', '119', '道真', '3', '0');
INSERT INTO `sw_region` VALUES ('1053', '119', '务川', '3', '0');
INSERT INTO `sw_region` VALUES ('1054', '120', '秀英区', '3', '0');
INSERT INTO `sw_region` VALUES ('1055', '120', '龙华区', '3', '0');
INSERT INTO `sw_region` VALUES ('1056', '120', '琼山区', '3', '0');
INSERT INTO `sw_region` VALUES ('1057', '120', '美兰区', '3', '0');
INSERT INTO `sw_region` VALUES ('1058', '137', '市区', '3', '0');
INSERT INTO `sw_region` VALUES ('1059', '137', '洋浦开发区', '3', '0');
INSERT INTO `sw_region` VALUES ('1060', '137', '那大镇', '3', '0');
INSERT INTO `sw_region` VALUES ('1061', '137', '王五镇', '3', '0');
INSERT INTO `sw_region` VALUES ('1062', '137', '雅星镇', '3', '0');
INSERT INTO `sw_region` VALUES ('1063', '137', '大成镇', '3', '0');
INSERT INTO `sw_region` VALUES ('1064', '137', '中和镇', '3', '0');
INSERT INTO `sw_region` VALUES ('1065', '137', '峨蔓镇', '3', '0');
INSERT INTO `sw_region` VALUES ('1066', '137', '南丰镇', '3', '0');
INSERT INTO `sw_region` VALUES ('1067', '137', '白马井镇', '3', '0');
INSERT INTO `sw_region` VALUES ('1068', '137', '兰洋镇', '3', '0');
INSERT INTO `sw_region` VALUES ('1069', '137', '和庆镇', '3', '0');
INSERT INTO `sw_region` VALUES ('1070', '137', '海头镇', '3', '0');
INSERT INTO `sw_region` VALUES ('1071', '137', '排浦镇', '3', '0');
INSERT INTO `sw_region` VALUES ('1072', '137', '东成镇', '3', '0');
INSERT INTO `sw_region` VALUES ('1073', '137', '光村镇', '3', '0');
INSERT INTO `sw_region` VALUES ('1074', '137', '木棠镇', '3', '0');
INSERT INTO `sw_region` VALUES ('1075', '137', '新州镇', '3', '0');
INSERT INTO `sw_region` VALUES ('1076', '137', '三都镇', '3', '0');
INSERT INTO `sw_region` VALUES ('1077', '137', '其他', '3', '0');
INSERT INTO `sw_region` VALUES ('1078', '138', '长安区', '3', '0');
INSERT INTO `sw_region` VALUES ('1079', '138', '桥东区', '3', '0');
INSERT INTO `sw_region` VALUES ('1080', '138', '桥西区', '3', '0');
INSERT INTO `sw_region` VALUES ('1081', '138', '新华区', '3', '0');
INSERT INTO `sw_region` VALUES ('1082', '138', '裕华区', '3', '0');
INSERT INTO `sw_region` VALUES ('1083', '138', '井陉矿区', '3', '0');
INSERT INTO `sw_region` VALUES ('1084', '138', '高新区', '3', '0');
INSERT INTO `sw_region` VALUES ('1085', '138', '辛集市', '3', '0');
INSERT INTO `sw_region` VALUES ('1086', '138', '藁城市', '3', '0');
INSERT INTO `sw_region` VALUES ('1087', '138', '晋州市', '3', '0');
INSERT INTO `sw_region` VALUES ('1088', '138', '新乐市', '3', '0');
INSERT INTO `sw_region` VALUES ('1089', '138', '鹿泉市', '3', '0');
INSERT INTO `sw_region` VALUES ('1090', '138', '井陉县', '3', '0');
INSERT INTO `sw_region` VALUES ('1091', '138', '正定县', '3', '0');
INSERT INTO `sw_region` VALUES ('1092', '138', '栾城县', '3', '0');
INSERT INTO `sw_region` VALUES ('1093', '138', '行唐县', '3', '0');
INSERT INTO `sw_region` VALUES ('1094', '138', '灵寿县', '3', '0');
INSERT INTO `sw_region` VALUES ('1095', '138', '高邑县', '3', '0');
INSERT INTO `sw_region` VALUES ('1096', '138', '深泽县', '3', '0');
INSERT INTO `sw_region` VALUES ('1097', '138', '赞皇县', '3', '0');
INSERT INTO `sw_region` VALUES ('1098', '138', '无极县', '3', '0');
INSERT INTO `sw_region` VALUES ('1099', '138', '平山县', '3', '0');
INSERT INTO `sw_region` VALUES ('1100', '138', '元氏县', '3', '0');
INSERT INTO `sw_region` VALUES ('1101', '138', '赵县', '3', '0');
INSERT INTO `sw_region` VALUES ('1102', '139', '新市区', '3', '0');
INSERT INTO `sw_region` VALUES ('1103', '139', '南市区', '3', '0');
INSERT INTO `sw_region` VALUES ('1104', '139', '北市区', '3', '0');
INSERT INTO `sw_region` VALUES ('1105', '139', '涿州市', '3', '0');
INSERT INTO `sw_region` VALUES ('1106', '139', '定州市', '3', '0');
INSERT INTO `sw_region` VALUES ('1107', '139', '安国市', '3', '0');
INSERT INTO `sw_region` VALUES ('1108', '139', '高碑店市', '3', '0');
INSERT INTO `sw_region` VALUES ('1109', '139', '满城县', '3', '0');
INSERT INTO `sw_region` VALUES ('1110', '139', '清苑县', '3', '0');
INSERT INTO `sw_region` VALUES ('1111', '139', '涞水县', '3', '0');
INSERT INTO `sw_region` VALUES ('1112', '139', '阜平县', '3', '0');
INSERT INTO `sw_region` VALUES ('1113', '139', '徐水县', '3', '0');
INSERT INTO `sw_region` VALUES ('1114', '139', '定兴县', '3', '0');
INSERT INTO `sw_region` VALUES ('1115', '139', '唐县', '3', '0');
INSERT INTO `sw_region` VALUES ('1116', '139', '高阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('1117', '139', '容城县', '3', '0');
INSERT INTO `sw_region` VALUES ('1118', '139', '涞源县', '3', '0');
INSERT INTO `sw_region` VALUES ('1119', '139', '望都县', '3', '0');
INSERT INTO `sw_region` VALUES ('1120', '139', '安新县', '3', '0');
INSERT INTO `sw_region` VALUES ('1121', '139', '易县', '3', '0');
INSERT INTO `sw_region` VALUES ('1122', '139', '曲阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('1123', '139', '蠡县', '3', '0');
INSERT INTO `sw_region` VALUES ('1124', '139', '顺平县', '3', '0');
INSERT INTO `sw_region` VALUES ('1125', '139', '博野县', '3', '0');
INSERT INTO `sw_region` VALUES ('1126', '139', '雄县', '3', '0');
INSERT INTO `sw_region` VALUES ('1127', '140', '运河区', '3', '0');
INSERT INTO `sw_region` VALUES ('1128', '140', '新华区', '3', '0');
INSERT INTO `sw_region` VALUES ('1129', '140', '泊头市', '3', '0');
INSERT INTO `sw_region` VALUES ('1130', '140', '任丘市', '3', '0');
INSERT INTO `sw_region` VALUES ('1131', '140', '黄骅市', '3', '0');
INSERT INTO `sw_region` VALUES ('1132', '140', '河间市', '3', '0');
INSERT INTO `sw_region` VALUES ('1133', '140', '沧县', '3', '0');
INSERT INTO `sw_region` VALUES ('1134', '140', '青县', '3', '0');
INSERT INTO `sw_region` VALUES ('1135', '140', '东光县', '3', '0');
INSERT INTO `sw_region` VALUES ('1136', '140', '海兴县', '3', '0');
INSERT INTO `sw_region` VALUES ('1137', '140', '盐山县', '3', '0');
INSERT INTO `sw_region` VALUES ('1138', '140', '肃宁县', '3', '0');
INSERT INTO `sw_region` VALUES ('1139', '140', '南皮县', '3', '0');
INSERT INTO `sw_region` VALUES ('1140', '140', '吴桥县', '3', '0');
INSERT INTO `sw_region` VALUES ('1141', '140', '献县', '3', '0');
INSERT INTO `sw_region` VALUES ('1142', '140', '孟村', '3', '0');
INSERT INTO `sw_region` VALUES ('1143', '141', '双桥区', '3', '0');
INSERT INTO `sw_region` VALUES ('1144', '141', '双滦区', '3', '0');
INSERT INTO `sw_region` VALUES ('1145', '141', '鹰手营子矿区', '3', '0');
INSERT INTO `sw_region` VALUES ('1146', '141', '承德县', '3', '0');
INSERT INTO `sw_region` VALUES ('1147', '141', '兴隆县', '3', '0');
INSERT INTO `sw_region` VALUES ('1148', '141', '平泉县', '3', '0');
INSERT INTO `sw_region` VALUES ('1149', '141', '滦平县', '3', '0');
INSERT INTO `sw_region` VALUES ('1150', '141', '隆化县', '3', '0');
INSERT INTO `sw_region` VALUES ('1151', '141', '丰宁', '3', '0');
INSERT INTO `sw_region` VALUES ('1152', '141', '宽城', '3', '0');
INSERT INTO `sw_region` VALUES ('1153', '141', '围场', '3', '0');
INSERT INTO `sw_region` VALUES ('1154', '142', '从台区', '3', '0');
INSERT INTO `sw_region` VALUES ('1155', '142', '复兴区', '3', '0');
INSERT INTO `sw_region` VALUES ('1156', '142', '邯山区', '3', '0');
INSERT INTO `sw_region` VALUES ('1157', '142', '峰峰矿区', '3', '0');
INSERT INTO `sw_region` VALUES ('1158', '142', '武安市', '3', '0');
INSERT INTO `sw_region` VALUES ('1159', '142', '邯郸县', '3', '0');
INSERT INTO `sw_region` VALUES ('1160', '142', '临漳县', '3', '0');
INSERT INTO `sw_region` VALUES ('1161', '142', '成安县', '3', '0');
INSERT INTO `sw_region` VALUES ('1162', '142', '大名县', '3', '0');
INSERT INTO `sw_region` VALUES ('1163', '142', '涉县', '3', '0');
INSERT INTO `sw_region` VALUES ('1164', '142', '磁县', '3', '0');
INSERT INTO `sw_region` VALUES ('1165', '142', '肥乡县', '3', '0');
INSERT INTO `sw_region` VALUES ('1166', '142', '永年县', '3', '0');
INSERT INTO `sw_region` VALUES ('1167', '142', '邱县', '3', '0');
INSERT INTO `sw_region` VALUES ('1168', '142', '鸡泽县', '3', '0');
INSERT INTO `sw_region` VALUES ('1169', '142', '广平县', '3', '0');
INSERT INTO `sw_region` VALUES ('1170', '142', '馆陶县', '3', '0');
INSERT INTO `sw_region` VALUES ('1171', '142', '魏县', '3', '0');
INSERT INTO `sw_region` VALUES ('1172', '142', '曲周县', '3', '0');
INSERT INTO `sw_region` VALUES ('1173', '143', '桃城区', '3', '0');
INSERT INTO `sw_region` VALUES ('1174', '143', '冀州市', '3', '0');
INSERT INTO `sw_region` VALUES ('1175', '143', '深州市', '3', '0');
INSERT INTO `sw_region` VALUES ('1176', '143', '枣强县', '3', '0');
INSERT INTO `sw_region` VALUES ('1177', '143', '武邑县', '3', '0');
INSERT INTO `sw_region` VALUES ('1178', '143', '武强县', '3', '0');
INSERT INTO `sw_region` VALUES ('1179', '143', '饶阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('1180', '143', '安平县', '3', '0');
INSERT INTO `sw_region` VALUES ('1181', '143', '故城县', '3', '0');
INSERT INTO `sw_region` VALUES ('1182', '143', '景县', '3', '0');
INSERT INTO `sw_region` VALUES ('1183', '143', '阜城县', '3', '0');
INSERT INTO `sw_region` VALUES ('1184', '144', '安次区', '3', '0');
INSERT INTO `sw_region` VALUES ('1185', '144', '广阳区', '3', '0');
INSERT INTO `sw_region` VALUES ('1186', '144', '霸州市', '3', '0');
INSERT INTO `sw_region` VALUES ('1187', '144', '三河市', '3', '0');
INSERT INTO `sw_region` VALUES ('1188', '144', '固安县', '3', '0');
INSERT INTO `sw_region` VALUES ('1189', '144', '永清县', '3', '0');
INSERT INTO `sw_region` VALUES ('1190', '144', '香河县', '3', '0');
INSERT INTO `sw_region` VALUES ('1191', '144', '大城县', '3', '0');
INSERT INTO `sw_region` VALUES ('1192', '144', '文安县', '3', '0');
INSERT INTO `sw_region` VALUES ('1193', '144', '大厂', '3', '0');
INSERT INTO `sw_region` VALUES ('1194', '145', '海港区', '3', '0');
INSERT INTO `sw_region` VALUES ('1195', '145', '山海关区', '3', '0');
INSERT INTO `sw_region` VALUES ('1196', '145', '北戴河区', '3', '0');
INSERT INTO `sw_region` VALUES ('1197', '145', '昌黎县', '3', '0');
INSERT INTO `sw_region` VALUES ('1198', '145', '抚宁县', '3', '0');
INSERT INTO `sw_region` VALUES ('1199', '145', '卢龙县', '3', '0');
INSERT INTO `sw_region` VALUES ('1200', '145', '青龙', '3', '0');
INSERT INTO `sw_region` VALUES ('1201', '146', '路北区', '3', '0');
INSERT INTO `sw_region` VALUES ('1202', '146', '路南区', '3', '0');
INSERT INTO `sw_region` VALUES ('1203', '146', '古冶区', '3', '0');
INSERT INTO `sw_region` VALUES ('1204', '146', '开平区', '3', '0');
INSERT INTO `sw_region` VALUES ('1205', '146', '丰南区', '3', '0');
INSERT INTO `sw_region` VALUES ('1206', '146', '丰润区', '3', '0');
INSERT INTO `sw_region` VALUES ('1207', '146', '遵化市', '3', '0');
INSERT INTO `sw_region` VALUES ('1208', '146', '迁安市', '3', '0');
INSERT INTO `sw_region` VALUES ('1209', '146', '滦县', '3', '0');
INSERT INTO `sw_region` VALUES ('1210', '146', '滦南县', '3', '0');
INSERT INTO `sw_region` VALUES ('1211', '146', '乐亭县', '3', '0');
INSERT INTO `sw_region` VALUES ('1212', '146', '迁西县', '3', '0');
INSERT INTO `sw_region` VALUES ('1213', '146', '玉田县', '3', '0');
INSERT INTO `sw_region` VALUES ('1214', '146', '唐海县', '3', '0');
INSERT INTO `sw_region` VALUES ('1215', '147', '桥东区', '3', '0');
INSERT INTO `sw_region` VALUES ('1216', '147', '桥西区', '3', '0');
INSERT INTO `sw_region` VALUES ('1217', '147', '南宫市', '3', '0');
INSERT INTO `sw_region` VALUES ('1218', '147', '沙河市', '3', '0');
INSERT INTO `sw_region` VALUES ('1219', '147', '邢台县', '3', '0');
INSERT INTO `sw_region` VALUES ('1220', '147', '临城县', '3', '0');
INSERT INTO `sw_region` VALUES ('1221', '147', '内丘县', '3', '0');
INSERT INTO `sw_region` VALUES ('1222', '147', '柏乡县', '3', '0');
INSERT INTO `sw_region` VALUES ('1223', '147', '隆尧县', '3', '0');
INSERT INTO `sw_region` VALUES ('1224', '147', '任县', '3', '0');
INSERT INTO `sw_region` VALUES ('1225', '147', '南和县', '3', '0');
INSERT INTO `sw_region` VALUES ('1226', '147', '宁晋县', '3', '0');
INSERT INTO `sw_region` VALUES ('1227', '147', '巨鹿县', '3', '0');
INSERT INTO `sw_region` VALUES ('1228', '147', '新河县', '3', '0');
INSERT INTO `sw_region` VALUES ('1229', '147', '广宗县', '3', '0');
INSERT INTO `sw_region` VALUES ('1230', '147', '平乡县', '3', '0');
INSERT INTO `sw_region` VALUES ('1231', '147', '威县', '3', '0');
INSERT INTO `sw_region` VALUES ('1232', '147', '清河县', '3', '0');
INSERT INTO `sw_region` VALUES ('1233', '147', '临西县', '3', '0');
INSERT INTO `sw_region` VALUES ('1234', '148', '桥西区', '3', '0');
INSERT INTO `sw_region` VALUES ('1235', '148', '桥东区', '3', '0');
INSERT INTO `sw_region` VALUES ('1236', '148', '宣化区', '3', '0');
INSERT INTO `sw_region` VALUES ('1237', '148', '下花园区', '3', '0');
INSERT INTO `sw_region` VALUES ('1238', '148', '宣化县', '3', '0');
INSERT INTO `sw_region` VALUES ('1239', '148', '张北县', '3', '0');
INSERT INTO `sw_region` VALUES ('1240', '148', '康保县', '3', '0');
INSERT INTO `sw_region` VALUES ('1241', '148', '沽源县', '3', '0');
INSERT INTO `sw_region` VALUES ('1242', '148', '尚义县', '3', '0');
INSERT INTO `sw_region` VALUES ('1243', '148', '蔚县', '3', '0');
INSERT INTO `sw_region` VALUES ('1244', '148', '阳原县', '3', '0');
INSERT INTO `sw_region` VALUES ('1245', '148', '怀安县', '3', '0');
INSERT INTO `sw_region` VALUES ('1246', '148', '万全县', '3', '0');
INSERT INTO `sw_region` VALUES ('1247', '148', '怀来县', '3', '0');
INSERT INTO `sw_region` VALUES ('1248', '148', '涿鹿县', '3', '0');
INSERT INTO `sw_region` VALUES ('1249', '148', '赤城县', '3', '0');
INSERT INTO `sw_region` VALUES ('1250', '148', '崇礼县', '3', '0');
INSERT INTO `sw_region` VALUES ('1251', '149', '金水区', '3', '0');
INSERT INTO `sw_region` VALUES ('1252', '149', '邙山区', '3', '0');
INSERT INTO `sw_region` VALUES ('1253', '149', '二七区', '3', '0');
INSERT INTO `sw_region` VALUES ('1254', '149', '管城区', '3', '0');
INSERT INTO `sw_region` VALUES ('1255', '149', '中原区', '3', '0');
INSERT INTO `sw_region` VALUES ('1256', '149', '上街区', '3', '0');
INSERT INTO `sw_region` VALUES ('1257', '149', '惠济区', '3', '0');
INSERT INTO `sw_region` VALUES ('1258', '149', '郑东新区', '3', '0');
INSERT INTO `sw_region` VALUES ('1259', '149', '经济技术开发区', '3', '0');
INSERT INTO `sw_region` VALUES ('1260', '149', '高新开发区', '3', '0');
INSERT INTO `sw_region` VALUES ('1261', '149', '出口加工区', '3', '0');
INSERT INTO `sw_region` VALUES ('1262', '149', '巩义市', '3', '0');
INSERT INTO `sw_region` VALUES ('1263', '149', '荥阳市', '3', '0');
INSERT INTO `sw_region` VALUES ('1264', '149', '新密市', '3', '0');
INSERT INTO `sw_region` VALUES ('1265', '149', '新郑市', '3', '0');
INSERT INTO `sw_region` VALUES ('1266', '149', '登封市', '3', '0');
INSERT INTO `sw_region` VALUES ('1267', '149', '中牟县', '3', '0');
INSERT INTO `sw_region` VALUES ('1268', '150', '西工区', '3', '0');
INSERT INTO `sw_region` VALUES ('1269', '150', '老城区', '3', '0');
INSERT INTO `sw_region` VALUES ('1270', '150', '涧西区', '3', '0');
INSERT INTO `sw_region` VALUES ('1271', '150', '瀍河回族区', '3', '0');
INSERT INTO `sw_region` VALUES ('1272', '150', '洛龙区', '3', '0');
INSERT INTO `sw_region` VALUES ('1273', '150', '吉利区', '3', '0');
INSERT INTO `sw_region` VALUES ('1274', '150', '偃师市', '3', '0');
INSERT INTO `sw_region` VALUES ('1275', '150', '孟津县', '3', '0');
INSERT INTO `sw_region` VALUES ('1276', '150', '新安县', '3', '0');
INSERT INTO `sw_region` VALUES ('1277', '150', '栾川县', '3', '0');
INSERT INTO `sw_region` VALUES ('1278', '150', '嵩县', '3', '0');
INSERT INTO `sw_region` VALUES ('1279', '150', '汝阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('1280', '150', '宜阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('1281', '150', '洛宁县', '3', '0');
INSERT INTO `sw_region` VALUES ('1282', '150', '伊川县', '3', '0');
INSERT INTO `sw_region` VALUES ('1283', '151', '鼓楼区', '3', '0');
INSERT INTO `sw_region` VALUES ('1284', '151', '龙亭区', '3', '0');
INSERT INTO `sw_region` VALUES ('1285', '151', '顺河回族区', '3', '0');
INSERT INTO `sw_region` VALUES ('1286', '151', '金明区', '3', '0');
INSERT INTO `sw_region` VALUES ('1287', '151', '禹王台区', '3', '0');
INSERT INTO `sw_region` VALUES ('1288', '151', '杞县', '3', '0');
INSERT INTO `sw_region` VALUES ('1289', '151', '通许县', '3', '0');
INSERT INTO `sw_region` VALUES ('1290', '151', '尉氏县', '3', '0');
INSERT INTO `sw_region` VALUES ('1291', '151', '开封县', '3', '0');
INSERT INTO `sw_region` VALUES ('1292', '151', '兰考县', '3', '0');
INSERT INTO `sw_region` VALUES ('1293', '152', '北关区', '3', '0');
INSERT INTO `sw_region` VALUES ('1294', '152', '文峰区', '3', '0');
INSERT INTO `sw_region` VALUES ('1295', '152', '殷都区', '3', '0');
INSERT INTO `sw_region` VALUES ('1296', '152', '龙安区', '3', '0');
INSERT INTO `sw_region` VALUES ('1297', '152', '林州市', '3', '0');
INSERT INTO `sw_region` VALUES ('1298', '152', '安阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('1299', '152', '汤阴县', '3', '0');
INSERT INTO `sw_region` VALUES ('1300', '152', '滑县', '3', '0');
INSERT INTO `sw_region` VALUES ('1301', '152', '内黄县', '3', '0');
INSERT INTO `sw_region` VALUES ('1302', '153', '淇滨区', '3', '0');
INSERT INTO `sw_region` VALUES ('1303', '153', '山城区', '3', '0');
INSERT INTO `sw_region` VALUES ('1304', '153', '鹤山区', '3', '0');
INSERT INTO `sw_region` VALUES ('1305', '153', '浚县', '3', '0');
INSERT INTO `sw_region` VALUES ('1306', '153', '淇县', '3', '0');
INSERT INTO `sw_region` VALUES ('1307', '154', '济源市', '3', '0');
INSERT INTO `sw_region` VALUES ('1308', '155', '解放区', '3', '0');
INSERT INTO `sw_region` VALUES ('1309', '155', '中站区', '3', '0');
INSERT INTO `sw_region` VALUES ('1310', '155', '马村区', '3', '0');
INSERT INTO `sw_region` VALUES ('1311', '155', '山阳区', '3', '0');
INSERT INTO `sw_region` VALUES ('1312', '155', '沁阳市', '3', '0');
INSERT INTO `sw_region` VALUES ('1313', '155', '孟州市', '3', '0');
INSERT INTO `sw_region` VALUES ('1314', '155', '修武县', '3', '0');
INSERT INTO `sw_region` VALUES ('1315', '155', '博爱县', '3', '0');
INSERT INTO `sw_region` VALUES ('1316', '155', '武陟县', '3', '0');
INSERT INTO `sw_region` VALUES ('1317', '155', '温县', '3', '0');
INSERT INTO `sw_region` VALUES ('1318', '156', '卧龙区', '3', '0');
INSERT INTO `sw_region` VALUES ('1319', '156', '宛城区', '3', '0');
INSERT INTO `sw_region` VALUES ('1320', '156', '邓州市', '3', '0');
INSERT INTO `sw_region` VALUES ('1321', '156', '南召县', '3', '0');
INSERT INTO `sw_region` VALUES ('1322', '156', '方城县', '3', '0');
INSERT INTO `sw_region` VALUES ('1323', '156', '西峡县', '3', '0');
INSERT INTO `sw_region` VALUES ('1324', '156', '镇平县', '3', '0');
INSERT INTO `sw_region` VALUES ('1325', '156', '内乡县', '3', '0');
INSERT INTO `sw_region` VALUES ('1326', '156', '淅川县', '3', '0');
INSERT INTO `sw_region` VALUES ('1327', '156', '社旗县', '3', '0');
INSERT INTO `sw_region` VALUES ('1328', '156', '唐河县', '3', '0');
INSERT INTO `sw_region` VALUES ('1329', '156', '新野县', '3', '0');
INSERT INTO `sw_region` VALUES ('1330', '156', '桐柏县', '3', '0');
INSERT INTO `sw_region` VALUES ('1331', '157', '新华区', '3', '0');
INSERT INTO `sw_region` VALUES ('1332', '157', '卫东区', '3', '0');
INSERT INTO `sw_region` VALUES ('1333', '157', '湛河区', '3', '0');
INSERT INTO `sw_region` VALUES ('1334', '157', '石龙区', '3', '0');
INSERT INTO `sw_region` VALUES ('1335', '157', '舞钢市', '3', '0');
INSERT INTO `sw_region` VALUES ('1336', '157', '汝州市', '3', '0');
INSERT INTO `sw_region` VALUES ('1337', '157', '宝丰县', '3', '0');
INSERT INTO `sw_region` VALUES ('1338', '157', '叶县', '3', '0');
INSERT INTO `sw_region` VALUES ('1339', '157', '鲁山县', '3', '0');
INSERT INTO `sw_region` VALUES ('1340', '157', '郏县', '3', '0');
INSERT INTO `sw_region` VALUES ('1341', '158', '湖滨区', '3', '0');
INSERT INTO `sw_region` VALUES ('1342', '158', '义马市', '3', '0');
INSERT INTO `sw_region` VALUES ('1343', '158', '灵宝市', '3', '0');
INSERT INTO `sw_region` VALUES ('1344', '158', '渑池县', '3', '0');
INSERT INTO `sw_region` VALUES ('1345', '158', '陕县', '3', '0');
INSERT INTO `sw_region` VALUES ('1346', '158', '卢氏县', '3', '0');
INSERT INTO `sw_region` VALUES ('1347', '159', '梁园区', '3', '0');
INSERT INTO `sw_region` VALUES ('1348', '159', '睢阳区', '3', '0');
INSERT INTO `sw_region` VALUES ('1349', '159', '永城市', '3', '0');
INSERT INTO `sw_region` VALUES ('1350', '159', '民权县', '3', '0');
INSERT INTO `sw_region` VALUES ('1351', '159', '睢县', '3', '0');
INSERT INTO `sw_region` VALUES ('1352', '159', '宁陵县', '3', '0');
INSERT INTO `sw_region` VALUES ('1353', '159', '虞城县', '3', '0');
INSERT INTO `sw_region` VALUES ('1354', '159', '柘城县', '3', '0');
INSERT INTO `sw_region` VALUES ('1355', '159', '夏邑县', '3', '0');
INSERT INTO `sw_region` VALUES ('1356', '160', '卫滨区', '3', '0');
INSERT INTO `sw_region` VALUES ('1357', '160', '红旗区', '3', '0');
INSERT INTO `sw_region` VALUES ('1358', '160', '凤泉区', '3', '0');
INSERT INTO `sw_region` VALUES ('1359', '160', '牧野区', '3', '0');
INSERT INTO `sw_region` VALUES ('1360', '160', '卫辉市', '3', '0');
INSERT INTO `sw_region` VALUES ('1361', '160', '辉县市', '3', '0');
INSERT INTO `sw_region` VALUES ('1362', '160', '新乡县', '3', '0');
INSERT INTO `sw_region` VALUES ('1363', '160', '获嘉县', '3', '0');
INSERT INTO `sw_region` VALUES ('1364', '160', '原阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('1365', '160', '延津县', '3', '0');
INSERT INTO `sw_region` VALUES ('1366', '160', '封丘县', '3', '0');
INSERT INTO `sw_region` VALUES ('1367', '160', '长垣县', '3', '0');
INSERT INTO `sw_region` VALUES ('1368', '161', '浉河区', '3', '0');
INSERT INTO `sw_region` VALUES ('1369', '161', '平桥区', '3', '0');
INSERT INTO `sw_region` VALUES ('1370', '161', '罗山县', '3', '0');
INSERT INTO `sw_region` VALUES ('1371', '161', '光山县', '3', '0');
INSERT INTO `sw_region` VALUES ('1372', '161', '新县', '3', '0');
INSERT INTO `sw_region` VALUES ('1373', '161', '商城县', '3', '0');
INSERT INTO `sw_region` VALUES ('1374', '161', '固始县', '3', '0');
INSERT INTO `sw_region` VALUES ('1375', '161', '潢川县', '3', '0');
INSERT INTO `sw_region` VALUES ('1376', '161', '淮滨县', '3', '0');
INSERT INTO `sw_region` VALUES ('1377', '161', '息县', '3', '0');
INSERT INTO `sw_region` VALUES ('1378', '162', '魏都区', '3', '0');
INSERT INTO `sw_region` VALUES ('1379', '162', '禹州市', '3', '0');
INSERT INTO `sw_region` VALUES ('1380', '162', '长葛市', '3', '0');
INSERT INTO `sw_region` VALUES ('1381', '162', '许昌县', '3', '0');
INSERT INTO `sw_region` VALUES ('1382', '162', '鄢陵县', '3', '0');
INSERT INTO `sw_region` VALUES ('1383', '162', '襄城县', '3', '0');
INSERT INTO `sw_region` VALUES ('1384', '163', '川汇区', '3', '0');
INSERT INTO `sw_region` VALUES ('1385', '163', '项城市', '3', '0');
INSERT INTO `sw_region` VALUES ('1386', '163', '扶沟县', '3', '0');
INSERT INTO `sw_region` VALUES ('1387', '163', '西华县', '3', '0');
INSERT INTO `sw_region` VALUES ('1388', '163', '商水县', '3', '0');
INSERT INTO `sw_region` VALUES ('1389', '163', '沈丘县', '3', '0');
INSERT INTO `sw_region` VALUES ('1390', '163', '郸城县', '3', '0');
INSERT INTO `sw_region` VALUES ('1391', '163', '淮阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('1392', '163', '太康县', '3', '0');
INSERT INTO `sw_region` VALUES ('1393', '163', '鹿邑县', '3', '0');
INSERT INTO `sw_region` VALUES ('1394', '164', '驿城区', '3', '0');
INSERT INTO `sw_region` VALUES ('1395', '164', '西平县', '3', '0');
INSERT INTO `sw_region` VALUES ('1396', '164', '上蔡县', '3', '0');
INSERT INTO `sw_region` VALUES ('1397', '164', '平舆县', '3', '0');
INSERT INTO `sw_region` VALUES ('1398', '164', '正阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('1399', '164', '确山县', '3', '0');
INSERT INTO `sw_region` VALUES ('1400', '164', '泌阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('1401', '164', '汝南县', '3', '0');
INSERT INTO `sw_region` VALUES ('1402', '164', '遂平县', '3', '0');
INSERT INTO `sw_region` VALUES ('1403', '164', '新蔡县', '3', '0');
INSERT INTO `sw_region` VALUES ('1404', '165', '郾城区', '3', '0');
INSERT INTO `sw_region` VALUES ('1405', '165', '源汇区', '3', '0');
INSERT INTO `sw_region` VALUES ('1406', '165', '召陵区', '3', '0');
INSERT INTO `sw_region` VALUES ('1407', '165', '舞阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('1408', '165', '临颍县', '3', '0');
INSERT INTO `sw_region` VALUES ('1409', '166', '华龙区', '3', '0');
INSERT INTO `sw_region` VALUES ('1410', '166', '清丰县', '3', '0');
INSERT INTO `sw_region` VALUES ('1411', '166', '南乐县', '3', '0');
INSERT INTO `sw_region` VALUES ('1412', '166', '范县', '3', '0');
INSERT INTO `sw_region` VALUES ('1413', '166', '台前县', '3', '0');
INSERT INTO `sw_region` VALUES ('1414', '166', '濮阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('1415', '167', '道里区', '3', '0');
INSERT INTO `sw_region` VALUES ('1416', '167', '南岗区', '3', '0');
INSERT INTO `sw_region` VALUES ('1417', '167', '动力区', '3', '0');
INSERT INTO `sw_region` VALUES ('1418', '167', '平房区', '3', '0');
INSERT INTO `sw_region` VALUES ('1419', '167', '香坊区', '3', '0');
INSERT INTO `sw_region` VALUES ('1420', '167', '太平区', '3', '0');
INSERT INTO `sw_region` VALUES ('1421', '167', '道外区', '3', '0');
INSERT INTO `sw_region` VALUES ('1422', '167', '阿城区', '3', '0');
INSERT INTO `sw_region` VALUES ('1423', '167', '呼兰区', '3', '0');
INSERT INTO `sw_region` VALUES ('1424', '167', '松北区', '3', '0');
INSERT INTO `sw_region` VALUES ('1425', '167', '尚志市', '3', '0');
INSERT INTO `sw_region` VALUES ('1426', '167', '双城市', '3', '0');
INSERT INTO `sw_region` VALUES ('1427', '167', '五常市', '3', '0');
INSERT INTO `sw_region` VALUES ('1428', '167', '方正县', '3', '0');
INSERT INTO `sw_region` VALUES ('1429', '167', '宾县', '3', '0');
INSERT INTO `sw_region` VALUES ('1430', '167', '依兰县', '3', '0');
INSERT INTO `sw_region` VALUES ('1431', '167', '巴彦县', '3', '0');
INSERT INTO `sw_region` VALUES ('1432', '167', '通河县', '3', '0');
INSERT INTO `sw_region` VALUES ('1433', '167', '木兰县', '3', '0');
INSERT INTO `sw_region` VALUES ('1434', '167', '延寿县', '3', '0');
INSERT INTO `sw_region` VALUES ('1435', '168', '萨尔图区', '3', '0');
INSERT INTO `sw_region` VALUES ('1436', '168', '红岗区', '3', '0');
INSERT INTO `sw_region` VALUES ('1437', '168', '龙凤区', '3', '0');
INSERT INTO `sw_region` VALUES ('1438', '168', '让胡路区', '3', '0');
INSERT INTO `sw_region` VALUES ('1439', '168', '大同区', '3', '0');
INSERT INTO `sw_region` VALUES ('1440', '168', '肇州县', '3', '0');
INSERT INTO `sw_region` VALUES ('1441', '168', '肇源县', '3', '0');
INSERT INTO `sw_region` VALUES ('1442', '168', '林甸县', '3', '0');
INSERT INTO `sw_region` VALUES ('1443', '168', '杜尔伯特', '3', '0');
INSERT INTO `sw_region` VALUES ('1444', '169', '呼玛县', '3', '0');
INSERT INTO `sw_region` VALUES ('1445', '169', '漠河县', '3', '0');
INSERT INTO `sw_region` VALUES ('1446', '169', '塔河县', '3', '0');
INSERT INTO `sw_region` VALUES ('1447', '170', '兴山区', '3', '0');
INSERT INTO `sw_region` VALUES ('1448', '170', '工农区', '3', '0');
INSERT INTO `sw_region` VALUES ('1449', '170', '南山区', '3', '0');
INSERT INTO `sw_region` VALUES ('1450', '170', '兴安区', '3', '0');
INSERT INTO `sw_region` VALUES ('1451', '170', '向阳区', '3', '0');
INSERT INTO `sw_region` VALUES ('1452', '170', '东山区', '3', '0');
INSERT INTO `sw_region` VALUES ('1453', '170', '萝北县', '3', '0');
INSERT INTO `sw_region` VALUES ('1454', '170', '绥滨县', '3', '0');
INSERT INTO `sw_region` VALUES ('1455', '171', '爱辉区', '3', '0');
INSERT INTO `sw_region` VALUES ('1456', '171', '五大连池市', '3', '0');
INSERT INTO `sw_region` VALUES ('1457', '171', '北安市', '3', '0');
INSERT INTO `sw_region` VALUES ('1458', '171', '嫩江县', '3', '0');
INSERT INTO `sw_region` VALUES ('1459', '171', '逊克县', '3', '0');
INSERT INTO `sw_region` VALUES ('1460', '171', '孙吴县', '3', '0');
INSERT INTO `sw_region` VALUES ('1461', '172', '鸡冠区', '3', '0');
INSERT INTO `sw_region` VALUES ('1462', '172', '恒山区', '3', '0');
INSERT INTO `sw_region` VALUES ('1463', '172', '城子河区', '3', '0');
INSERT INTO `sw_region` VALUES ('1464', '172', '滴道区', '3', '0');
INSERT INTO `sw_region` VALUES ('1465', '172', '梨树区', '3', '0');
INSERT INTO `sw_region` VALUES ('1466', '172', '虎林市', '3', '0');
INSERT INTO `sw_region` VALUES ('1467', '172', '密山市', '3', '0');
INSERT INTO `sw_region` VALUES ('1468', '172', '鸡东县', '3', '0');
INSERT INTO `sw_region` VALUES ('1469', '173', '前进区', '3', '0');
INSERT INTO `sw_region` VALUES ('1470', '173', '郊区', '3', '0');
INSERT INTO `sw_region` VALUES ('1471', '173', '向阳区', '3', '0');
INSERT INTO `sw_region` VALUES ('1472', '173', '东风区', '3', '0');
INSERT INTO `sw_region` VALUES ('1473', '173', '同江市', '3', '0');
INSERT INTO `sw_region` VALUES ('1474', '173', '富锦市', '3', '0');
INSERT INTO `sw_region` VALUES ('1475', '173', '桦南县', '3', '0');
INSERT INTO `sw_region` VALUES ('1476', '173', '桦川县', '3', '0');
INSERT INTO `sw_region` VALUES ('1477', '173', '汤原县', '3', '0');
INSERT INTO `sw_region` VALUES ('1478', '173', '抚远县', '3', '0');
INSERT INTO `sw_region` VALUES ('1479', '174', '爱民区', '3', '0');
INSERT INTO `sw_region` VALUES ('1480', '174', '东安区', '3', '0');
INSERT INTO `sw_region` VALUES ('1481', '174', '阳明区', '3', '0');
INSERT INTO `sw_region` VALUES ('1482', '174', '西安区', '3', '0');
INSERT INTO `sw_region` VALUES ('1483', '174', '绥芬河市', '3', '0');
INSERT INTO `sw_region` VALUES ('1484', '174', '海林市', '3', '0');
INSERT INTO `sw_region` VALUES ('1485', '174', '宁安市', '3', '0');
INSERT INTO `sw_region` VALUES ('1486', '174', '穆棱市', '3', '0');
INSERT INTO `sw_region` VALUES ('1487', '174', '东宁县', '3', '0');
INSERT INTO `sw_region` VALUES ('1488', '174', '林口县', '3', '0');
INSERT INTO `sw_region` VALUES ('1489', '175', '桃山区', '3', '0');
INSERT INTO `sw_region` VALUES ('1490', '175', '新兴区', '3', '0');
INSERT INTO `sw_region` VALUES ('1491', '175', '茄子河区', '3', '0');
INSERT INTO `sw_region` VALUES ('1492', '175', '勃利县', '3', '0');
INSERT INTO `sw_region` VALUES ('1493', '176', '龙沙区', '3', '0');
INSERT INTO `sw_region` VALUES ('1494', '176', '昂昂溪区', '3', '0');
INSERT INTO `sw_region` VALUES ('1495', '176', '铁峰区', '3', '0');
INSERT INTO `sw_region` VALUES ('1496', '176', '建华区', '3', '0');
INSERT INTO `sw_region` VALUES ('1497', '176', '富拉尔基区', '3', '0');
INSERT INTO `sw_region` VALUES ('1498', '176', '碾子山区', '3', '0');
INSERT INTO `sw_region` VALUES ('1499', '176', '梅里斯达斡尔区', '3', '0');
INSERT INTO `sw_region` VALUES ('1500', '176', '讷河市', '3', '0');
INSERT INTO `sw_region` VALUES ('1501', '176', '龙江县', '3', '0');
INSERT INTO `sw_region` VALUES ('1502', '176', '依安县', '3', '0');
INSERT INTO `sw_region` VALUES ('1503', '176', '泰来县', '3', '0');
INSERT INTO `sw_region` VALUES ('1504', '176', '甘南县', '3', '0');
INSERT INTO `sw_region` VALUES ('1505', '176', '富裕县', '3', '0');
INSERT INTO `sw_region` VALUES ('1506', '176', '克山县', '3', '0');
INSERT INTO `sw_region` VALUES ('1507', '176', '克东县', '3', '0');
INSERT INTO `sw_region` VALUES ('1508', '176', '拜泉县', '3', '0');
INSERT INTO `sw_region` VALUES ('1509', '177', '尖山区', '3', '0');
INSERT INTO `sw_region` VALUES ('1510', '177', '岭东区', '3', '0');
INSERT INTO `sw_region` VALUES ('1511', '177', '四方台区', '3', '0');
INSERT INTO `sw_region` VALUES ('1512', '177', '宝山区', '3', '0');
INSERT INTO `sw_region` VALUES ('1513', '177', '集贤县', '3', '0');
INSERT INTO `sw_region` VALUES ('1514', '177', '友谊县', '3', '0');
INSERT INTO `sw_region` VALUES ('1515', '177', '宝清县', '3', '0');
INSERT INTO `sw_region` VALUES ('1516', '177', '饶河县', '3', '0');
INSERT INTO `sw_region` VALUES ('1517', '178', '北林区', '3', '0');
INSERT INTO `sw_region` VALUES ('1518', '178', '安达市', '3', '0');
INSERT INTO `sw_region` VALUES ('1519', '178', '肇东市', '3', '0');
INSERT INTO `sw_region` VALUES ('1520', '178', '海伦市', '3', '0');
INSERT INTO `sw_region` VALUES ('1521', '178', '望奎县', '3', '0');
INSERT INTO `sw_region` VALUES ('1522', '178', '兰西县', '3', '0');
INSERT INTO `sw_region` VALUES ('1523', '178', '青冈县', '3', '0');
INSERT INTO `sw_region` VALUES ('1524', '178', '庆安县', '3', '0');
INSERT INTO `sw_region` VALUES ('1525', '178', '明水县', '3', '0');
INSERT INTO `sw_region` VALUES ('1526', '178', '绥棱县', '3', '0');
INSERT INTO `sw_region` VALUES ('1527', '179', '伊春区', '3', '0');
INSERT INTO `sw_region` VALUES ('1528', '179', '带岭区', '3', '0');
INSERT INTO `sw_region` VALUES ('1529', '179', '南岔区', '3', '0');
INSERT INTO `sw_region` VALUES ('1530', '179', '金山屯区', '3', '0');
INSERT INTO `sw_region` VALUES ('1531', '179', '西林区', '3', '0');
INSERT INTO `sw_region` VALUES ('1532', '179', '美溪区', '3', '0');
INSERT INTO `sw_region` VALUES ('1533', '179', '乌马河区', '3', '0');
INSERT INTO `sw_region` VALUES ('1534', '179', '翠峦区', '3', '0');
INSERT INTO `sw_region` VALUES ('1535', '179', '友好区', '3', '0');
INSERT INTO `sw_region` VALUES ('1536', '179', '上甘岭区', '3', '0');
INSERT INTO `sw_region` VALUES ('1537', '179', '五营区', '3', '0');
INSERT INTO `sw_region` VALUES ('1538', '179', '红星区', '3', '0');
INSERT INTO `sw_region` VALUES ('1539', '179', '新青区', '3', '0');
INSERT INTO `sw_region` VALUES ('1540', '179', '汤旺河区', '3', '0');
INSERT INTO `sw_region` VALUES ('1541', '179', '乌伊岭区', '3', '0');
INSERT INTO `sw_region` VALUES ('1542', '179', '铁力市', '3', '0');
INSERT INTO `sw_region` VALUES ('1543', '179', '嘉荫县', '3', '0');
INSERT INTO `sw_region` VALUES ('1544', '180', '江岸区', '3', '0');
INSERT INTO `sw_region` VALUES ('1545', '180', '武昌区', '3', '0');
INSERT INTO `sw_region` VALUES ('1546', '180', '江汉区', '3', '0');
INSERT INTO `sw_region` VALUES ('1547', '180', '硚口区', '3', '0');
INSERT INTO `sw_region` VALUES ('1548', '180', '汉阳区', '3', '0');
INSERT INTO `sw_region` VALUES ('1549', '180', '青山区', '3', '0');
INSERT INTO `sw_region` VALUES ('1550', '180', '洪山区', '3', '0');
INSERT INTO `sw_region` VALUES ('1551', '180', '东西湖区', '3', '0');
INSERT INTO `sw_region` VALUES ('1552', '180', '汉南区', '3', '0');
INSERT INTO `sw_region` VALUES ('1553', '180', '蔡甸区', '3', '0');
INSERT INTO `sw_region` VALUES ('1554', '180', '江夏区', '3', '0');
INSERT INTO `sw_region` VALUES ('1555', '180', '黄陂区', '3', '0');
INSERT INTO `sw_region` VALUES ('1556', '180', '新洲区', '3', '0');
INSERT INTO `sw_region` VALUES ('1557', '180', '经济开发区', '3', '0');
INSERT INTO `sw_region` VALUES ('1558', '181', '仙桃市', '3', '0');
INSERT INTO `sw_region` VALUES ('1559', '182', '鄂城区', '3', '0');
INSERT INTO `sw_region` VALUES ('1560', '182', '华容区', '3', '0');
INSERT INTO `sw_region` VALUES ('1561', '182', '梁子湖区', '3', '0');
INSERT INTO `sw_region` VALUES ('1562', '183', '黄州区', '3', '0');
INSERT INTO `sw_region` VALUES ('1563', '183', '麻城市', '3', '0');
INSERT INTO `sw_region` VALUES ('1564', '183', '武穴市', '3', '0');
INSERT INTO `sw_region` VALUES ('1565', '183', '团风县', '3', '0');
INSERT INTO `sw_region` VALUES ('1566', '183', '红安县', '3', '0');
INSERT INTO `sw_region` VALUES ('1567', '183', '罗田县', '3', '0');
INSERT INTO `sw_region` VALUES ('1568', '183', '英山县', '3', '0');
INSERT INTO `sw_region` VALUES ('1569', '183', '浠水县', '3', '0');
INSERT INTO `sw_region` VALUES ('1570', '183', '蕲春县', '3', '0');
INSERT INTO `sw_region` VALUES ('1571', '183', '黄梅县', '3', '0');
INSERT INTO `sw_region` VALUES ('1572', '184', '黄石港区', '3', '0');
INSERT INTO `sw_region` VALUES ('1573', '184', '西塞山区', '3', '0');
INSERT INTO `sw_region` VALUES ('1574', '184', '下陆区', '3', '0');
INSERT INTO `sw_region` VALUES ('1575', '184', '铁山区', '3', '0');
INSERT INTO `sw_region` VALUES ('1576', '184', '大冶市', '3', '0');
INSERT INTO `sw_region` VALUES ('1577', '184', '阳新县', '3', '0');
INSERT INTO `sw_region` VALUES ('1578', '185', '东宝区', '3', '0');
INSERT INTO `sw_region` VALUES ('1579', '185', '掇刀区', '3', '0');
INSERT INTO `sw_region` VALUES ('1580', '185', '钟祥市', '3', '0');
INSERT INTO `sw_region` VALUES ('1581', '185', '京山县', '3', '0');
INSERT INTO `sw_region` VALUES ('1582', '185', '沙洋县', '3', '0');
INSERT INTO `sw_region` VALUES ('1583', '186', '沙市区', '3', '0');
INSERT INTO `sw_region` VALUES ('1584', '186', '荆州区', '3', '0');
INSERT INTO `sw_region` VALUES ('1585', '186', '石首市', '3', '0');
INSERT INTO `sw_region` VALUES ('1586', '186', '洪湖市', '3', '0');
INSERT INTO `sw_region` VALUES ('1587', '186', '松滋市', '3', '0');
INSERT INTO `sw_region` VALUES ('1588', '186', '公安县', '3', '0');
INSERT INTO `sw_region` VALUES ('1589', '186', '监利县', '3', '0');
INSERT INTO `sw_region` VALUES ('1590', '186', '江陵县', '3', '0');
INSERT INTO `sw_region` VALUES ('1591', '187', '潜江市', '3', '0');
INSERT INTO `sw_region` VALUES ('1592', '188', '神农架林区', '3', '0');
INSERT INTO `sw_region` VALUES ('1593', '189', '张湾区', '3', '0');
INSERT INTO `sw_region` VALUES ('1594', '189', '茅箭区', '3', '0');
INSERT INTO `sw_region` VALUES ('1595', '189', '丹江口市', '3', '0');
INSERT INTO `sw_region` VALUES ('1596', '189', '郧县', '3', '0');
INSERT INTO `sw_region` VALUES ('1597', '189', '郧西县', '3', '0');
INSERT INTO `sw_region` VALUES ('1598', '189', '竹山县', '3', '0');
INSERT INTO `sw_region` VALUES ('1599', '189', '竹溪县', '3', '0');
INSERT INTO `sw_region` VALUES ('1600', '189', '房县', '3', '0');
INSERT INTO `sw_region` VALUES ('1601', '190', '曾都区', '3', '0');
INSERT INTO `sw_region` VALUES ('1602', '190', '广水市', '3', '0');
INSERT INTO `sw_region` VALUES ('1603', '191', '天门市', '3', '0');
INSERT INTO `sw_region` VALUES ('1604', '192', '咸安区', '3', '0');
INSERT INTO `sw_region` VALUES ('1605', '192', '赤壁市', '3', '0');
INSERT INTO `sw_region` VALUES ('1606', '192', '嘉鱼县', '3', '0');
INSERT INTO `sw_region` VALUES ('1607', '192', '通城县', '3', '0');
INSERT INTO `sw_region` VALUES ('1608', '192', '崇阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('1609', '192', '通山县', '3', '0');
INSERT INTO `sw_region` VALUES ('1610', '193', '襄城区', '3', '0');
INSERT INTO `sw_region` VALUES ('1611', '193', '樊城区', '3', '0');
INSERT INTO `sw_region` VALUES ('1612', '193', '襄阳区', '3', '0');
INSERT INTO `sw_region` VALUES ('1613', '193', '老河口市', '3', '0');
INSERT INTO `sw_region` VALUES ('1614', '193', '枣阳市', '3', '0');
INSERT INTO `sw_region` VALUES ('1615', '193', '宜城市', '3', '0');
INSERT INTO `sw_region` VALUES ('1616', '193', '南漳县', '3', '0');
INSERT INTO `sw_region` VALUES ('1617', '193', '谷城县', '3', '0');
INSERT INTO `sw_region` VALUES ('1618', '193', '保康县', '3', '0');
INSERT INTO `sw_region` VALUES ('1619', '194', '孝南区', '3', '0');
INSERT INTO `sw_region` VALUES ('1620', '194', '应城市', '3', '0');
INSERT INTO `sw_region` VALUES ('1621', '194', '安陆市', '3', '0');
INSERT INTO `sw_region` VALUES ('1622', '194', '汉川市', '3', '0');
INSERT INTO `sw_region` VALUES ('1623', '194', '孝昌县', '3', '0');
INSERT INTO `sw_region` VALUES ('1624', '194', '大悟县', '3', '0');
INSERT INTO `sw_region` VALUES ('1625', '194', '云梦县', '3', '0');
INSERT INTO `sw_region` VALUES ('1626', '195', '长阳', '3', '0');
INSERT INTO `sw_region` VALUES ('1627', '195', '五峰', '3', '0');
INSERT INTO `sw_region` VALUES ('1628', '195', '西陵区', '3', '0');
INSERT INTO `sw_region` VALUES ('1629', '195', '伍家岗区', '3', '0');
INSERT INTO `sw_region` VALUES ('1630', '195', '点军区', '3', '0');
INSERT INTO `sw_region` VALUES ('1631', '195', '猇亭区', '3', '0');
INSERT INTO `sw_region` VALUES ('1632', '195', '夷陵区', '3', '0');
INSERT INTO `sw_region` VALUES ('1633', '195', '宜都市', '3', '0');
INSERT INTO `sw_region` VALUES ('1634', '195', '当阳市', '3', '0');
INSERT INTO `sw_region` VALUES ('1635', '195', '枝江市', '3', '0');
INSERT INTO `sw_region` VALUES ('1636', '195', '远安县', '3', '0');
INSERT INTO `sw_region` VALUES ('1637', '195', '兴山县', '3', '0');
INSERT INTO `sw_region` VALUES ('1638', '195', '秭归县', '3', '0');
INSERT INTO `sw_region` VALUES ('1639', '196', '恩施市', '3', '0');
INSERT INTO `sw_region` VALUES ('1640', '196', '利川市', '3', '0');
INSERT INTO `sw_region` VALUES ('1641', '196', '建始县', '3', '0');
INSERT INTO `sw_region` VALUES ('1642', '196', '巴东县', '3', '0');
INSERT INTO `sw_region` VALUES ('1643', '196', '宣恩县', '3', '0');
INSERT INTO `sw_region` VALUES ('1644', '196', '咸丰县', '3', '0');
INSERT INTO `sw_region` VALUES ('1645', '196', '来凤县', '3', '0');
INSERT INTO `sw_region` VALUES ('1646', '196', '鹤峰县', '3', '0');
INSERT INTO `sw_region` VALUES ('1647', '197', '岳麓区', '3', '0');
INSERT INTO `sw_region` VALUES ('1648', '197', '芙蓉区', '3', '0');
INSERT INTO `sw_region` VALUES ('1649', '197', '天心区', '3', '0');
INSERT INTO `sw_region` VALUES ('1650', '197', '开福区', '3', '0');
INSERT INTO `sw_region` VALUES ('1651', '197', '雨花区', '3', '0');
INSERT INTO `sw_region` VALUES ('1652', '197', '开发区', '3', '0');
INSERT INTO `sw_region` VALUES ('1653', '197', '浏阳市', '3', '0');
INSERT INTO `sw_region` VALUES ('1654', '197', '长沙县', '3', '0');
INSERT INTO `sw_region` VALUES ('1655', '197', '望城县', '3', '0');
INSERT INTO `sw_region` VALUES ('1656', '197', '宁乡县', '3', '0');
INSERT INTO `sw_region` VALUES ('1657', '198', '永定区', '3', '0');
INSERT INTO `sw_region` VALUES ('1658', '198', '武陵源区', '3', '0');
INSERT INTO `sw_region` VALUES ('1659', '198', '慈利县', '3', '0');
INSERT INTO `sw_region` VALUES ('1660', '198', '桑植县', '3', '0');
INSERT INTO `sw_region` VALUES ('1661', '199', '武陵区', '3', '0');
INSERT INTO `sw_region` VALUES ('1662', '199', '鼎城区', '3', '0');
INSERT INTO `sw_region` VALUES ('1663', '199', '津市市', '3', '0');
INSERT INTO `sw_region` VALUES ('1664', '199', '安乡县', '3', '0');
INSERT INTO `sw_region` VALUES ('1665', '199', '汉寿县', '3', '0');
INSERT INTO `sw_region` VALUES ('1666', '199', '澧县', '3', '0');
INSERT INTO `sw_region` VALUES ('1667', '199', '临澧县', '3', '0');
INSERT INTO `sw_region` VALUES ('1668', '199', '桃源县', '3', '0');
INSERT INTO `sw_region` VALUES ('1669', '199', '石门县', '3', '0');
INSERT INTO `sw_region` VALUES ('1670', '200', '北湖区', '3', '0');
INSERT INTO `sw_region` VALUES ('1671', '200', '苏仙区', '3', '0');
INSERT INTO `sw_region` VALUES ('1672', '200', '资兴市', '3', '0');
INSERT INTO `sw_region` VALUES ('1673', '200', '桂阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('1674', '200', '宜章县', '3', '0');
INSERT INTO `sw_region` VALUES ('1675', '200', '永兴县', '3', '0');
INSERT INTO `sw_region` VALUES ('1676', '200', '嘉禾县', '3', '0');
INSERT INTO `sw_region` VALUES ('1677', '200', '临武县', '3', '0');
INSERT INTO `sw_region` VALUES ('1678', '200', '汝城县', '3', '0');
INSERT INTO `sw_region` VALUES ('1679', '200', '桂东县', '3', '0');
INSERT INTO `sw_region` VALUES ('1680', '200', '安仁县', '3', '0');
INSERT INTO `sw_region` VALUES ('1681', '201', '雁峰区', '3', '0');
INSERT INTO `sw_region` VALUES ('1682', '201', '珠晖区', '3', '0');
INSERT INTO `sw_region` VALUES ('1683', '201', '石鼓区', '3', '0');
INSERT INTO `sw_region` VALUES ('1684', '201', '蒸湘区', '3', '0');
INSERT INTO `sw_region` VALUES ('1685', '201', '南岳区', '3', '0');
INSERT INTO `sw_region` VALUES ('1686', '201', '耒阳市', '3', '0');
INSERT INTO `sw_region` VALUES ('1687', '201', '常宁市', '3', '0');
INSERT INTO `sw_region` VALUES ('1688', '201', '衡阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('1689', '201', '衡南县', '3', '0');
INSERT INTO `sw_region` VALUES ('1690', '201', '衡山县', '3', '0');
INSERT INTO `sw_region` VALUES ('1691', '201', '衡东县', '3', '0');
INSERT INTO `sw_region` VALUES ('1692', '201', '祁东县', '3', '0');
INSERT INTO `sw_region` VALUES ('1693', '202', '鹤城区', '3', '0');
INSERT INTO `sw_region` VALUES ('1694', '202', '靖州', '3', '0');
INSERT INTO `sw_region` VALUES ('1695', '202', '麻阳', '3', '0');
INSERT INTO `sw_region` VALUES ('1696', '202', '通道', '3', '0');
INSERT INTO `sw_region` VALUES ('1697', '202', '新晃', '3', '0');
INSERT INTO `sw_region` VALUES ('1698', '202', '芷江', '3', '0');
INSERT INTO `sw_region` VALUES ('1699', '202', '沅陵县', '3', '0');
INSERT INTO `sw_region` VALUES ('1700', '202', '辰溪县', '3', '0');
INSERT INTO `sw_region` VALUES ('1701', '202', '溆浦县', '3', '0');
INSERT INTO `sw_region` VALUES ('1702', '202', '中方县', '3', '0');
INSERT INTO `sw_region` VALUES ('1703', '202', '会同县', '3', '0');
INSERT INTO `sw_region` VALUES ('1704', '202', '洪江市', '3', '0');
INSERT INTO `sw_region` VALUES ('1705', '203', '娄星区', '3', '0');
INSERT INTO `sw_region` VALUES ('1706', '203', '冷水江市', '3', '0');
INSERT INTO `sw_region` VALUES ('1707', '203', '涟源市', '3', '0');
INSERT INTO `sw_region` VALUES ('1708', '203', '双峰县', '3', '0');
INSERT INTO `sw_region` VALUES ('1709', '203', '新化县', '3', '0');
INSERT INTO `sw_region` VALUES ('1710', '204', '城步', '3', '0');
INSERT INTO `sw_region` VALUES ('1711', '204', '双清区', '3', '0');
INSERT INTO `sw_region` VALUES ('1712', '204', '大祥区', '3', '0');
INSERT INTO `sw_region` VALUES ('1713', '204', '北塔区', '3', '0');
INSERT INTO `sw_region` VALUES ('1714', '204', '武冈市', '3', '0');
INSERT INTO `sw_region` VALUES ('1715', '204', '邵东县', '3', '0');
INSERT INTO `sw_region` VALUES ('1716', '204', '新邵县', '3', '0');
INSERT INTO `sw_region` VALUES ('1717', '204', '邵阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('1718', '204', '隆回县', '3', '0');
INSERT INTO `sw_region` VALUES ('1719', '204', '洞口县', '3', '0');
INSERT INTO `sw_region` VALUES ('1720', '204', '绥宁县', '3', '0');
INSERT INTO `sw_region` VALUES ('1721', '204', '新宁县', '3', '0');
INSERT INTO `sw_region` VALUES ('1722', '205', '岳塘区', '3', '0');
INSERT INTO `sw_region` VALUES ('1723', '205', '雨湖区', '3', '0');
INSERT INTO `sw_region` VALUES ('1724', '205', '湘乡市', '3', '0');
INSERT INTO `sw_region` VALUES ('1725', '205', '韶山市', '3', '0');
INSERT INTO `sw_region` VALUES ('1726', '205', '湘潭县', '3', '0');
INSERT INTO `sw_region` VALUES ('1727', '206', '吉首市', '3', '0');
INSERT INTO `sw_region` VALUES ('1728', '206', '泸溪县', '3', '0');
INSERT INTO `sw_region` VALUES ('1729', '206', '凤凰县', '3', '0');
INSERT INTO `sw_region` VALUES ('1730', '206', '花垣县', '3', '0');
INSERT INTO `sw_region` VALUES ('1731', '206', '保靖县', '3', '0');
INSERT INTO `sw_region` VALUES ('1732', '206', '古丈县', '3', '0');
INSERT INTO `sw_region` VALUES ('1733', '206', '永顺县', '3', '0');
INSERT INTO `sw_region` VALUES ('1734', '206', '龙山县', '3', '0');
INSERT INTO `sw_region` VALUES ('1735', '207', '赫山区', '3', '0');
INSERT INTO `sw_region` VALUES ('1736', '207', '资阳区', '3', '0');
INSERT INTO `sw_region` VALUES ('1737', '207', '沅江市', '3', '0');
INSERT INTO `sw_region` VALUES ('1738', '207', '南县', '3', '0');
INSERT INTO `sw_region` VALUES ('1739', '207', '桃江县', '3', '0');
INSERT INTO `sw_region` VALUES ('1740', '207', '安化县', '3', '0');
INSERT INTO `sw_region` VALUES ('1741', '208', '江华', '3', '0');
INSERT INTO `sw_region` VALUES ('1742', '208', '冷水滩区', '3', '0');
INSERT INTO `sw_region` VALUES ('1743', '208', '零陵区', '3', '0');
INSERT INTO `sw_region` VALUES ('1744', '208', '祁阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('1745', '208', '东安县', '3', '0');
INSERT INTO `sw_region` VALUES ('1746', '208', '双牌县', '3', '0');
INSERT INTO `sw_region` VALUES ('1747', '208', '道县', '3', '0');
INSERT INTO `sw_region` VALUES ('1748', '208', '江永县', '3', '0');
INSERT INTO `sw_region` VALUES ('1749', '208', '宁远县', '3', '0');
INSERT INTO `sw_region` VALUES ('1750', '208', '蓝山县', '3', '0');
INSERT INTO `sw_region` VALUES ('1751', '208', '新田县', '3', '0');
INSERT INTO `sw_region` VALUES ('1752', '209', '岳阳楼区', '3', '0');
INSERT INTO `sw_region` VALUES ('1753', '209', '君山区', '3', '0');
INSERT INTO `sw_region` VALUES ('1754', '209', '云溪区', '3', '0');
INSERT INTO `sw_region` VALUES ('1755', '209', '汨罗市', '3', '0');
INSERT INTO `sw_region` VALUES ('1756', '209', '临湘市', '3', '0');
INSERT INTO `sw_region` VALUES ('1757', '209', '岳阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('1758', '209', '华容县', '3', '0');
INSERT INTO `sw_region` VALUES ('1759', '209', '湘阴县', '3', '0');
INSERT INTO `sw_region` VALUES ('1760', '209', '平江县', '3', '0');
INSERT INTO `sw_region` VALUES ('1761', '210', '天元区', '3', '0');
INSERT INTO `sw_region` VALUES ('1762', '210', '荷塘区', '3', '0');
INSERT INTO `sw_region` VALUES ('1763', '210', '芦淞区', '3', '0');
INSERT INTO `sw_region` VALUES ('1764', '210', '石峰区', '3', '0');
INSERT INTO `sw_region` VALUES ('1765', '210', '醴陵市', '3', '0');
INSERT INTO `sw_region` VALUES ('1766', '210', '株洲县', '3', '0');
INSERT INTO `sw_region` VALUES ('1767', '210', '攸县', '3', '0');
INSERT INTO `sw_region` VALUES ('1768', '210', '茶陵县', '3', '0');
INSERT INTO `sw_region` VALUES ('1769', '210', '炎陵县', '3', '0');
INSERT INTO `sw_region` VALUES ('1770', '211', '朝阳区', '3', '0');
INSERT INTO `sw_region` VALUES ('1771', '211', '宽城区', '3', '0');
INSERT INTO `sw_region` VALUES ('1772', '211', '二道区', '3', '0');
INSERT INTO `sw_region` VALUES ('1773', '211', '南关区', '3', '0');
INSERT INTO `sw_region` VALUES ('1774', '211', '绿园区', '3', '0');
INSERT INTO `sw_region` VALUES ('1775', '211', '双阳区', '3', '0');
INSERT INTO `sw_region` VALUES ('1776', '211', '净月潭开发区', '3', '0');
INSERT INTO `sw_region` VALUES ('1777', '211', '高新技术开发区', '3', '0');
INSERT INTO `sw_region` VALUES ('1778', '211', '经济技术开发区', '3', '0');
INSERT INTO `sw_region` VALUES ('1779', '211', '汽车产业开发区', '3', '0');
INSERT INTO `sw_region` VALUES ('1780', '211', '德惠市', '3', '0');
INSERT INTO `sw_region` VALUES ('1781', '211', '九台市', '3', '0');
INSERT INTO `sw_region` VALUES ('1782', '211', '榆树市', '3', '0');
INSERT INTO `sw_region` VALUES ('1783', '211', '农安县', '3', '0');
INSERT INTO `sw_region` VALUES ('1784', '212', '船营区', '3', '0');
INSERT INTO `sw_region` VALUES ('1785', '212', '昌邑区', '3', '0');
INSERT INTO `sw_region` VALUES ('1786', '212', '龙潭区', '3', '0');
INSERT INTO `sw_region` VALUES ('1787', '212', '丰满区', '3', '0');
INSERT INTO `sw_region` VALUES ('1788', '212', '蛟河市', '3', '0');
INSERT INTO `sw_region` VALUES ('1789', '212', '桦甸市', '3', '0');
INSERT INTO `sw_region` VALUES ('1790', '212', '舒兰市', '3', '0');
INSERT INTO `sw_region` VALUES ('1791', '212', '磐石市', '3', '0');
INSERT INTO `sw_region` VALUES ('1792', '212', '永吉县', '3', '0');
INSERT INTO `sw_region` VALUES ('1793', '213', '洮北区', '3', '0');
INSERT INTO `sw_region` VALUES ('1794', '213', '洮南市', '3', '0');
INSERT INTO `sw_region` VALUES ('1795', '213', '大安市', '3', '0');
INSERT INTO `sw_region` VALUES ('1796', '213', '镇赉县', '3', '0');
INSERT INTO `sw_region` VALUES ('1797', '213', '通榆县', '3', '0');
INSERT INTO `sw_region` VALUES ('1798', '214', '江源区', '3', '0');
INSERT INTO `sw_region` VALUES ('1799', '214', '八道江区', '3', '0');
INSERT INTO `sw_region` VALUES ('1800', '214', '长白', '3', '0');
INSERT INTO `sw_region` VALUES ('1801', '214', '临江市', '3', '0');
INSERT INTO `sw_region` VALUES ('1802', '214', '抚松县', '3', '0');
INSERT INTO `sw_region` VALUES ('1803', '214', '靖宇县', '3', '0');
INSERT INTO `sw_region` VALUES ('1804', '215', '龙山区', '3', '0');
INSERT INTO `sw_region` VALUES ('1805', '215', '西安区', '3', '0');
INSERT INTO `sw_region` VALUES ('1806', '215', '东丰县', '3', '0');
INSERT INTO `sw_region` VALUES ('1807', '215', '东辽县', '3', '0');
INSERT INTO `sw_region` VALUES ('1808', '216', '铁西区', '3', '0');
INSERT INTO `sw_region` VALUES ('1809', '216', '铁东区', '3', '0');
INSERT INTO `sw_region` VALUES ('1810', '216', '伊通', '3', '0');
INSERT INTO `sw_region` VALUES ('1811', '216', '公主岭市', '3', '0');
INSERT INTO `sw_region` VALUES ('1812', '216', '双辽市', '3', '0');
INSERT INTO `sw_region` VALUES ('1813', '216', '梨树县', '3', '0');
INSERT INTO `sw_region` VALUES ('1814', '217', '前郭尔罗斯', '3', '0');
INSERT INTO `sw_region` VALUES ('1815', '217', '宁江区', '3', '0');
INSERT INTO `sw_region` VALUES ('1816', '217', '长岭县', '3', '0');
INSERT INTO `sw_region` VALUES ('1817', '217', '乾安县', '3', '0');
INSERT INTO `sw_region` VALUES ('1818', '217', '扶余县', '3', '0');
INSERT INTO `sw_region` VALUES ('1819', '218', '东昌区', '3', '0');
INSERT INTO `sw_region` VALUES ('1820', '218', '二道江区', '3', '0');
INSERT INTO `sw_region` VALUES ('1821', '218', '梅河口市', '3', '0');
INSERT INTO `sw_region` VALUES ('1822', '218', '集安市', '3', '0');
INSERT INTO `sw_region` VALUES ('1823', '218', '通化县', '3', '0');
INSERT INTO `sw_region` VALUES ('1824', '218', '辉南县', '3', '0');
INSERT INTO `sw_region` VALUES ('1825', '218', '柳河县', '3', '0');
INSERT INTO `sw_region` VALUES ('1826', '219', '延吉市', '3', '0');
INSERT INTO `sw_region` VALUES ('1827', '219', '图们市', '3', '0');
INSERT INTO `sw_region` VALUES ('1828', '219', '敦化市', '3', '0');
INSERT INTO `sw_region` VALUES ('1829', '219', '珲春市', '3', '0');
INSERT INTO `sw_region` VALUES ('1830', '219', '龙井市', '3', '0');
INSERT INTO `sw_region` VALUES ('1831', '219', '和龙市', '3', '0');
INSERT INTO `sw_region` VALUES ('1832', '219', '安图县', '3', '0');
INSERT INTO `sw_region` VALUES ('1833', '219', '汪清县', '3', '0');
INSERT INTO `sw_region` VALUES ('1834', '220', '玄武区', '3', '0');
INSERT INTO `sw_region` VALUES ('1835', '220', '鼓楼区', '3', '0');
INSERT INTO `sw_region` VALUES ('1836', '220', '白下区', '3', '0');
INSERT INTO `sw_region` VALUES ('1837', '220', '建邺区', '3', '0');
INSERT INTO `sw_region` VALUES ('1838', '220', '秦淮区', '3', '0');
INSERT INTO `sw_region` VALUES ('1839', '220', '雨花台区', '3', '0');
INSERT INTO `sw_region` VALUES ('1840', '220', '下关区', '3', '0');
INSERT INTO `sw_region` VALUES ('1841', '220', '栖霞区', '3', '0');
INSERT INTO `sw_region` VALUES ('1842', '220', '浦口区', '3', '0');
INSERT INTO `sw_region` VALUES ('1843', '220', '江宁区', '3', '0');
INSERT INTO `sw_region` VALUES ('1844', '220', '六合区', '3', '0');
INSERT INTO `sw_region` VALUES ('1845', '220', '溧水县', '3', '0');
INSERT INTO `sw_region` VALUES ('1846', '220', '高淳县', '3', '0');
INSERT INTO `sw_region` VALUES ('1847', '221', '沧浪区', '3', '0');
INSERT INTO `sw_region` VALUES ('1848', '221', '金阊区', '3', '0');
INSERT INTO `sw_region` VALUES ('1849', '221', '平江区', '3', '0');
INSERT INTO `sw_region` VALUES ('1850', '221', '虎丘区', '3', '0');
INSERT INTO `sw_region` VALUES ('1851', '221', '吴中区', '3', '0');
INSERT INTO `sw_region` VALUES ('1852', '221', '相城区', '3', '0');
INSERT INTO `sw_region` VALUES ('1853', '221', '园区', '3', '0');
INSERT INTO `sw_region` VALUES ('1854', '221', '新区', '3', '0');
INSERT INTO `sw_region` VALUES ('1855', '221', '常熟市', '3', '0');
INSERT INTO `sw_region` VALUES ('1856', '221', '张家港市', '3', '0');
INSERT INTO `sw_region` VALUES ('1857', '221', '玉山镇', '3', '0');
INSERT INTO `sw_region` VALUES ('1858', '221', '巴城镇', '3', '0');
INSERT INTO `sw_region` VALUES ('1859', '221', '周市镇', '3', '0');
INSERT INTO `sw_region` VALUES ('1860', '221', '陆家镇', '3', '0');
INSERT INTO `sw_region` VALUES ('1861', '221', '花桥镇', '3', '0');
INSERT INTO `sw_region` VALUES ('1862', '221', '淀山湖镇', '3', '0');
INSERT INTO `sw_region` VALUES ('1863', '221', '张浦镇', '3', '0');
INSERT INTO `sw_region` VALUES ('1864', '221', '周庄镇', '3', '0');
INSERT INTO `sw_region` VALUES ('1865', '221', '千灯镇', '3', '0');
INSERT INTO `sw_region` VALUES ('1866', '221', '锦溪镇', '3', '0');
INSERT INTO `sw_region` VALUES ('1867', '221', '开发区', '3', '0');
INSERT INTO `sw_region` VALUES ('1868', '221', '吴江市', '3', '0');
INSERT INTO `sw_region` VALUES ('1869', '221', '太仓市', '3', '0');
INSERT INTO `sw_region` VALUES ('1870', '222', '崇安区', '3', '0');
INSERT INTO `sw_region` VALUES ('1871', '222', '北塘区', '3', '0');
INSERT INTO `sw_region` VALUES ('1872', '222', '南长区', '3', '0');
INSERT INTO `sw_region` VALUES ('1873', '222', '锡山区', '3', '0');
INSERT INTO `sw_region` VALUES ('1874', '222', '惠山区', '3', '0');
INSERT INTO `sw_region` VALUES ('1875', '222', '滨湖区', '3', '0');
INSERT INTO `sw_region` VALUES ('1876', '222', '新区', '3', '0');
INSERT INTO `sw_region` VALUES ('1877', '222', '江阴市', '3', '0');
INSERT INTO `sw_region` VALUES ('1878', '222', '宜兴市', '3', '0');
INSERT INTO `sw_region` VALUES ('1879', '223', '天宁区', '3', '0');
INSERT INTO `sw_region` VALUES ('1880', '223', '钟楼区', '3', '0');
INSERT INTO `sw_region` VALUES ('1881', '223', '戚墅堰区', '3', '0');
INSERT INTO `sw_region` VALUES ('1882', '223', '郊区', '3', '0');
INSERT INTO `sw_region` VALUES ('1883', '223', '新北区', '3', '0');
INSERT INTO `sw_region` VALUES ('1884', '223', '武进区', '3', '0');
INSERT INTO `sw_region` VALUES ('1885', '223', '溧阳市', '3', '0');
INSERT INTO `sw_region` VALUES ('1886', '223', '金坛市', '3', '0');
INSERT INTO `sw_region` VALUES ('1887', '224', '清河区', '3', '0');
INSERT INTO `sw_region` VALUES ('1888', '224', '清浦区', '3', '0');
INSERT INTO `sw_region` VALUES ('1889', '224', '楚州区', '3', '0');
INSERT INTO `sw_region` VALUES ('1890', '224', '淮阴区', '3', '0');
INSERT INTO `sw_region` VALUES ('1891', '224', '涟水县', '3', '0');
INSERT INTO `sw_region` VALUES ('1892', '224', '洪泽县', '3', '0');
INSERT INTO `sw_region` VALUES ('1893', '224', '盱眙县', '3', '0');
INSERT INTO `sw_region` VALUES ('1894', '224', '金湖县', '3', '0');
INSERT INTO `sw_region` VALUES ('1895', '225', '新浦区', '3', '0');
INSERT INTO `sw_region` VALUES ('1896', '225', '连云区', '3', '0');
INSERT INTO `sw_region` VALUES ('1897', '225', '海州区', '3', '0');
INSERT INTO `sw_region` VALUES ('1898', '225', '赣榆县', '3', '0');
INSERT INTO `sw_region` VALUES ('1899', '225', '东海县', '3', '0');
INSERT INTO `sw_region` VALUES ('1900', '225', '灌云县', '3', '0');
INSERT INTO `sw_region` VALUES ('1901', '225', '灌南县', '3', '0');
INSERT INTO `sw_region` VALUES ('1902', '226', '崇川区', '3', '0');
INSERT INTO `sw_region` VALUES ('1903', '226', '港闸区', '3', '0');
INSERT INTO `sw_region` VALUES ('1904', '226', '经济开发区', '3', '0');
INSERT INTO `sw_region` VALUES ('1905', '226', '启东市', '3', '0');
INSERT INTO `sw_region` VALUES ('1906', '226', '如皋市', '3', '0');
INSERT INTO `sw_region` VALUES ('1907', '226', '通州市', '3', '0');
INSERT INTO `sw_region` VALUES ('1908', '226', '海门市', '3', '0');
INSERT INTO `sw_region` VALUES ('1909', '226', '海安县', '3', '0');
INSERT INTO `sw_region` VALUES ('1910', '226', '如东县', '3', '0');
INSERT INTO `sw_region` VALUES ('1911', '227', '宿城区', '3', '0');
INSERT INTO `sw_region` VALUES ('1912', '227', '宿豫区', '3', '0');
INSERT INTO `sw_region` VALUES ('1913', '227', '宿豫县', '3', '0');
INSERT INTO `sw_region` VALUES ('1914', '227', '沭阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('1915', '227', '泗阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('1916', '227', '泗洪县', '3', '0');
INSERT INTO `sw_region` VALUES ('1917', '228', '海陵区', '3', '0');
INSERT INTO `sw_region` VALUES ('1918', '228', '高港区', '3', '0');
INSERT INTO `sw_region` VALUES ('1919', '228', '兴化市', '3', '0');
INSERT INTO `sw_region` VALUES ('1920', '228', '靖江市', '3', '0');
INSERT INTO `sw_region` VALUES ('1921', '228', '泰兴市', '3', '0');
INSERT INTO `sw_region` VALUES ('1922', '228', '姜堰市', '3', '0');
INSERT INTO `sw_region` VALUES ('1923', '229', '云龙区', '3', '0');
INSERT INTO `sw_region` VALUES ('1924', '229', '鼓楼区', '3', '0');
INSERT INTO `sw_region` VALUES ('1925', '229', '九里区', '3', '0');
INSERT INTO `sw_region` VALUES ('1926', '229', '贾汪区', '3', '0');
INSERT INTO `sw_region` VALUES ('1927', '229', '泉山区', '3', '0');
INSERT INTO `sw_region` VALUES ('1928', '229', '新沂市', '3', '0');
INSERT INTO `sw_region` VALUES ('1929', '229', '邳州市', '3', '0');
INSERT INTO `sw_region` VALUES ('1930', '229', '丰县', '3', '0');
INSERT INTO `sw_region` VALUES ('1931', '229', '沛县', '3', '0');
INSERT INTO `sw_region` VALUES ('1932', '229', '铜山县', '3', '0');
INSERT INTO `sw_region` VALUES ('1933', '229', '睢宁县', '3', '0');
INSERT INTO `sw_region` VALUES ('1934', '230', '城区', '3', '0');
INSERT INTO `sw_region` VALUES ('1935', '230', '亭湖区', '3', '0');
INSERT INTO `sw_region` VALUES ('1936', '230', '盐都区', '3', '0');
INSERT INTO `sw_region` VALUES ('1937', '230', '盐都县', '3', '0');
INSERT INTO `sw_region` VALUES ('1938', '230', '东台市', '3', '0');
INSERT INTO `sw_region` VALUES ('1939', '230', '大丰市', '3', '0');
INSERT INTO `sw_region` VALUES ('1940', '230', '响水县', '3', '0');
INSERT INTO `sw_region` VALUES ('1941', '230', '滨海县', '3', '0');
INSERT INTO `sw_region` VALUES ('1942', '230', '阜宁县', '3', '0');
INSERT INTO `sw_region` VALUES ('1943', '230', '射阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('1944', '230', '建湖县', '3', '0');
INSERT INTO `sw_region` VALUES ('1945', '231', '广陵区', '3', '0');
INSERT INTO `sw_region` VALUES ('1946', '231', '维扬区', '3', '0');
INSERT INTO `sw_region` VALUES ('1947', '231', '邗江区', '3', '0');
INSERT INTO `sw_region` VALUES ('1948', '231', '仪征市', '3', '0');
INSERT INTO `sw_region` VALUES ('1949', '231', '高邮市', '3', '0');
INSERT INTO `sw_region` VALUES ('1950', '231', '江都市', '3', '0');
INSERT INTO `sw_region` VALUES ('1951', '231', '宝应县', '3', '0');
INSERT INTO `sw_region` VALUES ('1952', '232', '京口区', '3', '0');
INSERT INTO `sw_region` VALUES ('1953', '232', '润州区', '3', '0');
INSERT INTO `sw_region` VALUES ('1954', '232', '丹徒区', '3', '0');
INSERT INTO `sw_region` VALUES ('1955', '232', '丹阳市', '3', '0');
INSERT INTO `sw_region` VALUES ('1956', '232', '扬中市', '3', '0');
INSERT INTO `sw_region` VALUES ('1957', '232', '句容市', '3', '0');
INSERT INTO `sw_region` VALUES ('1958', '233', '东湖区', '3', '0');
INSERT INTO `sw_region` VALUES ('1959', '233', '西湖区', '3', '0');
INSERT INTO `sw_region` VALUES ('1960', '233', '青云谱区', '3', '0');
INSERT INTO `sw_region` VALUES ('1961', '233', '湾里区', '3', '0');
INSERT INTO `sw_region` VALUES ('1962', '233', '青山湖区', '3', '0');
INSERT INTO `sw_region` VALUES ('1963', '233', '红谷滩新区', '3', '0');
INSERT INTO `sw_region` VALUES ('1964', '233', '昌北区', '3', '0');
INSERT INTO `sw_region` VALUES ('1965', '233', '高新区', '3', '0');
INSERT INTO `sw_region` VALUES ('1966', '233', '南昌县', '3', '0');
INSERT INTO `sw_region` VALUES ('1967', '233', '新建县', '3', '0');
INSERT INTO `sw_region` VALUES ('1968', '233', '安义县', '3', '0');
INSERT INTO `sw_region` VALUES ('1969', '233', '进贤县', '3', '0');
INSERT INTO `sw_region` VALUES ('1970', '234', '临川区', '3', '0');
INSERT INTO `sw_region` VALUES ('1971', '234', '南城县', '3', '0');
INSERT INTO `sw_region` VALUES ('1972', '234', '黎川县', '3', '0');
INSERT INTO `sw_region` VALUES ('1973', '234', '南丰县', '3', '0');
INSERT INTO `sw_region` VALUES ('1974', '234', '崇仁县', '3', '0');
INSERT INTO `sw_region` VALUES ('1975', '234', '乐安县', '3', '0');
INSERT INTO `sw_region` VALUES ('1976', '234', '宜黄县', '3', '0');
INSERT INTO `sw_region` VALUES ('1977', '234', '金溪县', '3', '0');
INSERT INTO `sw_region` VALUES ('1978', '234', '资溪县', '3', '0');
INSERT INTO `sw_region` VALUES ('1979', '234', '东乡县', '3', '0');
INSERT INTO `sw_region` VALUES ('1980', '234', '广昌县', '3', '0');
INSERT INTO `sw_region` VALUES ('1981', '235', '章贡区', '3', '0');
INSERT INTO `sw_region` VALUES ('1982', '235', '于都县', '3', '0');
INSERT INTO `sw_region` VALUES ('1983', '235', '瑞金市', '3', '0');
INSERT INTO `sw_region` VALUES ('1984', '235', '南康市', '3', '0');
INSERT INTO `sw_region` VALUES ('1985', '235', '赣县', '3', '0');
INSERT INTO `sw_region` VALUES ('1986', '235', '信丰县', '3', '0');
INSERT INTO `sw_region` VALUES ('1987', '235', '大余县', '3', '0');
INSERT INTO `sw_region` VALUES ('1988', '235', '上犹县', '3', '0');
INSERT INTO `sw_region` VALUES ('1989', '235', '崇义县', '3', '0');
INSERT INTO `sw_region` VALUES ('1990', '235', '安远县', '3', '0');
INSERT INTO `sw_region` VALUES ('1991', '235', '龙南县', '3', '0');
INSERT INTO `sw_region` VALUES ('1992', '235', '定南县', '3', '0');
INSERT INTO `sw_region` VALUES ('1993', '235', '全南县', '3', '0');
INSERT INTO `sw_region` VALUES ('1994', '235', '宁都县', '3', '0');
INSERT INTO `sw_region` VALUES ('1995', '235', '兴国县', '3', '0');
INSERT INTO `sw_region` VALUES ('1996', '235', '会昌县', '3', '0');
INSERT INTO `sw_region` VALUES ('1997', '235', '寻乌县', '3', '0');
INSERT INTO `sw_region` VALUES ('1998', '235', '石城县', '3', '0');
INSERT INTO `sw_region` VALUES ('1999', '236', '安福县', '3', '0');
INSERT INTO `sw_region` VALUES ('2000', '236', '吉州区', '3', '0');
INSERT INTO `sw_region` VALUES ('2001', '236', '青原区', '3', '0');
INSERT INTO `sw_region` VALUES ('2002', '236', '井冈山市', '3', '0');
INSERT INTO `sw_region` VALUES ('2003', '236', '吉安县', '3', '0');
INSERT INTO `sw_region` VALUES ('2004', '236', '吉水县', '3', '0');
INSERT INTO `sw_region` VALUES ('2005', '236', '峡江县', '3', '0');
INSERT INTO `sw_region` VALUES ('2006', '236', '新干县', '3', '0');
INSERT INTO `sw_region` VALUES ('2007', '236', '永丰县', '3', '0');
INSERT INTO `sw_region` VALUES ('2008', '236', '泰和县', '3', '0');
INSERT INTO `sw_region` VALUES ('2009', '236', '遂川县', '3', '0');
INSERT INTO `sw_region` VALUES ('2010', '236', '万安县', '3', '0');
INSERT INTO `sw_region` VALUES ('2011', '236', '永新县', '3', '0');
INSERT INTO `sw_region` VALUES ('2012', '237', '珠山区', '3', '0');
INSERT INTO `sw_region` VALUES ('2013', '237', '昌江区', '3', '0');
INSERT INTO `sw_region` VALUES ('2014', '237', '乐平市', '3', '0');
INSERT INTO `sw_region` VALUES ('2015', '237', '浮梁县', '3', '0');
INSERT INTO `sw_region` VALUES ('2016', '238', '浔阳区', '3', '0');
INSERT INTO `sw_region` VALUES ('2017', '238', '庐山区', '3', '0');
INSERT INTO `sw_region` VALUES ('2018', '238', '瑞昌市', '3', '0');
INSERT INTO `sw_region` VALUES ('2019', '238', '九江县', '3', '0');
INSERT INTO `sw_region` VALUES ('2020', '238', '武宁县', '3', '0');
INSERT INTO `sw_region` VALUES ('2021', '238', '修水县', '3', '0');
INSERT INTO `sw_region` VALUES ('2022', '238', '永修县', '3', '0');
INSERT INTO `sw_region` VALUES ('2023', '238', '德安县', '3', '0');
INSERT INTO `sw_region` VALUES ('2024', '238', '星子县', '3', '0');
INSERT INTO `sw_region` VALUES ('2025', '238', '都昌县', '3', '0');
INSERT INTO `sw_region` VALUES ('2026', '238', '湖口县', '3', '0');
INSERT INTO `sw_region` VALUES ('2027', '238', '彭泽县', '3', '0');
INSERT INTO `sw_region` VALUES ('2028', '239', '安源区', '3', '0');
INSERT INTO `sw_region` VALUES ('2029', '239', '湘东区', '3', '0');
INSERT INTO `sw_region` VALUES ('2030', '239', '莲花县', '3', '0');
INSERT INTO `sw_region` VALUES ('2031', '239', '芦溪县', '3', '0');
INSERT INTO `sw_region` VALUES ('2032', '239', '上栗县', '3', '0');
INSERT INTO `sw_region` VALUES ('2033', '240', '信州区', '3', '0');
INSERT INTO `sw_region` VALUES ('2034', '240', '德兴市', '3', '0');
INSERT INTO `sw_region` VALUES ('2035', '240', '上饶县', '3', '0');
INSERT INTO `sw_region` VALUES ('2036', '240', '广丰县', '3', '0');
INSERT INTO `sw_region` VALUES ('2037', '240', '玉山县', '3', '0');
INSERT INTO `sw_region` VALUES ('2038', '240', '铅山县', '3', '0');
INSERT INTO `sw_region` VALUES ('2039', '240', '横峰县', '3', '0');
INSERT INTO `sw_region` VALUES ('2040', '240', '弋阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('2041', '240', '余干县', '3', '0');
INSERT INTO `sw_region` VALUES ('2042', '240', '波阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('2043', '240', '万年县', '3', '0');
INSERT INTO `sw_region` VALUES ('2044', '240', '婺源县', '3', '0');
INSERT INTO `sw_region` VALUES ('2045', '241', '渝水区', '3', '0');
INSERT INTO `sw_region` VALUES ('2046', '241', '分宜县', '3', '0');
INSERT INTO `sw_region` VALUES ('2047', '242', '袁州区', '3', '0');
INSERT INTO `sw_region` VALUES ('2048', '242', '丰城市', '3', '0');
INSERT INTO `sw_region` VALUES ('2049', '242', '樟树市', '3', '0');
INSERT INTO `sw_region` VALUES ('2050', '242', '高安市', '3', '0');
INSERT INTO `sw_region` VALUES ('2051', '242', '奉新县', '3', '0');
INSERT INTO `sw_region` VALUES ('2052', '242', '万载县', '3', '0');
INSERT INTO `sw_region` VALUES ('2053', '242', '上高县', '3', '0');
INSERT INTO `sw_region` VALUES ('2054', '242', '宜丰县', '3', '0');
INSERT INTO `sw_region` VALUES ('2055', '242', '靖安县', '3', '0');
INSERT INTO `sw_region` VALUES ('2056', '242', '铜鼓县', '3', '0');
INSERT INTO `sw_region` VALUES ('2057', '243', '月湖区', '3', '0');
INSERT INTO `sw_region` VALUES ('2058', '243', '贵溪市', '3', '0');
INSERT INTO `sw_region` VALUES ('2059', '243', '余江县', '3', '0');
INSERT INTO `sw_region` VALUES ('2060', '244', '沈河区', '3', '0');
INSERT INTO `sw_region` VALUES ('2061', '244', '皇姑区', '3', '0');
INSERT INTO `sw_region` VALUES ('2062', '244', '和平区', '3', '0');
INSERT INTO `sw_region` VALUES ('2063', '244', '大东区', '3', '0');
INSERT INTO `sw_region` VALUES ('2064', '244', '铁西区', '3', '0');
INSERT INTO `sw_region` VALUES ('2065', '244', '苏家屯区', '3', '0');
INSERT INTO `sw_region` VALUES ('2066', '244', '东陵区', '3', '0');
INSERT INTO `sw_region` VALUES ('2067', '244', '沈北新区', '3', '0');
INSERT INTO `sw_region` VALUES ('2068', '244', '于洪区', '3', '0');
INSERT INTO `sw_region` VALUES ('2069', '244', '浑南新区', '3', '0');
INSERT INTO `sw_region` VALUES ('2070', '244', '新民市', '3', '0');
INSERT INTO `sw_region` VALUES ('2071', '244', '辽中县', '3', '0');
INSERT INTO `sw_region` VALUES ('2072', '244', '康平县', '3', '0');
INSERT INTO `sw_region` VALUES ('2073', '244', '法库县', '3', '0');
INSERT INTO `sw_region` VALUES ('2074', '245', '西岗区', '3', '0');
INSERT INTO `sw_region` VALUES ('2075', '245', '中山区', '3', '0');
INSERT INTO `sw_region` VALUES ('2076', '245', '沙河口区', '3', '0');
INSERT INTO `sw_region` VALUES ('2077', '245', '甘井子区', '3', '0');
INSERT INTO `sw_region` VALUES ('2078', '245', '旅顺口区', '3', '0');
INSERT INTO `sw_region` VALUES ('2079', '245', '金州区', '3', '0');
INSERT INTO `sw_region` VALUES ('2080', '245', '开发区', '3', '0');
INSERT INTO `sw_region` VALUES ('2081', '245', '瓦房店市', '3', '0');
INSERT INTO `sw_region` VALUES ('2082', '245', '普兰店市', '3', '0');
INSERT INTO `sw_region` VALUES ('2083', '245', '庄河市', '3', '0');
INSERT INTO `sw_region` VALUES ('2084', '245', '长海县', '3', '0');
INSERT INTO `sw_region` VALUES ('2085', '246', '铁东区', '3', '0');
INSERT INTO `sw_region` VALUES ('2086', '246', '铁西区', '3', '0');
INSERT INTO `sw_region` VALUES ('2087', '246', '立山区', '3', '0');
INSERT INTO `sw_region` VALUES ('2088', '246', '千山区', '3', '0');
INSERT INTO `sw_region` VALUES ('2089', '246', '岫岩', '3', '0');
INSERT INTO `sw_region` VALUES ('2090', '246', '海城市', '3', '0');
INSERT INTO `sw_region` VALUES ('2091', '246', '台安县', '3', '0');
INSERT INTO `sw_region` VALUES ('2092', '247', '本溪', '3', '0');
INSERT INTO `sw_region` VALUES ('2093', '247', '平山区', '3', '0');
INSERT INTO `sw_region` VALUES ('2094', '247', '明山区', '3', '0');
INSERT INTO `sw_region` VALUES ('2095', '247', '溪湖区', '3', '0');
INSERT INTO `sw_region` VALUES ('2096', '247', '南芬区', '3', '0');
INSERT INTO `sw_region` VALUES ('2097', '247', '桓仁', '3', '0');
INSERT INTO `sw_region` VALUES ('2098', '248', '双塔区', '3', '0');
INSERT INTO `sw_region` VALUES ('2099', '248', '龙城区', '3', '0');
INSERT INTO `sw_region` VALUES ('2100', '248', '喀喇沁左翼蒙古族自治县', '3', '0');
INSERT INTO `sw_region` VALUES ('2101', '248', '北票市', '3', '0');
INSERT INTO `sw_region` VALUES ('2102', '248', '凌源市', '3', '0');
INSERT INTO `sw_region` VALUES ('2103', '248', '朝阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('2104', '248', '建平县', '3', '0');
INSERT INTO `sw_region` VALUES ('2105', '249', '振兴区', '3', '0');
INSERT INTO `sw_region` VALUES ('2106', '249', '元宝区', '3', '0');
INSERT INTO `sw_region` VALUES ('2107', '249', '振安区', '3', '0');
INSERT INTO `sw_region` VALUES ('2108', '249', '宽甸', '3', '0');
INSERT INTO `sw_region` VALUES ('2109', '249', '东港市', '3', '0');
INSERT INTO `sw_region` VALUES ('2110', '249', '凤城市', '3', '0');
INSERT INTO `sw_region` VALUES ('2111', '250', '顺城区', '3', '0');
INSERT INTO `sw_region` VALUES ('2112', '250', '新抚区', '3', '0');
INSERT INTO `sw_region` VALUES ('2113', '250', '东洲区', '3', '0');
INSERT INTO `sw_region` VALUES ('2114', '250', '望花区', '3', '0');
INSERT INTO `sw_region` VALUES ('2115', '250', '清原', '3', '0');
INSERT INTO `sw_region` VALUES ('2116', '250', '新宾', '3', '0');
INSERT INTO `sw_region` VALUES ('2117', '250', '抚顺县', '3', '0');
INSERT INTO `sw_region` VALUES ('2118', '251', '阜新', '3', '0');
INSERT INTO `sw_region` VALUES ('2119', '251', '海州区', '3', '0');
INSERT INTO `sw_region` VALUES ('2120', '251', '新邱区', '3', '0');
INSERT INTO `sw_region` VALUES ('2121', '251', '太平区', '3', '0');
INSERT INTO `sw_region` VALUES ('2122', '251', '清河门区', '3', '0');
INSERT INTO `sw_region` VALUES ('2123', '251', '细河区', '3', '0');
INSERT INTO `sw_region` VALUES ('2124', '251', '彰武县', '3', '0');
INSERT INTO `sw_region` VALUES ('2125', '252', '龙港区', '3', '0');
INSERT INTO `sw_region` VALUES ('2126', '252', '南票区', '3', '0');
INSERT INTO `sw_region` VALUES ('2127', '252', '连山区', '3', '0');
INSERT INTO `sw_region` VALUES ('2128', '252', '兴城市', '3', '0');
INSERT INTO `sw_region` VALUES ('2129', '252', '绥中县', '3', '0');
INSERT INTO `sw_region` VALUES ('2130', '252', '建昌县', '3', '0');
INSERT INTO `sw_region` VALUES ('2131', '253', '太和区', '3', '0');
INSERT INTO `sw_region` VALUES ('2132', '253', '古塔区', '3', '0');
INSERT INTO `sw_region` VALUES ('2133', '253', '凌河区', '3', '0');
INSERT INTO `sw_region` VALUES ('2134', '253', '凌海市', '3', '0');
INSERT INTO `sw_region` VALUES ('2135', '253', '北镇市', '3', '0');
INSERT INTO `sw_region` VALUES ('2136', '253', '黑山县', '3', '0');
INSERT INTO `sw_region` VALUES ('2137', '253', '义县', '3', '0');
INSERT INTO `sw_region` VALUES ('2138', '254', '白塔区', '3', '0');
INSERT INTO `sw_region` VALUES ('2139', '254', '文圣区', '3', '0');
INSERT INTO `sw_region` VALUES ('2140', '254', '宏伟区', '3', '0');
INSERT INTO `sw_region` VALUES ('2141', '254', '太子河区', '3', '0');
INSERT INTO `sw_region` VALUES ('2142', '254', '弓长岭区', '3', '0');
INSERT INTO `sw_region` VALUES ('2143', '254', '灯塔市', '3', '0');
INSERT INTO `sw_region` VALUES ('2144', '254', '辽阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('2145', '255', '双台子区', '3', '0');
INSERT INTO `sw_region` VALUES ('2146', '255', '兴隆台区', '3', '0');
INSERT INTO `sw_region` VALUES ('2147', '255', '大洼县', '3', '0');
INSERT INTO `sw_region` VALUES ('2148', '255', '盘山县', '3', '0');
INSERT INTO `sw_region` VALUES ('2149', '256', '银州区', '3', '0');
INSERT INTO `sw_region` VALUES ('2150', '256', '清河区', '3', '0');
INSERT INTO `sw_region` VALUES ('2151', '256', '调兵山市', '3', '0');
INSERT INTO `sw_region` VALUES ('2152', '256', '开原市', '3', '0');
INSERT INTO `sw_region` VALUES ('2153', '256', '铁岭县', '3', '0');
INSERT INTO `sw_region` VALUES ('2154', '256', '西丰县', '3', '0');
INSERT INTO `sw_region` VALUES ('2155', '256', '昌图县', '3', '0');
INSERT INTO `sw_region` VALUES ('2156', '257', '站前区', '3', '0');
INSERT INTO `sw_region` VALUES ('2157', '257', '西市区', '3', '0');
INSERT INTO `sw_region` VALUES ('2158', '257', '鲅鱼圈区', '3', '0');
INSERT INTO `sw_region` VALUES ('2159', '257', '老边区', '3', '0');
INSERT INTO `sw_region` VALUES ('2160', '257', '盖州市', '3', '0');
INSERT INTO `sw_region` VALUES ('2161', '257', '大石桥市', '3', '0');
INSERT INTO `sw_region` VALUES ('2162', '258', '回民区', '3', '0');
INSERT INTO `sw_region` VALUES ('2163', '258', '玉泉区', '3', '0');
INSERT INTO `sw_region` VALUES ('2164', '258', '新城区', '3', '0');
INSERT INTO `sw_region` VALUES ('2165', '258', '赛罕区', '3', '0');
INSERT INTO `sw_region` VALUES ('2166', '258', '清水河县', '3', '0');
INSERT INTO `sw_region` VALUES ('2167', '258', '土默特左旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2168', '258', '托克托县', '3', '0');
INSERT INTO `sw_region` VALUES ('2169', '258', '和林格尔县', '3', '0');
INSERT INTO `sw_region` VALUES ('2170', '258', '武川县', '3', '0');
INSERT INTO `sw_region` VALUES ('2171', '259', '阿拉善左旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2172', '259', '阿拉善右旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2173', '259', '额济纳旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2174', '260', '临河区', '3', '0');
INSERT INTO `sw_region` VALUES ('2175', '260', '五原县', '3', '0');
INSERT INTO `sw_region` VALUES ('2176', '260', '磴口县', '3', '0');
INSERT INTO `sw_region` VALUES ('2177', '260', '乌拉特前旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2178', '260', '乌拉特中旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2179', '260', '乌拉特后旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2180', '260', '杭锦后旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2181', '261', '昆都仑区', '3', '0');
INSERT INTO `sw_region` VALUES ('2182', '261', '青山区', '3', '0');
INSERT INTO `sw_region` VALUES ('2183', '261', '东河区', '3', '0');
INSERT INTO `sw_region` VALUES ('2184', '261', '九原区', '3', '0');
INSERT INTO `sw_region` VALUES ('2185', '261', '石拐区', '3', '0');
INSERT INTO `sw_region` VALUES ('2186', '261', '白云矿区', '3', '0');
INSERT INTO `sw_region` VALUES ('2187', '261', '土默特右旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2188', '261', '固阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('2189', '261', '达尔罕茂明安联合旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2190', '262', '红山区', '3', '0');
INSERT INTO `sw_region` VALUES ('2191', '262', '元宝山区', '3', '0');
INSERT INTO `sw_region` VALUES ('2192', '262', '松山区', '3', '0');
INSERT INTO `sw_region` VALUES ('2193', '262', '阿鲁科尔沁旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2194', '262', '巴林左旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2195', '262', '巴林右旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2196', '262', '林西县', '3', '0');
INSERT INTO `sw_region` VALUES ('2197', '262', '克什克腾旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2198', '262', '翁牛特旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2199', '262', '喀喇沁旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2200', '262', '宁城县', '3', '0');
INSERT INTO `sw_region` VALUES ('2201', '262', '敖汉旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2202', '263', '东胜区', '3', '0');
INSERT INTO `sw_region` VALUES ('2203', '263', '达拉特旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2204', '263', '准格尔旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2205', '263', '鄂托克前旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2206', '263', '鄂托克旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2207', '263', '杭锦旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2208', '263', '乌审旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2209', '263', '伊金霍洛旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2210', '264', '海拉尔区', '3', '0');
INSERT INTO `sw_region` VALUES ('2211', '264', '莫力达瓦', '3', '0');
INSERT INTO `sw_region` VALUES ('2212', '264', '满洲里市', '3', '0');
INSERT INTO `sw_region` VALUES ('2213', '264', '牙克石市', '3', '0');
INSERT INTO `sw_region` VALUES ('2214', '264', '扎兰屯市', '3', '0');
INSERT INTO `sw_region` VALUES ('2215', '264', '额尔古纳市', '3', '0');
INSERT INTO `sw_region` VALUES ('2216', '264', '根河市', '3', '0');
INSERT INTO `sw_region` VALUES ('2217', '264', '阿荣旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2218', '264', '鄂伦春自治旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2219', '264', '鄂温克族自治旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2220', '264', '陈巴尔虎旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2221', '264', '新巴尔虎左旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2222', '264', '新巴尔虎右旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2223', '265', '科尔沁区', '3', '0');
INSERT INTO `sw_region` VALUES ('2224', '265', '霍林郭勒市', '3', '0');
INSERT INTO `sw_region` VALUES ('2225', '265', '科尔沁左翼中旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2226', '265', '科尔沁左翼后旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2227', '265', '开鲁县', '3', '0');
INSERT INTO `sw_region` VALUES ('2228', '265', '库伦旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2229', '265', '奈曼旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2230', '265', '扎鲁特旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2231', '266', '海勃湾区', '3', '0');
INSERT INTO `sw_region` VALUES ('2232', '266', '乌达区', '3', '0');
INSERT INTO `sw_region` VALUES ('2233', '266', '海南区', '3', '0');
INSERT INTO `sw_region` VALUES ('2234', '267', '化德县', '3', '0');
INSERT INTO `sw_region` VALUES ('2235', '267', '集宁区', '3', '0');
INSERT INTO `sw_region` VALUES ('2236', '267', '丰镇市', '3', '0');
INSERT INTO `sw_region` VALUES ('2237', '267', '卓资县', '3', '0');
INSERT INTO `sw_region` VALUES ('2238', '267', '商都县', '3', '0');
INSERT INTO `sw_region` VALUES ('2239', '267', '兴和县', '3', '0');
INSERT INTO `sw_region` VALUES ('2240', '267', '凉城县', '3', '0');
INSERT INTO `sw_region` VALUES ('2241', '267', '察哈尔右翼前旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2242', '267', '察哈尔右翼中旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2243', '267', '察哈尔右翼后旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2244', '267', '四子王旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2245', '268', '二连浩特市', '3', '0');
INSERT INTO `sw_region` VALUES ('2246', '268', '锡林浩特市', '3', '0');
INSERT INTO `sw_region` VALUES ('2247', '268', '阿巴嘎旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2248', '268', '苏尼特左旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2249', '268', '苏尼特右旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2250', '268', '东乌珠穆沁旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2251', '268', '西乌珠穆沁旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2252', '268', '太仆寺旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2253', '268', '镶黄旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2254', '268', '正镶白旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2255', '268', '正蓝旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2256', '268', '多伦县', '3', '0');
INSERT INTO `sw_region` VALUES ('2257', '269', '乌兰浩特市', '3', '0');
INSERT INTO `sw_region` VALUES ('2258', '269', '阿尔山市', '3', '0');
INSERT INTO `sw_region` VALUES ('2259', '269', '科尔沁右翼前旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2260', '269', '科尔沁右翼中旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2261', '269', '扎赉特旗', '3', '0');
INSERT INTO `sw_region` VALUES ('2262', '269', '突泉县', '3', '0');
INSERT INTO `sw_region` VALUES ('2263', '270', '西夏区', '3', '0');
INSERT INTO `sw_region` VALUES ('2264', '270', '金凤区', '3', '0');
INSERT INTO `sw_region` VALUES ('2265', '270', '兴庆区', '3', '0');
INSERT INTO `sw_region` VALUES ('2266', '270', '灵武市', '3', '0');
INSERT INTO `sw_region` VALUES ('2267', '270', '永宁县', '3', '0');
INSERT INTO `sw_region` VALUES ('2268', '270', '贺兰县', '3', '0');
INSERT INTO `sw_region` VALUES ('2269', '271', '原州区', '3', '0');
INSERT INTO `sw_region` VALUES ('2270', '271', '海原县', '3', '0');
INSERT INTO `sw_region` VALUES ('2271', '271', '西吉县', '3', '0');
INSERT INTO `sw_region` VALUES ('2272', '271', '隆德县', '3', '0');
INSERT INTO `sw_region` VALUES ('2273', '271', '泾源县', '3', '0');
INSERT INTO `sw_region` VALUES ('2274', '271', '彭阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('2275', '272', '惠农县', '3', '0');
INSERT INTO `sw_region` VALUES ('2276', '272', '大武口区', '3', '0');
INSERT INTO `sw_region` VALUES ('2277', '272', '惠农区', '3', '0');
INSERT INTO `sw_region` VALUES ('2278', '272', '陶乐县', '3', '0');
INSERT INTO `sw_region` VALUES ('2279', '272', '平罗县', '3', '0');
INSERT INTO `sw_region` VALUES ('2280', '273', '利通区', '3', '0');
INSERT INTO `sw_region` VALUES ('2281', '273', '中卫县', '3', '0');
INSERT INTO `sw_region` VALUES ('2282', '273', '青铜峡市', '3', '0');
INSERT INTO `sw_region` VALUES ('2283', '273', '中宁县', '3', '0');
INSERT INTO `sw_region` VALUES ('2284', '273', '盐池县', '3', '0');
INSERT INTO `sw_region` VALUES ('2285', '273', '同心县', '3', '0');
INSERT INTO `sw_region` VALUES ('2286', '274', '沙坡头区', '3', '0');
INSERT INTO `sw_region` VALUES ('2287', '274', '海原县', '3', '0');
INSERT INTO `sw_region` VALUES ('2288', '274', '中宁县', '3', '0');
INSERT INTO `sw_region` VALUES ('2289', '275', '城中区', '3', '0');
INSERT INTO `sw_region` VALUES ('2290', '275', '城东区', '3', '0');
INSERT INTO `sw_region` VALUES ('2291', '275', '城西区', '3', '0');
INSERT INTO `sw_region` VALUES ('2292', '275', '城北区', '3', '0');
INSERT INTO `sw_region` VALUES ('2293', '275', '湟中县', '3', '0');
INSERT INTO `sw_region` VALUES ('2294', '275', '湟源县', '3', '0');
INSERT INTO `sw_region` VALUES ('2295', '275', '大通', '3', '0');
INSERT INTO `sw_region` VALUES ('2296', '276', '玛沁县', '3', '0');
INSERT INTO `sw_region` VALUES ('2297', '276', '班玛县', '3', '0');
INSERT INTO `sw_region` VALUES ('2298', '276', '甘德县', '3', '0');
INSERT INTO `sw_region` VALUES ('2299', '276', '达日县', '3', '0');
INSERT INTO `sw_region` VALUES ('2300', '276', '久治县', '3', '0');
INSERT INTO `sw_region` VALUES ('2301', '276', '玛多县', '3', '0');
INSERT INTO `sw_region` VALUES ('2302', '277', '海晏县', '3', '0');
INSERT INTO `sw_region` VALUES ('2303', '277', '祁连县', '3', '0');
INSERT INTO `sw_region` VALUES ('2304', '277', '刚察县', '3', '0');
INSERT INTO `sw_region` VALUES ('2305', '277', '门源', '3', '0');
INSERT INTO `sw_region` VALUES ('2306', '278', '平安县', '3', '0');
INSERT INTO `sw_region` VALUES ('2307', '278', '乐都县', '3', '0');
INSERT INTO `sw_region` VALUES ('2308', '278', '民和', '3', '0');
INSERT INTO `sw_region` VALUES ('2309', '278', '互助', '3', '0');
INSERT INTO `sw_region` VALUES ('2310', '278', '化隆', '3', '0');
INSERT INTO `sw_region` VALUES ('2311', '278', '循化', '3', '0');
INSERT INTO `sw_region` VALUES ('2312', '279', '共和县', '3', '0');
INSERT INTO `sw_region` VALUES ('2313', '279', '同德县', '3', '0');
INSERT INTO `sw_region` VALUES ('2314', '279', '贵德县', '3', '0');
INSERT INTO `sw_region` VALUES ('2315', '279', '兴海县', '3', '0');
INSERT INTO `sw_region` VALUES ('2316', '279', '贵南县', '3', '0');
INSERT INTO `sw_region` VALUES ('2317', '280', '德令哈市', '3', '0');
INSERT INTO `sw_region` VALUES ('2318', '280', '格尔木市', '3', '0');
INSERT INTO `sw_region` VALUES ('2319', '280', '乌兰县', '3', '0');
INSERT INTO `sw_region` VALUES ('2320', '280', '都兰县', '3', '0');
INSERT INTO `sw_region` VALUES ('2321', '280', '天峻县', '3', '0');
INSERT INTO `sw_region` VALUES ('2322', '281', '同仁县', '3', '0');
INSERT INTO `sw_region` VALUES ('2323', '281', '尖扎县', '3', '0');
INSERT INTO `sw_region` VALUES ('2324', '281', '泽库县', '3', '0');
INSERT INTO `sw_region` VALUES ('2325', '281', '河南蒙古族自治县', '3', '0');
INSERT INTO `sw_region` VALUES ('2326', '282', '玉树县', '3', '0');
INSERT INTO `sw_region` VALUES ('2327', '282', '杂多县', '3', '0');
INSERT INTO `sw_region` VALUES ('2328', '282', '称多县', '3', '0');
INSERT INTO `sw_region` VALUES ('2329', '282', '治多县', '3', '0');
INSERT INTO `sw_region` VALUES ('2330', '282', '囊谦县', '3', '0');
INSERT INTO `sw_region` VALUES ('2331', '282', '曲麻莱县', '3', '0');
INSERT INTO `sw_region` VALUES ('2332', '283', '市中区', '3', '0');
INSERT INTO `sw_region` VALUES ('2333', '283', '历下区', '3', '0');
INSERT INTO `sw_region` VALUES ('2334', '283', '天桥区', '3', '0');
INSERT INTO `sw_region` VALUES ('2335', '283', '槐荫区', '3', '0');
INSERT INTO `sw_region` VALUES ('2336', '283', '历城区', '3', '0');
INSERT INTO `sw_region` VALUES ('2337', '283', '长清区', '3', '0');
INSERT INTO `sw_region` VALUES ('2338', '283', '章丘市', '3', '0');
INSERT INTO `sw_region` VALUES ('2339', '283', '平阴县', '3', '0');
INSERT INTO `sw_region` VALUES ('2340', '283', '济阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('2341', '283', '商河县', '3', '0');
INSERT INTO `sw_region` VALUES ('2342', '284', '市南区', '3', '0');
INSERT INTO `sw_region` VALUES ('2343', '284', '市北区', '3', '0');
INSERT INTO `sw_region` VALUES ('2344', '284', '城阳区', '3', '0');
INSERT INTO `sw_region` VALUES ('2345', '284', '四方区', '3', '0');
INSERT INTO `sw_region` VALUES ('2346', '284', '李沧区', '3', '0');
INSERT INTO `sw_region` VALUES ('2347', '284', '黄岛区', '3', '0');
INSERT INTO `sw_region` VALUES ('2348', '284', '崂山区', '3', '0');
INSERT INTO `sw_region` VALUES ('2349', '284', '胶州市', '3', '0');
INSERT INTO `sw_region` VALUES ('2350', '284', '即墨市', '3', '0');
INSERT INTO `sw_region` VALUES ('2351', '284', '平度市', '3', '0');
INSERT INTO `sw_region` VALUES ('2352', '284', '胶南市', '3', '0');
INSERT INTO `sw_region` VALUES ('2353', '284', '莱西市', '3', '0');
INSERT INTO `sw_region` VALUES ('2354', '285', '滨城区', '3', '0');
INSERT INTO `sw_region` VALUES ('2355', '285', '惠民县', '3', '0');
INSERT INTO `sw_region` VALUES ('2356', '285', '阳信县', '3', '0');
INSERT INTO `sw_region` VALUES ('2357', '285', '无棣县', '3', '0');
INSERT INTO `sw_region` VALUES ('2358', '285', '沾化县', '3', '0');
INSERT INTO `sw_region` VALUES ('2359', '285', '博兴县', '3', '0');
INSERT INTO `sw_region` VALUES ('2360', '285', '邹平县', '3', '0');
INSERT INTO `sw_region` VALUES ('2361', '286', '德城区', '3', '0');
INSERT INTO `sw_region` VALUES ('2362', '286', '陵县', '3', '0');
INSERT INTO `sw_region` VALUES ('2363', '286', '乐陵市', '3', '0');
INSERT INTO `sw_region` VALUES ('2364', '286', '禹城市', '3', '0');
INSERT INTO `sw_region` VALUES ('2365', '286', '宁津县', '3', '0');
INSERT INTO `sw_region` VALUES ('2366', '286', '庆云县', '3', '0');
INSERT INTO `sw_region` VALUES ('2367', '286', '临邑县', '3', '0');
INSERT INTO `sw_region` VALUES ('2368', '286', '齐河县', '3', '0');
INSERT INTO `sw_region` VALUES ('2369', '286', '平原县', '3', '0');
INSERT INTO `sw_region` VALUES ('2370', '286', '夏津县', '3', '0');
INSERT INTO `sw_region` VALUES ('2371', '286', '武城县', '3', '0');
INSERT INTO `sw_region` VALUES ('2372', '287', '东营区', '3', '0');
INSERT INTO `sw_region` VALUES ('2373', '287', '河口区', '3', '0');
INSERT INTO `sw_region` VALUES ('2374', '287', '垦利县', '3', '0');
INSERT INTO `sw_region` VALUES ('2375', '287', '利津县', '3', '0');
INSERT INTO `sw_region` VALUES ('2376', '287', '广饶县', '3', '0');
INSERT INTO `sw_region` VALUES ('2377', '288', '牡丹区', '3', '0');
INSERT INTO `sw_region` VALUES ('2378', '288', '曹县', '3', '0');
INSERT INTO `sw_region` VALUES ('2379', '288', '单县', '3', '0');
INSERT INTO `sw_region` VALUES ('2380', '288', '成武县', '3', '0');
INSERT INTO `sw_region` VALUES ('2381', '288', '巨野县', '3', '0');
INSERT INTO `sw_region` VALUES ('2382', '288', '郓城县', '3', '0');
INSERT INTO `sw_region` VALUES ('2383', '288', '鄄城县', '3', '0');
INSERT INTO `sw_region` VALUES ('2384', '288', '定陶县', '3', '0');
INSERT INTO `sw_region` VALUES ('2385', '288', '东明县', '3', '0');
INSERT INTO `sw_region` VALUES ('2386', '289', '市中区', '3', '0');
INSERT INTO `sw_region` VALUES ('2387', '289', '任城区', '3', '0');
INSERT INTO `sw_region` VALUES ('2388', '289', '曲阜市', '3', '0');
INSERT INTO `sw_region` VALUES ('2389', '289', '兖州市', '3', '0');
INSERT INTO `sw_region` VALUES ('2390', '289', '邹城市', '3', '0');
INSERT INTO `sw_region` VALUES ('2391', '289', '微山县', '3', '0');
INSERT INTO `sw_region` VALUES ('2392', '289', '鱼台县', '3', '0');
INSERT INTO `sw_region` VALUES ('2393', '289', '金乡县', '3', '0');
INSERT INTO `sw_region` VALUES ('2394', '289', '嘉祥县', '3', '0');
INSERT INTO `sw_region` VALUES ('2395', '289', '汶上县', '3', '0');
INSERT INTO `sw_region` VALUES ('2396', '289', '泗水县', '3', '0');
INSERT INTO `sw_region` VALUES ('2397', '289', '梁山县', '3', '0');
INSERT INTO `sw_region` VALUES ('2398', '290', '莱城区', '3', '0');
INSERT INTO `sw_region` VALUES ('2399', '290', '钢城区', '3', '0');
INSERT INTO `sw_region` VALUES ('2400', '291', '东昌府区', '3', '0');
INSERT INTO `sw_region` VALUES ('2401', '291', '临清市', '3', '0');
INSERT INTO `sw_region` VALUES ('2402', '291', '阳谷县', '3', '0');
INSERT INTO `sw_region` VALUES ('2403', '291', '莘县', '3', '0');
INSERT INTO `sw_region` VALUES ('2404', '291', '茌平县', '3', '0');
INSERT INTO `sw_region` VALUES ('2405', '291', '东阿县', '3', '0');
INSERT INTO `sw_region` VALUES ('2406', '291', '冠县', '3', '0');
INSERT INTO `sw_region` VALUES ('2407', '291', '高唐县', '3', '0');
INSERT INTO `sw_region` VALUES ('2408', '292', '兰山区', '3', '0');
INSERT INTO `sw_region` VALUES ('2409', '292', '罗庄区', '3', '0');
INSERT INTO `sw_region` VALUES ('2410', '292', '河东区', '3', '0');
INSERT INTO `sw_region` VALUES ('2411', '292', '沂南县', '3', '0');
INSERT INTO `sw_region` VALUES ('2412', '292', '郯城县', '3', '0');
INSERT INTO `sw_region` VALUES ('2413', '292', '沂水县', '3', '0');
INSERT INTO `sw_region` VALUES ('2414', '292', '苍山县', '3', '0');
INSERT INTO `sw_region` VALUES ('2415', '292', '费县', '3', '0');
INSERT INTO `sw_region` VALUES ('2416', '292', '平邑县', '3', '0');
INSERT INTO `sw_region` VALUES ('2417', '292', '莒南县', '3', '0');
INSERT INTO `sw_region` VALUES ('2418', '292', '蒙阴县', '3', '0');
INSERT INTO `sw_region` VALUES ('2419', '292', '临沭县', '3', '0');
INSERT INTO `sw_region` VALUES ('2420', '293', '东港区', '3', '0');
INSERT INTO `sw_region` VALUES ('2421', '293', '岚山区', '3', '0');
INSERT INTO `sw_region` VALUES ('2422', '293', '五莲县', '3', '0');
INSERT INTO `sw_region` VALUES ('2423', '293', '莒县', '3', '0');
INSERT INTO `sw_region` VALUES ('2424', '294', '泰山区', '3', '0');
INSERT INTO `sw_region` VALUES ('2425', '294', '岱岳区', '3', '0');
INSERT INTO `sw_region` VALUES ('2426', '294', '新泰市', '3', '0');
INSERT INTO `sw_region` VALUES ('2427', '294', '肥城市', '3', '0');
INSERT INTO `sw_region` VALUES ('2428', '294', '宁阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('2429', '294', '东平县', '3', '0');
INSERT INTO `sw_region` VALUES ('2430', '295', '荣成市', '3', '0');
INSERT INTO `sw_region` VALUES ('2431', '295', '乳山市', '3', '0');
INSERT INTO `sw_region` VALUES ('2432', '295', '环翠区', '3', '0');
INSERT INTO `sw_region` VALUES ('2433', '295', '文登市', '3', '0');
INSERT INTO `sw_region` VALUES ('2434', '296', '潍城区', '3', '0');
INSERT INTO `sw_region` VALUES ('2435', '296', '寒亭区', '3', '0');
INSERT INTO `sw_region` VALUES ('2436', '296', '坊子区', '3', '0');
INSERT INTO `sw_region` VALUES ('2437', '296', '奎文区', '3', '0');
INSERT INTO `sw_region` VALUES ('2438', '296', '青州市', '3', '0');
INSERT INTO `sw_region` VALUES ('2439', '296', '诸城市', '3', '0');
INSERT INTO `sw_region` VALUES ('2440', '296', '寿光市', '3', '0');
INSERT INTO `sw_region` VALUES ('2441', '296', '安丘市', '3', '0');
INSERT INTO `sw_region` VALUES ('2442', '296', '高密市', '3', '0');
INSERT INTO `sw_region` VALUES ('2443', '296', '昌邑市', '3', '0');
INSERT INTO `sw_region` VALUES ('2444', '296', '临朐县', '3', '0');
INSERT INTO `sw_region` VALUES ('2445', '296', '昌乐县', '3', '0');
INSERT INTO `sw_region` VALUES ('2446', '297', '芝罘区', '3', '0');
INSERT INTO `sw_region` VALUES ('2447', '297', '福山区', '3', '0');
INSERT INTO `sw_region` VALUES ('2448', '297', '牟平区', '3', '0');
INSERT INTO `sw_region` VALUES ('2449', '297', '莱山区', '3', '0');
INSERT INTO `sw_region` VALUES ('2450', '297', '开发区', '3', '0');
INSERT INTO `sw_region` VALUES ('2451', '297', '龙口市', '3', '0');
INSERT INTO `sw_region` VALUES ('2452', '297', '莱阳市', '3', '0');
INSERT INTO `sw_region` VALUES ('2453', '297', '莱州市', '3', '0');
INSERT INTO `sw_region` VALUES ('2454', '297', '蓬莱市', '3', '0');
INSERT INTO `sw_region` VALUES ('2455', '297', '招远市', '3', '0');
INSERT INTO `sw_region` VALUES ('2456', '297', '栖霞市', '3', '0');
INSERT INTO `sw_region` VALUES ('2457', '297', '海阳市', '3', '0');
INSERT INTO `sw_region` VALUES ('2458', '297', '长岛县', '3', '0');
INSERT INTO `sw_region` VALUES ('2459', '298', '市中区', '3', '0');
INSERT INTO `sw_region` VALUES ('2460', '298', '山亭区', '3', '0');
INSERT INTO `sw_region` VALUES ('2461', '298', '峄城区', '3', '0');
INSERT INTO `sw_region` VALUES ('2462', '298', '台儿庄区', '3', '0');
INSERT INTO `sw_region` VALUES ('2463', '298', '薛城区', '3', '0');
INSERT INTO `sw_region` VALUES ('2464', '298', '滕州市', '3', '0');
INSERT INTO `sw_region` VALUES ('2465', '299', '张店区', '3', '0');
INSERT INTO `sw_region` VALUES ('2466', '299', '临淄区', '3', '0');
INSERT INTO `sw_region` VALUES ('2467', '299', '淄川区', '3', '0');
INSERT INTO `sw_region` VALUES ('2468', '299', '博山区', '3', '0');
INSERT INTO `sw_region` VALUES ('2469', '299', '周村区', '3', '0');
INSERT INTO `sw_region` VALUES ('2470', '299', '桓台县', '3', '0');
INSERT INTO `sw_region` VALUES ('2471', '299', '高青县', '3', '0');
INSERT INTO `sw_region` VALUES ('2472', '299', '沂源县', '3', '0');
INSERT INTO `sw_region` VALUES ('2473', '300', '杏花岭区', '3', '0');
INSERT INTO `sw_region` VALUES ('2474', '300', '小店区', '3', '0');
INSERT INTO `sw_region` VALUES ('2475', '300', '迎泽区', '3', '0');
INSERT INTO `sw_region` VALUES ('2476', '300', '尖草坪区', '3', '0');
INSERT INTO `sw_region` VALUES ('2477', '300', '万柏林区', '3', '0');
INSERT INTO `sw_region` VALUES ('2478', '300', '晋源区', '3', '0');
INSERT INTO `sw_region` VALUES ('2479', '300', '高新开发区', '3', '0');
INSERT INTO `sw_region` VALUES ('2480', '300', '民营经济开发区', '3', '0');
INSERT INTO `sw_region` VALUES ('2481', '300', '经济技术开发区', '3', '0');
INSERT INTO `sw_region` VALUES ('2482', '300', '清徐县', '3', '0');
INSERT INTO `sw_region` VALUES ('2483', '300', '阳曲县', '3', '0');
INSERT INTO `sw_region` VALUES ('2484', '300', '娄烦县', '3', '0');
INSERT INTO `sw_region` VALUES ('2485', '300', '古交市', '3', '0');
INSERT INTO `sw_region` VALUES ('2486', '301', '城区', '3', '0');
INSERT INTO `sw_region` VALUES ('2487', '301', '郊区', '3', '0');
INSERT INTO `sw_region` VALUES ('2488', '301', '沁县', '3', '0');
INSERT INTO `sw_region` VALUES ('2489', '301', '潞城市', '3', '0');
INSERT INTO `sw_region` VALUES ('2490', '301', '长治县', '3', '0');
INSERT INTO `sw_region` VALUES ('2491', '301', '襄垣县', '3', '0');
INSERT INTO `sw_region` VALUES ('2492', '301', '屯留县', '3', '0');
INSERT INTO `sw_region` VALUES ('2493', '301', '平顺县', '3', '0');
INSERT INTO `sw_region` VALUES ('2494', '301', '黎城县', '3', '0');
INSERT INTO `sw_region` VALUES ('2495', '301', '壶关县', '3', '0');
INSERT INTO `sw_region` VALUES ('2496', '301', '长子县', '3', '0');
INSERT INTO `sw_region` VALUES ('2497', '301', '武乡县', '3', '0');
INSERT INTO `sw_region` VALUES ('2498', '301', '沁源县', '3', '0');
INSERT INTO `sw_region` VALUES ('2499', '302', '城区', '3', '0');
INSERT INTO `sw_region` VALUES ('2500', '302', '矿区', '3', '0');
INSERT INTO `sw_region` VALUES ('2501', '302', '南郊区', '3', '0');
INSERT INTO `sw_region` VALUES ('2502', '302', '新荣区', '3', '0');
INSERT INTO `sw_region` VALUES ('2503', '302', '阳高县', '3', '0');
INSERT INTO `sw_region` VALUES ('2504', '302', '天镇县', '3', '0');
INSERT INTO `sw_region` VALUES ('2505', '302', '广灵县', '3', '0');
INSERT INTO `sw_region` VALUES ('2506', '302', '灵丘县', '3', '0');
INSERT INTO `sw_region` VALUES ('2507', '302', '浑源县', '3', '0');
INSERT INTO `sw_region` VALUES ('2508', '302', '左云县', '3', '0');
INSERT INTO `sw_region` VALUES ('2509', '302', '大同县', '3', '0');
INSERT INTO `sw_region` VALUES ('2510', '303', '城区', '3', '0');
INSERT INTO `sw_region` VALUES ('2511', '303', '高平市', '3', '0');
INSERT INTO `sw_region` VALUES ('2512', '303', '沁水县', '3', '0');
INSERT INTO `sw_region` VALUES ('2513', '303', '阳城县', '3', '0');
INSERT INTO `sw_region` VALUES ('2514', '303', '陵川县', '3', '0');
INSERT INTO `sw_region` VALUES ('2515', '303', '泽州县', '3', '0');
INSERT INTO `sw_region` VALUES ('2516', '304', '榆次区', '3', '0');
INSERT INTO `sw_region` VALUES ('2517', '304', '介休市', '3', '0');
INSERT INTO `sw_region` VALUES ('2518', '304', '榆社县', '3', '0');
INSERT INTO `sw_region` VALUES ('2519', '304', '左权县', '3', '0');
INSERT INTO `sw_region` VALUES ('2520', '304', '和顺县', '3', '0');
INSERT INTO `sw_region` VALUES ('2521', '304', '昔阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('2522', '304', '寿阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('2523', '304', '太谷县', '3', '0');
INSERT INTO `sw_region` VALUES ('2524', '304', '祁县', '3', '0');
INSERT INTO `sw_region` VALUES ('2525', '304', '平遥县', '3', '0');
INSERT INTO `sw_region` VALUES ('2526', '304', '灵石县', '3', '0');
INSERT INTO `sw_region` VALUES ('2527', '305', '尧都区', '3', '0');
INSERT INTO `sw_region` VALUES ('2528', '305', '侯马市', '3', '0');
INSERT INTO `sw_region` VALUES ('2529', '305', '霍州市', '3', '0');
INSERT INTO `sw_region` VALUES ('2530', '305', '曲沃县', '3', '0');
INSERT INTO `sw_region` VALUES ('2531', '305', '翼城县', '3', '0');
INSERT INTO `sw_region` VALUES ('2532', '305', '襄汾县', '3', '0');
INSERT INTO `sw_region` VALUES ('2533', '305', '洪洞县', '3', '0');
INSERT INTO `sw_region` VALUES ('2534', '305', '吉县', '3', '0');
INSERT INTO `sw_region` VALUES ('2535', '305', '安泽县', '3', '0');
INSERT INTO `sw_region` VALUES ('2536', '305', '浮山县', '3', '0');
INSERT INTO `sw_region` VALUES ('2537', '305', '古县', '3', '0');
INSERT INTO `sw_region` VALUES ('2538', '305', '乡宁县', '3', '0');
INSERT INTO `sw_region` VALUES ('2539', '305', '大宁县', '3', '0');
INSERT INTO `sw_region` VALUES ('2540', '305', '隰县', '3', '0');
INSERT INTO `sw_region` VALUES ('2541', '305', '永和县', '3', '0');
INSERT INTO `sw_region` VALUES ('2542', '305', '蒲县', '3', '0');
INSERT INTO `sw_region` VALUES ('2543', '305', '汾西县', '3', '0');
INSERT INTO `sw_region` VALUES ('2544', '306', '离石市', '3', '0');
INSERT INTO `sw_region` VALUES ('2545', '306', '离石区', '3', '0');
INSERT INTO `sw_region` VALUES ('2546', '306', '孝义市', '3', '0');
INSERT INTO `sw_region` VALUES ('2547', '306', '汾阳市', '3', '0');
INSERT INTO `sw_region` VALUES ('2548', '306', '文水县', '3', '0');
INSERT INTO `sw_region` VALUES ('2549', '306', '交城县', '3', '0');
INSERT INTO `sw_region` VALUES ('2550', '306', '兴县', '3', '0');
INSERT INTO `sw_region` VALUES ('2551', '306', '临县', '3', '0');
INSERT INTO `sw_region` VALUES ('2552', '306', '柳林县', '3', '0');
INSERT INTO `sw_region` VALUES ('2553', '306', '石楼县', '3', '0');
INSERT INTO `sw_region` VALUES ('2554', '306', '岚县', '3', '0');
INSERT INTO `sw_region` VALUES ('2555', '306', '方山县', '3', '0');
INSERT INTO `sw_region` VALUES ('2556', '306', '中阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('2557', '306', '交口县', '3', '0');
INSERT INTO `sw_region` VALUES ('2558', '307', '朔城区', '3', '0');
INSERT INTO `sw_region` VALUES ('2559', '307', '平鲁区', '3', '0');
INSERT INTO `sw_region` VALUES ('2560', '307', '山阴县', '3', '0');
INSERT INTO `sw_region` VALUES ('2561', '307', '应县', '3', '0');
INSERT INTO `sw_region` VALUES ('2562', '307', '右玉县', '3', '0');
INSERT INTO `sw_region` VALUES ('2563', '307', '怀仁县', '3', '0');
INSERT INTO `sw_region` VALUES ('2564', '308', '忻府区', '3', '0');
INSERT INTO `sw_region` VALUES ('2565', '308', '原平市', '3', '0');
INSERT INTO `sw_region` VALUES ('2566', '308', '定襄县', '3', '0');
INSERT INTO `sw_region` VALUES ('2567', '308', '五台县', '3', '0');
INSERT INTO `sw_region` VALUES ('2568', '308', '代县', '3', '0');
INSERT INTO `sw_region` VALUES ('2569', '308', '繁峙县', '3', '0');
INSERT INTO `sw_region` VALUES ('2570', '308', '宁武县', '3', '0');
INSERT INTO `sw_region` VALUES ('2571', '308', '静乐县', '3', '0');
INSERT INTO `sw_region` VALUES ('2572', '308', '神池县', '3', '0');
INSERT INTO `sw_region` VALUES ('2573', '308', '五寨县', '3', '0');
INSERT INTO `sw_region` VALUES ('2574', '308', '岢岚县', '3', '0');
INSERT INTO `sw_region` VALUES ('2575', '308', '河曲县', '3', '0');
INSERT INTO `sw_region` VALUES ('2576', '308', '保德县', '3', '0');
INSERT INTO `sw_region` VALUES ('2577', '308', '偏关县', '3', '0');
INSERT INTO `sw_region` VALUES ('2578', '309', '城区', '3', '0');
INSERT INTO `sw_region` VALUES ('2579', '309', '矿区', '3', '0');
INSERT INTO `sw_region` VALUES ('2580', '309', '郊区', '3', '0');
INSERT INTO `sw_region` VALUES ('2581', '309', '平定县', '3', '0');
INSERT INTO `sw_region` VALUES ('2582', '309', '盂县', '3', '0');
INSERT INTO `sw_region` VALUES ('2583', '310', '盐湖区', '3', '0');
INSERT INTO `sw_region` VALUES ('2584', '310', '永济市', '3', '0');
INSERT INTO `sw_region` VALUES ('2585', '310', '河津市', '3', '0');
INSERT INTO `sw_region` VALUES ('2586', '310', '临猗县', '3', '0');
INSERT INTO `sw_region` VALUES ('2587', '310', '万荣县', '3', '0');
INSERT INTO `sw_region` VALUES ('2588', '310', '闻喜县', '3', '0');
INSERT INTO `sw_region` VALUES ('2589', '310', '稷山县', '3', '0');
INSERT INTO `sw_region` VALUES ('2590', '310', '新绛县', '3', '0');
INSERT INTO `sw_region` VALUES ('2591', '310', '绛县', '3', '0');
INSERT INTO `sw_region` VALUES ('2592', '310', '垣曲县', '3', '0');
INSERT INTO `sw_region` VALUES ('2593', '310', '夏县', '3', '0');
INSERT INTO `sw_region` VALUES ('2594', '310', '平陆县', '3', '0');
INSERT INTO `sw_region` VALUES ('2595', '310', '芮城县', '3', '0');
INSERT INTO `sw_region` VALUES ('2596', '311', '莲湖区', '3', '0');
INSERT INTO `sw_region` VALUES ('2597', '311', '新城区', '3', '0');
INSERT INTO `sw_region` VALUES ('2598', '311', '碑林区', '3', '0');
INSERT INTO `sw_region` VALUES ('2599', '311', '雁塔区', '3', '0');
INSERT INTO `sw_region` VALUES ('2600', '311', '灞桥区', '3', '0');
INSERT INTO `sw_region` VALUES ('2601', '311', '未央区', '3', '0');
INSERT INTO `sw_region` VALUES ('2602', '311', '阎良区', '3', '0');
INSERT INTO `sw_region` VALUES ('2603', '311', '临潼区', '3', '0');
INSERT INTO `sw_region` VALUES ('2604', '311', '长安区', '3', '0');
INSERT INTO `sw_region` VALUES ('2605', '311', '蓝田县', '3', '0');
INSERT INTO `sw_region` VALUES ('2606', '311', '周至县', '3', '0');
INSERT INTO `sw_region` VALUES ('2607', '311', '户县', '3', '0');
INSERT INTO `sw_region` VALUES ('2608', '311', '高陵县', '3', '0');
INSERT INTO `sw_region` VALUES ('2609', '312', '汉滨区', '3', '0');
INSERT INTO `sw_region` VALUES ('2610', '312', '汉阴县', '3', '0');
INSERT INTO `sw_region` VALUES ('2611', '312', '石泉县', '3', '0');
INSERT INTO `sw_region` VALUES ('2612', '312', '宁陕县', '3', '0');
INSERT INTO `sw_region` VALUES ('2613', '312', '紫阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('2614', '312', '岚皋县', '3', '0');
INSERT INTO `sw_region` VALUES ('2615', '312', '平利县', '3', '0');
INSERT INTO `sw_region` VALUES ('2616', '312', '镇坪县', '3', '0');
INSERT INTO `sw_region` VALUES ('2617', '312', '旬阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('2618', '312', '白河县', '3', '0');
INSERT INTO `sw_region` VALUES ('2619', '313', '陈仓区', '3', '0');
INSERT INTO `sw_region` VALUES ('2620', '313', '渭滨区', '3', '0');
INSERT INTO `sw_region` VALUES ('2621', '313', '金台区', '3', '0');
INSERT INTO `sw_region` VALUES ('2622', '313', '凤翔县', '3', '0');
INSERT INTO `sw_region` VALUES ('2623', '313', '岐山县', '3', '0');
INSERT INTO `sw_region` VALUES ('2624', '313', '扶风县', '3', '0');
INSERT INTO `sw_region` VALUES ('2625', '313', '眉县', '3', '0');
INSERT INTO `sw_region` VALUES ('2626', '313', '陇县', '3', '0');
INSERT INTO `sw_region` VALUES ('2627', '313', '千阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('2628', '313', '麟游县', '3', '0');
INSERT INTO `sw_region` VALUES ('2629', '313', '凤县', '3', '0');
INSERT INTO `sw_region` VALUES ('2630', '313', '太白县', '3', '0');
INSERT INTO `sw_region` VALUES ('2631', '314', '汉台区', '3', '0');
INSERT INTO `sw_region` VALUES ('2632', '314', '南郑县', '3', '0');
INSERT INTO `sw_region` VALUES ('2633', '314', '城固县', '3', '0');
INSERT INTO `sw_region` VALUES ('2634', '314', '洋县', '3', '0');
INSERT INTO `sw_region` VALUES ('2635', '314', '西乡县', '3', '0');
INSERT INTO `sw_region` VALUES ('2636', '314', '勉县', '3', '0');
INSERT INTO `sw_region` VALUES ('2637', '314', '宁强县', '3', '0');
INSERT INTO `sw_region` VALUES ('2638', '314', '略阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('2639', '314', '镇巴县', '3', '0');
INSERT INTO `sw_region` VALUES ('2640', '314', '留坝县', '3', '0');
INSERT INTO `sw_region` VALUES ('2641', '314', '佛坪县', '3', '0');
INSERT INTO `sw_region` VALUES ('2642', '315', '商州区', '3', '0');
INSERT INTO `sw_region` VALUES ('2643', '315', '洛南县', '3', '0');
INSERT INTO `sw_region` VALUES ('2644', '315', '丹凤县', '3', '0');
INSERT INTO `sw_region` VALUES ('2645', '315', '商南县', '3', '0');
INSERT INTO `sw_region` VALUES ('2646', '315', '山阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('2647', '315', '镇安县', '3', '0');
INSERT INTO `sw_region` VALUES ('2648', '315', '柞水县', '3', '0');
INSERT INTO `sw_region` VALUES ('2649', '316', '耀州区', '3', '0');
INSERT INTO `sw_region` VALUES ('2650', '316', '王益区', '3', '0');
INSERT INTO `sw_region` VALUES ('2651', '316', '印台区', '3', '0');
INSERT INTO `sw_region` VALUES ('2652', '316', '宜君县', '3', '0');
INSERT INTO `sw_region` VALUES ('2653', '317', '临渭区', '3', '0');
INSERT INTO `sw_region` VALUES ('2654', '317', '韩城市', '3', '0');
INSERT INTO `sw_region` VALUES ('2655', '317', '华阴市', '3', '0');
INSERT INTO `sw_region` VALUES ('2656', '317', '华县', '3', '0');
INSERT INTO `sw_region` VALUES ('2657', '317', '潼关县', '3', '0');
INSERT INTO `sw_region` VALUES ('2658', '317', '大荔县', '3', '0');
INSERT INTO `sw_region` VALUES ('2659', '317', '合阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('2660', '317', '澄城县', '3', '0');
INSERT INTO `sw_region` VALUES ('2661', '317', '蒲城县', '3', '0');
INSERT INTO `sw_region` VALUES ('2662', '317', '白水县', '3', '0');
INSERT INTO `sw_region` VALUES ('2663', '317', '富平县', '3', '0');
INSERT INTO `sw_region` VALUES ('2664', '318', '秦都区', '3', '0');
INSERT INTO `sw_region` VALUES ('2665', '318', '渭城区', '3', '0');
INSERT INTO `sw_region` VALUES ('2666', '318', '杨陵区', '3', '0');
INSERT INTO `sw_region` VALUES ('2667', '318', '兴平市', '3', '0');
INSERT INTO `sw_region` VALUES ('2668', '318', '三原县', '3', '0');
INSERT INTO `sw_region` VALUES ('2669', '318', '泾阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('2670', '318', '乾县', '3', '0');
INSERT INTO `sw_region` VALUES ('2671', '318', '礼泉县', '3', '0');
INSERT INTO `sw_region` VALUES ('2672', '318', '永寿县', '3', '0');
INSERT INTO `sw_region` VALUES ('2673', '318', '彬县', '3', '0');
INSERT INTO `sw_region` VALUES ('2674', '318', '长武县', '3', '0');
INSERT INTO `sw_region` VALUES ('2675', '318', '旬邑县', '3', '0');
INSERT INTO `sw_region` VALUES ('2676', '318', '淳化县', '3', '0');
INSERT INTO `sw_region` VALUES ('2677', '318', '武功县', '3', '0');
INSERT INTO `sw_region` VALUES ('2678', '319', '吴起县', '3', '0');
INSERT INTO `sw_region` VALUES ('2679', '319', '宝塔区', '3', '0');
INSERT INTO `sw_region` VALUES ('2680', '319', '延长县', '3', '0');
INSERT INTO `sw_region` VALUES ('2681', '319', '延川县', '3', '0');
INSERT INTO `sw_region` VALUES ('2682', '319', '子长县', '3', '0');
INSERT INTO `sw_region` VALUES ('2683', '319', '安塞县', '3', '0');
INSERT INTO `sw_region` VALUES ('2684', '319', '志丹县', '3', '0');
INSERT INTO `sw_region` VALUES ('2685', '319', '甘泉县', '3', '0');
INSERT INTO `sw_region` VALUES ('2686', '319', '富县', '3', '0');
INSERT INTO `sw_region` VALUES ('2687', '319', '洛川县', '3', '0');
INSERT INTO `sw_region` VALUES ('2688', '319', '宜川县', '3', '0');
INSERT INTO `sw_region` VALUES ('2689', '319', '黄龙县', '3', '0');
INSERT INTO `sw_region` VALUES ('2690', '319', '黄陵县', '3', '0');
INSERT INTO `sw_region` VALUES ('2691', '320', '榆阳区', '3', '0');
INSERT INTO `sw_region` VALUES ('2692', '320', '神木县', '3', '0');
INSERT INTO `sw_region` VALUES ('2693', '320', '府谷县', '3', '0');
INSERT INTO `sw_region` VALUES ('2694', '320', '横山县', '3', '0');
INSERT INTO `sw_region` VALUES ('2695', '320', '靖边县', '3', '0');
INSERT INTO `sw_region` VALUES ('2696', '320', '定边县', '3', '0');
INSERT INTO `sw_region` VALUES ('2697', '320', '绥德县', '3', '0');
INSERT INTO `sw_region` VALUES ('2698', '320', '米脂县', '3', '0');
INSERT INTO `sw_region` VALUES ('2699', '320', '佳县', '3', '0');
INSERT INTO `sw_region` VALUES ('2700', '320', '吴堡县', '3', '0');
INSERT INTO `sw_region` VALUES ('2701', '320', '清涧县', '3', '0');
INSERT INTO `sw_region` VALUES ('2702', '320', '子洲县', '3', '0');
INSERT INTO `sw_region` VALUES ('2703', '321', '长宁区', '3', '0');
INSERT INTO `sw_region` VALUES ('2704', '321', '闸北区', '3', '0');
INSERT INTO `sw_region` VALUES ('2705', '321', '闵行区', '3', '0');
INSERT INTO `sw_region` VALUES ('2706', '321', '徐汇区', '3', '0');
INSERT INTO `sw_region` VALUES ('2707', '321', '浦东新区', '3', '0');
INSERT INTO `sw_region` VALUES ('2708', '321', '杨浦区', '3', '0');
INSERT INTO `sw_region` VALUES ('2709', '321', '普陀区', '3', '0');
INSERT INTO `sw_region` VALUES ('2710', '321', '静安区', '3', '0');
INSERT INTO `sw_region` VALUES ('2711', '321', '卢湾区', '3', '0');
INSERT INTO `sw_region` VALUES ('2712', '321', '虹口区', '3', '0');
INSERT INTO `sw_region` VALUES ('2713', '321', '黄浦区', '3', '0');
INSERT INTO `sw_region` VALUES ('2714', '321', '南汇区', '3', '0');
INSERT INTO `sw_region` VALUES ('2715', '321', '松江区', '3', '0');
INSERT INTO `sw_region` VALUES ('2716', '321', '嘉定区', '3', '0');
INSERT INTO `sw_region` VALUES ('2717', '321', '宝山区', '3', '0');
INSERT INTO `sw_region` VALUES ('2718', '321', '青浦区', '3', '0');
INSERT INTO `sw_region` VALUES ('2719', '321', '金山区', '3', '0');
INSERT INTO `sw_region` VALUES ('2720', '321', '奉贤区', '3', '0');
INSERT INTO `sw_region` VALUES ('2721', '321', '崇明县', '3', '0');
INSERT INTO `sw_region` VALUES ('2722', '322', '青羊区', '3', '0');
INSERT INTO `sw_region` VALUES ('2723', '322', '锦江区', '3', '0');
INSERT INTO `sw_region` VALUES ('2724', '322', '金牛区', '3', '0');
INSERT INTO `sw_region` VALUES ('2725', '322', '武侯区', '3', '0');
INSERT INTO `sw_region` VALUES ('2726', '322', '成华区', '3', '0');
INSERT INTO `sw_region` VALUES ('2727', '322', '龙泉驿区', '3', '0');
INSERT INTO `sw_region` VALUES ('2728', '322', '青白江区', '3', '0');
INSERT INTO `sw_region` VALUES ('2729', '322', '新都区', '3', '0');
INSERT INTO `sw_region` VALUES ('2730', '322', '温江区', '3', '0');
INSERT INTO `sw_region` VALUES ('2731', '322', '高新区', '3', '0');
INSERT INTO `sw_region` VALUES ('2732', '322', '高新西区', '3', '0');
INSERT INTO `sw_region` VALUES ('2733', '322', '都江堰市', '3', '0');
INSERT INTO `sw_region` VALUES ('2734', '322', '彭州市', '3', '0');
INSERT INTO `sw_region` VALUES ('2735', '322', '邛崃市', '3', '0');
INSERT INTO `sw_region` VALUES ('2736', '322', '崇州市', '3', '0');
INSERT INTO `sw_region` VALUES ('2737', '322', '金堂县', '3', '0');
INSERT INTO `sw_region` VALUES ('2738', '322', '双流县', '3', '0');
INSERT INTO `sw_region` VALUES ('2739', '322', '郫县', '3', '0');
INSERT INTO `sw_region` VALUES ('2740', '322', '大邑县', '3', '0');
INSERT INTO `sw_region` VALUES ('2741', '322', '蒲江县', '3', '0');
INSERT INTO `sw_region` VALUES ('2742', '322', '新津县', '3', '0');
INSERT INTO `sw_region` VALUES ('2743', '322', '都江堰市', '3', '0');
INSERT INTO `sw_region` VALUES ('2744', '322', '彭州市', '3', '0');
INSERT INTO `sw_region` VALUES ('2745', '322', '邛崃市', '3', '0');
INSERT INTO `sw_region` VALUES ('2746', '322', '崇州市', '3', '0');
INSERT INTO `sw_region` VALUES ('2747', '322', '金堂县', '3', '0');
INSERT INTO `sw_region` VALUES ('2748', '322', '双流县', '3', '0');
INSERT INTO `sw_region` VALUES ('2749', '322', '郫县', '3', '0');
INSERT INTO `sw_region` VALUES ('2750', '322', '大邑县', '3', '0');
INSERT INTO `sw_region` VALUES ('2751', '322', '蒲江县', '3', '0');
INSERT INTO `sw_region` VALUES ('2752', '322', '新津县', '3', '0');
INSERT INTO `sw_region` VALUES ('2753', '323', '涪城区', '3', '0');
INSERT INTO `sw_region` VALUES ('2754', '323', '游仙区', '3', '0');
INSERT INTO `sw_region` VALUES ('2755', '323', '江油市', '3', '0');
INSERT INTO `sw_region` VALUES ('2756', '323', '盐亭县', '3', '0');
INSERT INTO `sw_region` VALUES ('2757', '323', '三台县', '3', '0');
INSERT INTO `sw_region` VALUES ('2758', '323', '平武县', '3', '0');
INSERT INTO `sw_region` VALUES ('2759', '323', '安县', '3', '0');
INSERT INTO `sw_region` VALUES ('2760', '323', '梓潼县', '3', '0');
INSERT INTO `sw_region` VALUES ('2761', '323', '北川县', '3', '0');
INSERT INTO `sw_region` VALUES ('2762', '324', '马尔康县', '3', '0');
INSERT INTO `sw_region` VALUES ('2763', '324', '汶川县', '3', '0');
INSERT INTO `sw_region` VALUES ('2764', '324', '理县', '3', '0');
INSERT INTO `sw_region` VALUES ('2765', '324', '茂县', '3', '0');
INSERT INTO `sw_region` VALUES ('2766', '324', '松潘县', '3', '0');
INSERT INTO `sw_region` VALUES ('2767', '324', '九寨沟县', '3', '0');
INSERT INTO `sw_region` VALUES ('2768', '324', '金川县', '3', '0');
INSERT INTO `sw_region` VALUES ('2769', '324', '小金县', '3', '0');
INSERT INTO `sw_region` VALUES ('2770', '324', '黑水县', '3', '0');
INSERT INTO `sw_region` VALUES ('2771', '324', '壤塘县', '3', '0');
INSERT INTO `sw_region` VALUES ('2772', '324', '阿坝县', '3', '0');
INSERT INTO `sw_region` VALUES ('2773', '324', '若尔盖县', '3', '0');
INSERT INTO `sw_region` VALUES ('2774', '324', '红原县', '3', '0');
INSERT INTO `sw_region` VALUES ('2775', '325', '巴州区', '3', '0');
INSERT INTO `sw_region` VALUES ('2776', '325', '通江县', '3', '0');
INSERT INTO `sw_region` VALUES ('2777', '325', '南江县', '3', '0');
INSERT INTO `sw_region` VALUES ('2778', '325', '平昌县', '3', '0');
INSERT INTO `sw_region` VALUES ('2779', '326', '通川区', '3', '0');
INSERT INTO `sw_region` VALUES ('2780', '326', '万源市', '3', '0');
INSERT INTO `sw_region` VALUES ('2781', '326', '达县', '3', '0');
INSERT INTO `sw_region` VALUES ('2782', '326', '宣汉县', '3', '0');
INSERT INTO `sw_region` VALUES ('2783', '326', '开江县', '3', '0');
INSERT INTO `sw_region` VALUES ('2784', '326', '大竹县', '3', '0');
INSERT INTO `sw_region` VALUES ('2785', '326', '渠县', '3', '0');
INSERT INTO `sw_region` VALUES ('2786', '327', '旌阳区', '3', '0');
INSERT INTO `sw_region` VALUES ('2787', '327', '广汉市', '3', '0');
INSERT INTO `sw_region` VALUES ('2788', '327', '什邡市', '3', '0');
INSERT INTO `sw_region` VALUES ('2789', '327', '绵竹市', '3', '0');
INSERT INTO `sw_region` VALUES ('2790', '327', '罗江县', '3', '0');
INSERT INTO `sw_region` VALUES ('2791', '327', '中江县', '3', '0');
INSERT INTO `sw_region` VALUES ('2792', '328', '康定县', '3', '0');
INSERT INTO `sw_region` VALUES ('2793', '328', '丹巴县', '3', '0');
INSERT INTO `sw_region` VALUES ('2794', '328', '泸定县', '3', '0');
INSERT INTO `sw_region` VALUES ('2795', '328', '炉霍县', '3', '0');
INSERT INTO `sw_region` VALUES ('2796', '328', '九龙县', '3', '0');
INSERT INTO `sw_region` VALUES ('2797', '328', '甘孜县', '3', '0');
INSERT INTO `sw_region` VALUES ('2798', '328', '雅江县', '3', '0');
INSERT INTO `sw_region` VALUES ('2799', '328', '新龙县', '3', '0');
INSERT INTO `sw_region` VALUES ('2800', '328', '道孚县', '3', '0');
INSERT INTO `sw_region` VALUES ('2801', '328', '白玉县', '3', '0');
INSERT INTO `sw_region` VALUES ('2802', '328', '理塘县', '3', '0');
INSERT INTO `sw_region` VALUES ('2803', '328', '德格县', '3', '0');
INSERT INTO `sw_region` VALUES ('2804', '328', '乡城县', '3', '0');
INSERT INTO `sw_region` VALUES ('2805', '328', '石渠县', '3', '0');
INSERT INTO `sw_region` VALUES ('2806', '328', '稻城县', '3', '0');
INSERT INTO `sw_region` VALUES ('2807', '328', '色达县', '3', '0');
INSERT INTO `sw_region` VALUES ('2808', '328', '巴塘县', '3', '0');
INSERT INTO `sw_region` VALUES ('2809', '328', '得荣县', '3', '0');
INSERT INTO `sw_region` VALUES ('2810', '329', '广安区', '3', '0');
INSERT INTO `sw_region` VALUES ('2811', '329', '华蓥市', '3', '0');
INSERT INTO `sw_region` VALUES ('2812', '329', '岳池县', '3', '0');
INSERT INTO `sw_region` VALUES ('2813', '329', '武胜县', '3', '0');
INSERT INTO `sw_region` VALUES ('2814', '329', '邻水县', '3', '0');
INSERT INTO `sw_region` VALUES ('2815', '330', '利州区', '3', '0');
INSERT INTO `sw_region` VALUES ('2816', '330', '元坝区', '3', '0');
INSERT INTO `sw_region` VALUES ('2817', '330', '朝天区', '3', '0');
INSERT INTO `sw_region` VALUES ('2818', '330', '旺苍县', '3', '0');
INSERT INTO `sw_region` VALUES ('2819', '330', '青川县', '3', '0');
INSERT INTO `sw_region` VALUES ('2820', '330', '剑阁县', '3', '0');
INSERT INTO `sw_region` VALUES ('2821', '330', '苍溪县', '3', '0');
INSERT INTO `sw_region` VALUES ('2822', '331', '峨眉山市', '3', '0');
INSERT INTO `sw_region` VALUES ('2823', '331', '乐山市', '3', '0');
INSERT INTO `sw_region` VALUES ('2824', '331', '犍为县', '3', '0');
INSERT INTO `sw_region` VALUES ('2825', '331', '井研县', '3', '0');
INSERT INTO `sw_region` VALUES ('2826', '331', '夹江县', '3', '0');
INSERT INTO `sw_region` VALUES ('2827', '331', '沐川县', '3', '0');
INSERT INTO `sw_region` VALUES ('2828', '331', '峨边', '3', '0');
INSERT INTO `sw_region` VALUES ('2829', '331', '马边', '3', '0');
INSERT INTO `sw_region` VALUES ('2830', '332', '西昌市', '3', '0');
INSERT INTO `sw_region` VALUES ('2831', '332', '盐源县', '3', '0');
INSERT INTO `sw_region` VALUES ('2832', '332', '德昌县', '3', '0');
INSERT INTO `sw_region` VALUES ('2833', '332', '会理县', '3', '0');
INSERT INTO `sw_region` VALUES ('2834', '332', '会东县', '3', '0');
INSERT INTO `sw_region` VALUES ('2835', '332', '宁南县', '3', '0');
INSERT INTO `sw_region` VALUES ('2836', '332', '普格县', '3', '0');
INSERT INTO `sw_region` VALUES ('2837', '332', '布拖县', '3', '0');
INSERT INTO `sw_region` VALUES ('2838', '332', '金阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('2839', '332', '昭觉县', '3', '0');
INSERT INTO `sw_region` VALUES ('2840', '332', '喜德县', '3', '0');
INSERT INTO `sw_region` VALUES ('2841', '332', '冕宁县', '3', '0');
INSERT INTO `sw_region` VALUES ('2842', '332', '越西县', '3', '0');
INSERT INTO `sw_region` VALUES ('2843', '332', '甘洛县', '3', '0');
INSERT INTO `sw_region` VALUES ('2844', '332', '美姑县', '3', '0');
INSERT INTO `sw_region` VALUES ('2845', '332', '雷波县', '3', '0');
INSERT INTO `sw_region` VALUES ('2846', '332', '木里', '3', '0');
INSERT INTO `sw_region` VALUES ('2847', '333', '东坡区', '3', '0');
INSERT INTO `sw_region` VALUES ('2848', '333', '仁寿县', '3', '0');
INSERT INTO `sw_region` VALUES ('2849', '333', '彭山县', '3', '0');
INSERT INTO `sw_region` VALUES ('2850', '333', '洪雅县', '3', '0');
INSERT INTO `sw_region` VALUES ('2851', '333', '丹棱县', '3', '0');
INSERT INTO `sw_region` VALUES ('2852', '333', '青神县', '3', '0');
INSERT INTO `sw_region` VALUES ('2853', '334', '阆中市', '3', '0');
INSERT INTO `sw_region` VALUES ('2854', '334', '南部县', '3', '0');
INSERT INTO `sw_region` VALUES ('2855', '334', '营山县', '3', '0');
INSERT INTO `sw_region` VALUES ('2856', '334', '蓬安县', '3', '0');
INSERT INTO `sw_region` VALUES ('2857', '334', '仪陇县', '3', '0');
INSERT INTO `sw_region` VALUES ('2858', '334', '顺庆区', '3', '0');
INSERT INTO `sw_region` VALUES ('2859', '334', '高坪区', '3', '0');
INSERT INTO `sw_region` VALUES ('2860', '334', '嘉陵区', '3', '0');
INSERT INTO `sw_region` VALUES ('2861', '334', '西充县', '3', '0');
INSERT INTO `sw_region` VALUES ('2862', '335', '市中区', '3', '0');
INSERT INTO `sw_region` VALUES ('2863', '335', '东兴区', '3', '0');
INSERT INTO `sw_region` VALUES ('2864', '335', '威远县', '3', '0');
INSERT INTO `sw_region` VALUES ('2865', '335', '资中县', '3', '0');
INSERT INTO `sw_region` VALUES ('2866', '335', '隆昌县', '3', '0');
INSERT INTO `sw_region` VALUES ('2867', '336', '东  区', '3', '0');
INSERT INTO `sw_region` VALUES ('2868', '336', '西  区', '3', '0');
INSERT INTO `sw_region` VALUES ('2869', '336', '仁和区', '3', '0');
INSERT INTO `sw_region` VALUES ('2870', '336', '米易县', '3', '0');
INSERT INTO `sw_region` VALUES ('2871', '336', '盐边县', '3', '0');
INSERT INTO `sw_region` VALUES ('2872', '337', '船山区', '3', '0');
INSERT INTO `sw_region` VALUES ('2873', '337', '安居区', '3', '0');
INSERT INTO `sw_region` VALUES ('2874', '337', '蓬溪县', '3', '0');
INSERT INTO `sw_region` VALUES ('2875', '337', '射洪县', '3', '0');
INSERT INTO `sw_region` VALUES ('2876', '337', '大英县', '3', '0');
INSERT INTO `sw_region` VALUES ('2877', '338', '雨城区', '3', '0');
INSERT INTO `sw_region` VALUES ('2878', '338', '名山县', '3', '0');
INSERT INTO `sw_region` VALUES ('2879', '338', '荥经县', '3', '0');
INSERT INTO `sw_region` VALUES ('2880', '338', '汉源县', '3', '0');
INSERT INTO `sw_region` VALUES ('2881', '338', '石棉县', '3', '0');
INSERT INTO `sw_region` VALUES ('2882', '338', '天全县', '3', '0');
INSERT INTO `sw_region` VALUES ('2883', '338', '芦山县', '3', '0');
INSERT INTO `sw_region` VALUES ('2884', '338', '宝兴县', '3', '0');
INSERT INTO `sw_region` VALUES ('2885', '339', '翠屏区', '3', '0');
INSERT INTO `sw_region` VALUES ('2886', '339', '宜宾县', '3', '0');
INSERT INTO `sw_region` VALUES ('2887', '339', '南溪县', '3', '0');
INSERT INTO `sw_region` VALUES ('2888', '339', '江安县', '3', '0');
INSERT INTO `sw_region` VALUES ('2889', '339', '长宁县', '3', '0');
INSERT INTO `sw_region` VALUES ('2890', '339', '高县', '3', '0');
INSERT INTO `sw_region` VALUES ('2891', '339', '珙县', '3', '0');
INSERT INTO `sw_region` VALUES ('2892', '339', '筠连县', '3', '0');
INSERT INTO `sw_region` VALUES ('2893', '339', '兴文县', '3', '0');
INSERT INTO `sw_region` VALUES ('2894', '339', '屏山县', '3', '0');
INSERT INTO `sw_region` VALUES ('2895', '340', '雁江区', '3', '0');
INSERT INTO `sw_region` VALUES ('2896', '340', '简阳市', '3', '0');
INSERT INTO `sw_region` VALUES ('2897', '340', '安岳县', '3', '0');
INSERT INTO `sw_region` VALUES ('2898', '340', '乐至县', '3', '0');
INSERT INTO `sw_region` VALUES ('2899', '341', '大安区', '3', '0');
INSERT INTO `sw_region` VALUES ('2900', '341', '自流井区', '3', '0');
INSERT INTO `sw_region` VALUES ('2901', '341', '贡井区', '3', '0');
INSERT INTO `sw_region` VALUES ('2902', '341', '沿滩区', '3', '0');
INSERT INTO `sw_region` VALUES ('2903', '341', '荣县', '3', '0');
INSERT INTO `sw_region` VALUES ('2904', '341', '富顺县', '3', '0');
INSERT INTO `sw_region` VALUES ('2905', '342', '江阳区', '3', '0');
INSERT INTO `sw_region` VALUES ('2906', '342', '纳溪区', '3', '0');
INSERT INTO `sw_region` VALUES ('2907', '342', '龙马潭区', '3', '0');
INSERT INTO `sw_region` VALUES ('2908', '342', '泸县', '3', '0');
INSERT INTO `sw_region` VALUES ('2909', '342', '合江县', '3', '0');
INSERT INTO `sw_region` VALUES ('2910', '342', '叙永县', '3', '0');
INSERT INTO `sw_region` VALUES ('2911', '342', '古蔺县', '3', '0');
INSERT INTO `sw_region` VALUES ('2912', '343', '和平区', '3', '0');
INSERT INTO `sw_region` VALUES ('2913', '343', '河西区', '3', '0');
INSERT INTO `sw_region` VALUES ('2914', '343', '南开区', '3', '0');
INSERT INTO `sw_region` VALUES ('2915', '343', '河北区', '3', '0');
INSERT INTO `sw_region` VALUES ('2916', '343', '河东区', '3', '0');
INSERT INTO `sw_region` VALUES ('2917', '343', '红桥区', '3', '0');
INSERT INTO `sw_region` VALUES ('2918', '343', '东丽区', '3', '0');
INSERT INTO `sw_region` VALUES ('2919', '343', '津南区', '3', '0');
INSERT INTO `sw_region` VALUES ('2920', '343', '西青区', '3', '0');
INSERT INTO `sw_region` VALUES ('2921', '343', '北辰区', '3', '0');
INSERT INTO `sw_region` VALUES ('2922', '343', '塘沽区', '3', '0');
INSERT INTO `sw_region` VALUES ('2923', '343', '汉沽区', '3', '0');
INSERT INTO `sw_region` VALUES ('2924', '343', '大港区', '3', '0');
INSERT INTO `sw_region` VALUES ('2925', '343', '武清区', '3', '0');
INSERT INTO `sw_region` VALUES ('2926', '343', '宝坻区', '3', '0');
INSERT INTO `sw_region` VALUES ('2927', '343', '经济开发区', '3', '0');
INSERT INTO `sw_region` VALUES ('2928', '343', '宁河县', '3', '0');
INSERT INTO `sw_region` VALUES ('2929', '343', '静海县', '3', '0');
INSERT INTO `sw_region` VALUES ('2930', '343', '蓟县', '3', '0');
INSERT INTO `sw_region` VALUES ('2931', '344', '城关区', '3', '0');
INSERT INTO `sw_region` VALUES ('2932', '344', '林周县', '3', '0');
INSERT INTO `sw_region` VALUES ('2933', '344', '当雄县', '3', '0');
INSERT INTO `sw_region` VALUES ('2934', '344', '尼木县', '3', '0');
INSERT INTO `sw_region` VALUES ('2935', '344', '曲水县', '3', '0');
INSERT INTO `sw_region` VALUES ('2936', '344', '堆龙德庆县', '3', '0');
INSERT INTO `sw_region` VALUES ('2937', '344', '达孜县', '3', '0');
INSERT INTO `sw_region` VALUES ('2938', '344', '墨竹工卡县', '3', '0');
INSERT INTO `sw_region` VALUES ('2939', '345', '噶尔县', '3', '0');
INSERT INTO `sw_region` VALUES ('2940', '345', '普兰县', '3', '0');
INSERT INTO `sw_region` VALUES ('2941', '345', '札达县', '3', '0');
INSERT INTO `sw_region` VALUES ('2942', '345', '日土县', '3', '0');
INSERT INTO `sw_region` VALUES ('2943', '345', '革吉县', '3', '0');
INSERT INTO `sw_region` VALUES ('2944', '345', '改则县', '3', '0');
INSERT INTO `sw_region` VALUES ('2945', '345', '措勤县', '3', '0');
INSERT INTO `sw_region` VALUES ('2946', '346', '昌都县', '3', '0');
INSERT INTO `sw_region` VALUES ('2947', '346', '江达县', '3', '0');
INSERT INTO `sw_region` VALUES ('2948', '346', '贡觉县', '3', '0');
INSERT INTO `sw_region` VALUES ('2949', '346', '类乌齐县', '3', '0');
INSERT INTO `sw_region` VALUES ('2950', '346', '丁青县', '3', '0');
INSERT INTO `sw_region` VALUES ('2951', '346', '察雅县', '3', '0');
INSERT INTO `sw_region` VALUES ('2952', '346', '八宿县', '3', '0');
INSERT INTO `sw_region` VALUES ('2953', '346', '左贡县', '3', '0');
INSERT INTO `sw_region` VALUES ('2954', '346', '芒康县', '3', '0');
INSERT INTO `sw_region` VALUES ('2955', '346', '洛隆县', '3', '0');
INSERT INTO `sw_region` VALUES ('2956', '346', '边坝县', '3', '0');
INSERT INTO `sw_region` VALUES ('2957', '347', '林芝县', '3', '0');
INSERT INTO `sw_region` VALUES ('2958', '347', '工布江达县', '3', '0');
INSERT INTO `sw_region` VALUES ('2959', '347', '米林县', '3', '0');
INSERT INTO `sw_region` VALUES ('2960', '347', '墨脱县', '3', '0');
INSERT INTO `sw_region` VALUES ('2961', '347', '波密县', '3', '0');
INSERT INTO `sw_region` VALUES ('2962', '347', '察隅县', '3', '0');
INSERT INTO `sw_region` VALUES ('2963', '347', '朗县', '3', '0');
INSERT INTO `sw_region` VALUES ('2964', '348', '那曲县', '3', '0');
INSERT INTO `sw_region` VALUES ('2965', '348', '嘉黎县', '3', '0');
INSERT INTO `sw_region` VALUES ('2966', '348', '比如县', '3', '0');
INSERT INTO `sw_region` VALUES ('2967', '348', '聂荣县', '3', '0');
INSERT INTO `sw_region` VALUES ('2968', '348', '安多县', '3', '0');
INSERT INTO `sw_region` VALUES ('2969', '348', '申扎县', '3', '0');
INSERT INTO `sw_region` VALUES ('2970', '348', '索县', '3', '0');
INSERT INTO `sw_region` VALUES ('2971', '348', '班戈县', '3', '0');
INSERT INTO `sw_region` VALUES ('2972', '348', '巴青县', '3', '0');
INSERT INTO `sw_region` VALUES ('2973', '348', '尼玛县', '3', '0');
INSERT INTO `sw_region` VALUES ('2974', '349', '日喀则市', '3', '0');
INSERT INTO `sw_region` VALUES ('2975', '349', '南木林县', '3', '0');
INSERT INTO `sw_region` VALUES ('2976', '349', '江孜县', '3', '0');
INSERT INTO `sw_region` VALUES ('2977', '349', '定日县', '3', '0');
INSERT INTO `sw_region` VALUES ('2978', '349', '萨迦县', '3', '0');
INSERT INTO `sw_region` VALUES ('2979', '349', '拉孜县', '3', '0');
INSERT INTO `sw_region` VALUES ('2980', '349', '昂仁县', '3', '0');
INSERT INTO `sw_region` VALUES ('2981', '349', '谢通门县', '3', '0');
INSERT INTO `sw_region` VALUES ('2982', '349', '白朗县', '3', '0');
INSERT INTO `sw_region` VALUES ('2983', '349', '仁布县', '3', '0');
INSERT INTO `sw_region` VALUES ('2984', '349', '康马县', '3', '0');
INSERT INTO `sw_region` VALUES ('2985', '349', '定结县', '3', '0');
INSERT INTO `sw_region` VALUES ('2986', '349', '仲巴县', '3', '0');
INSERT INTO `sw_region` VALUES ('2987', '349', '亚东县', '3', '0');
INSERT INTO `sw_region` VALUES ('2988', '349', '吉隆县', '3', '0');
INSERT INTO `sw_region` VALUES ('2989', '349', '聂拉木县', '3', '0');
INSERT INTO `sw_region` VALUES ('2990', '349', '萨嘎县', '3', '0');
INSERT INTO `sw_region` VALUES ('2991', '349', '岗巴县', '3', '0');
INSERT INTO `sw_region` VALUES ('2992', '350', '乃东县', '3', '0');
INSERT INTO `sw_region` VALUES ('2993', '350', '扎囊县', '3', '0');
INSERT INTO `sw_region` VALUES ('2994', '350', '贡嘎县', '3', '0');
INSERT INTO `sw_region` VALUES ('2995', '350', '桑日县', '3', '0');
INSERT INTO `sw_region` VALUES ('2996', '350', '琼结县', '3', '0');
INSERT INTO `sw_region` VALUES ('2997', '350', '曲松县', '3', '0');
INSERT INTO `sw_region` VALUES ('2998', '350', '措美县', '3', '0');
INSERT INTO `sw_region` VALUES ('2999', '350', '洛扎县', '3', '0');
INSERT INTO `sw_region` VALUES ('3000', '350', '加查县', '3', '0');
INSERT INTO `sw_region` VALUES ('3001', '350', '隆子县', '3', '0');
INSERT INTO `sw_region` VALUES ('3002', '350', '错那县', '3', '0');
INSERT INTO `sw_region` VALUES ('3003', '350', '浪卡子县', '3', '0');
INSERT INTO `sw_region` VALUES ('3004', '351', '天山区', '3', '0');
INSERT INTO `sw_region` VALUES ('3005', '351', '沙依巴克区', '3', '0');
INSERT INTO `sw_region` VALUES ('3006', '351', '新市区', '3', '0');
INSERT INTO `sw_region` VALUES ('3007', '351', '水磨沟区', '3', '0');
INSERT INTO `sw_region` VALUES ('3008', '351', '头屯河区', '3', '0');
INSERT INTO `sw_region` VALUES ('3009', '351', '达坂城区', '3', '0');
INSERT INTO `sw_region` VALUES ('3010', '351', '米东区', '3', '0');
INSERT INTO `sw_region` VALUES ('3011', '351', '乌鲁木齐县', '3', '0');
INSERT INTO `sw_region` VALUES ('3012', '352', '阿克苏市', '3', '0');
INSERT INTO `sw_region` VALUES ('3013', '352', '温宿县', '3', '0');
INSERT INTO `sw_region` VALUES ('3014', '352', '库车县', '3', '0');
INSERT INTO `sw_region` VALUES ('3015', '352', '沙雅县', '3', '0');
INSERT INTO `sw_region` VALUES ('3016', '352', '新和县', '3', '0');
INSERT INTO `sw_region` VALUES ('3017', '352', '拜城县', '3', '0');
INSERT INTO `sw_region` VALUES ('3018', '352', '乌什县', '3', '0');
INSERT INTO `sw_region` VALUES ('3019', '352', '阿瓦提县', '3', '0');
INSERT INTO `sw_region` VALUES ('3020', '352', '柯坪县', '3', '0');
INSERT INTO `sw_region` VALUES ('3021', '353', '阿拉尔市', '3', '0');
INSERT INTO `sw_region` VALUES ('3022', '354', '库尔勒市', '3', '0');
INSERT INTO `sw_region` VALUES ('3023', '354', '轮台县', '3', '0');
INSERT INTO `sw_region` VALUES ('3024', '354', '尉犁县', '3', '0');
INSERT INTO `sw_region` VALUES ('3025', '354', '若羌县', '3', '0');
INSERT INTO `sw_region` VALUES ('3026', '354', '且末县', '3', '0');
INSERT INTO `sw_region` VALUES ('3027', '354', '焉耆', '3', '0');
INSERT INTO `sw_region` VALUES ('3028', '354', '和静县', '3', '0');
INSERT INTO `sw_region` VALUES ('3029', '354', '和硕县', '3', '0');
INSERT INTO `sw_region` VALUES ('3030', '354', '博湖县', '3', '0');
INSERT INTO `sw_region` VALUES ('3031', '355', '博乐市', '3', '0');
INSERT INTO `sw_region` VALUES ('3032', '355', '精河县', '3', '0');
INSERT INTO `sw_region` VALUES ('3033', '355', '温泉县', '3', '0');
INSERT INTO `sw_region` VALUES ('3034', '356', '呼图壁县', '3', '0');
INSERT INTO `sw_region` VALUES ('3035', '356', '米泉市', '3', '0');
INSERT INTO `sw_region` VALUES ('3036', '356', '昌吉市', '3', '0');
INSERT INTO `sw_region` VALUES ('3037', '356', '阜康市', '3', '0');
INSERT INTO `sw_region` VALUES ('3038', '356', '玛纳斯县', '3', '0');
INSERT INTO `sw_region` VALUES ('3039', '356', '奇台县', '3', '0');
INSERT INTO `sw_region` VALUES ('3040', '356', '吉木萨尔县', '3', '0');
INSERT INTO `sw_region` VALUES ('3041', '356', '木垒', '3', '0');
INSERT INTO `sw_region` VALUES ('3042', '357', '哈密市', '3', '0');
INSERT INTO `sw_region` VALUES ('3043', '357', '伊吾县', '3', '0');
INSERT INTO `sw_region` VALUES ('3044', '357', '巴里坤', '3', '0');
INSERT INTO `sw_region` VALUES ('3045', '358', '和田市', '3', '0');
INSERT INTO `sw_region` VALUES ('3046', '358', '和田县', '3', '0');
INSERT INTO `sw_region` VALUES ('3047', '358', '墨玉县', '3', '0');
INSERT INTO `sw_region` VALUES ('3048', '358', '皮山县', '3', '0');
INSERT INTO `sw_region` VALUES ('3049', '358', '洛浦县', '3', '0');
INSERT INTO `sw_region` VALUES ('3050', '358', '策勒县', '3', '0');
INSERT INTO `sw_region` VALUES ('3051', '358', '于田县', '3', '0');
INSERT INTO `sw_region` VALUES ('3052', '358', '民丰县', '3', '0');
INSERT INTO `sw_region` VALUES ('3053', '359', '喀什市', '3', '0');
INSERT INTO `sw_region` VALUES ('3054', '359', '疏附县', '3', '0');
INSERT INTO `sw_region` VALUES ('3055', '359', '疏勒县', '3', '0');
INSERT INTO `sw_region` VALUES ('3056', '359', '英吉沙县', '3', '0');
INSERT INTO `sw_region` VALUES ('3057', '359', '泽普县', '3', '0');
INSERT INTO `sw_region` VALUES ('3058', '359', '莎车县', '3', '0');
INSERT INTO `sw_region` VALUES ('3059', '359', '叶城县', '3', '0');
INSERT INTO `sw_region` VALUES ('3060', '359', '麦盖提县', '3', '0');
INSERT INTO `sw_region` VALUES ('3061', '359', '岳普湖县', '3', '0');
INSERT INTO `sw_region` VALUES ('3062', '359', '伽师县', '3', '0');
INSERT INTO `sw_region` VALUES ('3063', '359', '巴楚县', '3', '0');
INSERT INTO `sw_region` VALUES ('3064', '359', '塔什库尔干', '3', '0');
INSERT INTO `sw_region` VALUES ('3065', '360', '克拉玛依市', '3', '0');
INSERT INTO `sw_region` VALUES ('3066', '361', '阿图什市', '3', '0');
INSERT INTO `sw_region` VALUES ('3067', '361', '阿克陶县', '3', '0');
INSERT INTO `sw_region` VALUES ('3068', '361', '阿合奇县', '3', '0');
INSERT INTO `sw_region` VALUES ('3069', '361', '乌恰县', '3', '0');
INSERT INTO `sw_region` VALUES ('3070', '362', '石河子市', '3', '0');
INSERT INTO `sw_region` VALUES ('3071', '363', '图木舒克市', '3', '0');
INSERT INTO `sw_region` VALUES ('3072', '364', '吐鲁番市', '3', '0');
INSERT INTO `sw_region` VALUES ('3073', '364', '鄯善县', '3', '0');
INSERT INTO `sw_region` VALUES ('3074', '364', '托克逊县', '3', '0');
INSERT INTO `sw_region` VALUES ('3075', '365', '五家渠市', '3', '0');
INSERT INTO `sw_region` VALUES ('3076', '366', '阿勒泰市', '3', '0');
INSERT INTO `sw_region` VALUES ('3077', '366', '布克赛尔', '3', '0');
INSERT INTO `sw_region` VALUES ('3078', '366', '伊宁市', '3', '0');
INSERT INTO `sw_region` VALUES ('3079', '366', '布尔津县', '3', '0');
INSERT INTO `sw_region` VALUES ('3080', '366', '奎屯市', '3', '0');
INSERT INTO `sw_region` VALUES ('3081', '366', '乌苏市', '3', '0');
INSERT INTO `sw_region` VALUES ('3082', '366', '额敏县', '3', '0');
INSERT INTO `sw_region` VALUES ('3083', '366', '富蕴县', '3', '0');
INSERT INTO `sw_region` VALUES ('3084', '366', '伊宁县', '3', '0');
INSERT INTO `sw_region` VALUES ('3085', '366', '福海县', '3', '0');
INSERT INTO `sw_region` VALUES ('3086', '366', '霍城县', '3', '0');
INSERT INTO `sw_region` VALUES ('3087', '366', '沙湾县', '3', '0');
INSERT INTO `sw_region` VALUES ('3088', '366', '巩留县', '3', '0');
INSERT INTO `sw_region` VALUES ('3089', '366', '哈巴河县', '3', '0');
INSERT INTO `sw_region` VALUES ('3090', '366', '托里县', '3', '0');
INSERT INTO `sw_region` VALUES ('3091', '366', '青河县', '3', '0');
INSERT INTO `sw_region` VALUES ('3092', '366', '新源县', '3', '0');
INSERT INTO `sw_region` VALUES ('3093', '366', '裕民县', '3', '0');
INSERT INTO `sw_region` VALUES ('3094', '366', '和布克赛尔', '3', '0');
INSERT INTO `sw_region` VALUES ('3095', '366', '吉木乃县', '3', '0');
INSERT INTO `sw_region` VALUES ('3096', '366', '昭苏县', '3', '0');
INSERT INTO `sw_region` VALUES ('3097', '366', '特克斯县', '3', '0');
INSERT INTO `sw_region` VALUES ('3098', '366', '尼勒克县', '3', '0');
INSERT INTO `sw_region` VALUES ('3099', '366', '察布查尔', '3', '0');
INSERT INTO `sw_region` VALUES ('3100', '367', '盘龙区', '3', '0');
INSERT INTO `sw_region` VALUES ('3101', '367', '五华区', '3', '0');
INSERT INTO `sw_region` VALUES ('3102', '367', '官渡区', '3', '0');
INSERT INTO `sw_region` VALUES ('3103', '367', '西山区', '3', '0');
INSERT INTO `sw_region` VALUES ('3104', '367', '东川区', '3', '0');
INSERT INTO `sw_region` VALUES ('3105', '367', '安宁市', '3', '0');
INSERT INTO `sw_region` VALUES ('3106', '367', '呈贡县', '3', '0');
INSERT INTO `sw_region` VALUES ('3107', '367', '晋宁县', '3', '0');
INSERT INTO `sw_region` VALUES ('3108', '367', '富民县', '3', '0');
INSERT INTO `sw_region` VALUES ('3109', '367', '宜良县', '3', '0');
INSERT INTO `sw_region` VALUES ('3110', '367', '嵩明县', '3', '0');
INSERT INTO `sw_region` VALUES ('3111', '367', '石林县', '3', '0');
INSERT INTO `sw_region` VALUES ('3112', '367', '禄劝', '3', '0');
INSERT INTO `sw_region` VALUES ('3113', '367', '寻甸', '3', '0');
INSERT INTO `sw_region` VALUES ('3114', '368', '兰坪', '3', '0');
INSERT INTO `sw_region` VALUES ('3115', '368', '泸水县', '3', '0');
INSERT INTO `sw_region` VALUES ('3116', '368', '福贡县', '3', '0');
INSERT INTO `sw_region` VALUES ('3117', '368', '贡山', '3', '0');
INSERT INTO `sw_region` VALUES ('3118', '369', '宁洱', '3', '0');
INSERT INTO `sw_region` VALUES ('3119', '369', '思茅区', '3', '0');
INSERT INTO `sw_region` VALUES ('3120', '369', '墨江', '3', '0');
INSERT INTO `sw_region` VALUES ('3121', '369', '景东', '3', '0');
INSERT INTO `sw_region` VALUES ('3122', '369', '景谷', '3', '0');
INSERT INTO `sw_region` VALUES ('3123', '369', '镇沅', '3', '0');
INSERT INTO `sw_region` VALUES ('3124', '369', '江城', '3', '0');
INSERT INTO `sw_region` VALUES ('3125', '369', '孟连', '3', '0');
INSERT INTO `sw_region` VALUES ('3126', '369', '澜沧', '3', '0');
INSERT INTO `sw_region` VALUES ('3127', '369', '西盟', '3', '0');
INSERT INTO `sw_region` VALUES ('3128', '370', '古城区', '3', '0');
INSERT INTO `sw_region` VALUES ('3129', '370', '宁蒗', '3', '0');
INSERT INTO `sw_region` VALUES ('3130', '370', '玉龙', '3', '0');
INSERT INTO `sw_region` VALUES ('3131', '370', '永胜县', '3', '0');
INSERT INTO `sw_region` VALUES ('3132', '370', '华坪县', '3', '0');
INSERT INTO `sw_region` VALUES ('3133', '371', '隆阳区', '3', '0');
INSERT INTO `sw_region` VALUES ('3134', '371', '施甸县', '3', '0');
INSERT INTO `sw_region` VALUES ('3135', '371', '腾冲县', '3', '0');
INSERT INTO `sw_region` VALUES ('3136', '371', '龙陵县', '3', '0');
INSERT INTO `sw_region` VALUES ('3137', '371', '昌宁县', '3', '0');
INSERT INTO `sw_region` VALUES ('3138', '372', '楚雄市', '3', '0');
INSERT INTO `sw_region` VALUES ('3139', '372', '双柏县', '3', '0');
INSERT INTO `sw_region` VALUES ('3140', '372', '牟定县', '3', '0');
INSERT INTO `sw_region` VALUES ('3141', '372', '南华县', '3', '0');
INSERT INTO `sw_region` VALUES ('3142', '372', '姚安县', '3', '0');
INSERT INTO `sw_region` VALUES ('3143', '372', '大姚县', '3', '0');
INSERT INTO `sw_region` VALUES ('3144', '372', '永仁县', '3', '0');
INSERT INTO `sw_region` VALUES ('3145', '372', '元谋县', '3', '0');
INSERT INTO `sw_region` VALUES ('3146', '372', '武定县', '3', '0');
INSERT INTO `sw_region` VALUES ('3147', '372', '禄丰县', '3', '0');
INSERT INTO `sw_region` VALUES ('3148', '373', '大理市', '3', '0');
INSERT INTO `sw_region` VALUES ('3149', '373', '祥云县', '3', '0');
INSERT INTO `sw_region` VALUES ('3150', '373', '宾川县', '3', '0');
INSERT INTO `sw_region` VALUES ('3151', '373', '弥渡县', '3', '0');
INSERT INTO `sw_region` VALUES ('3152', '373', '永平县', '3', '0');
INSERT INTO `sw_region` VALUES ('3153', '373', '云龙县', '3', '0');
INSERT INTO `sw_region` VALUES ('3154', '373', '洱源县', '3', '0');
INSERT INTO `sw_region` VALUES ('3155', '373', '剑川县', '3', '0');
INSERT INTO `sw_region` VALUES ('3156', '373', '鹤庆县', '3', '0');
INSERT INTO `sw_region` VALUES ('3157', '373', '漾濞', '3', '0');
INSERT INTO `sw_region` VALUES ('3158', '373', '南涧', '3', '0');
INSERT INTO `sw_region` VALUES ('3159', '373', '巍山', '3', '0');
INSERT INTO `sw_region` VALUES ('3160', '374', '潞西市', '3', '0');
INSERT INTO `sw_region` VALUES ('3161', '374', '瑞丽市', '3', '0');
INSERT INTO `sw_region` VALUES ('3162', '374', '梁河县', '3', '0');
INSERT INTO `sw_region` VALUES ('3163', '374', '盈江县', '3', '0');
INSERT INTO `sw_region` VALUES ('3164', '374', '陇川县', '3', '0');
INSERT INTO `sw_region` VALUES ('3165', '375', '香格里拉县', '3', '0');
INSERT INTO `sw_region` VALUES ('3166', '375', '德钦县', '3', '0');
INSERT INTO `sw_region` VALUES ('3167', '375', '维西', '3', '0');
INSERT INTO `sw_region` VALUES ('3168', '376', '泸西县', '3', '0');
INSERT INTO `sw_region` VALUES ('3169', '376', '蒙自县', '3', '0');
INSERT INTO `sw_region` VALUES ('3170', '376', '个旧市', '3', '0');
INSERT INTO `sw_region` VALUES ('3171', '376', '开远市', '3', '0');
INSERT INTO `sw_region` VALUES ('3172', '376', '绿春县', '3', '0');
INSERT INTO `sw_region` VALUES ('3173', '376', '建水县', '3', '0');
INSERT INTO `sw_region` VALUES ('3174', '376', '石屏县', '3', '0');
INSERT INTO `sw_region` VALUES ('3175', '376', '弥勒县', '3', '0');
INSERT INTO `sw_region` VALUES ('3176', '376', '元阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('3177', '376', '红河县', '3', '0');
INSERT INTO `sw_region` VALUES ('3178', '376', '金平', '3', '0');
INSERT INTO `sw_region` VALUES ('3179', '376', '河口', '3', '0');
INSERT INTO `sw_region` VALUES ('3180', '376', '屏边', '3', '0');
INSERT INTO `sw_region` VALUES ('3181', '377', '临翔区', '3', '0');
INSERT INTO `sw_region` VALUES ('3182', '377', '凤庆县', '3', '0');
INSERT INTO `sw_region` VALUES ('3183', '377', '云县', '3', '0');
INSERT INTO `sw_region` VALUES ('3184', '377', '永德县', '3', '0');
INSERT INTO `sw_region` VALUES ('3185', '377', '镇康县', '3', '0');
INSERT INTO `sw_region` VALUES ('3186', '377', '双江', '3', '0');
INSERT INTO `sw_region` VALUES ('3187', '377', '耿马', '3', '0');
INSERT INTO `sw_region` VALUES ('3188', '377', '沧源', '3', '0');
INSERT INTO `sw_region` VALUES ('3189', '378', '麒麟区', '3', '0');
INSERT INTO `sw_region` VALUES ('3190', '378', '宣威市', '3', '0');
INSERT INTO `sw_region` VALUES ('3191', '378', '马龙县', '3', '0');
INSERT INTO `sw_region` VALUES ('3192', '378', '陆良县', '3', '0');
INSERT INTO `sw_region` VALUES ('3193', '378', '师宗县', '3', '0');
INSERT INTO `sw_region` VALUES ('3194', '378', '罗平县', '3', '0');
INSERT INTO `sw_region` VALUES ('3195', '378', '富源县', '3', '0');
INSERT INTO `sw_region` VALUES ('3196', '378', '会泽县', '3', '0');
INSERT INTO `sw_region` VALUES ('3197', '378', '沾益县', '3', '0');
INSERT INTO `sw_region` VALUES ('3198', '379', '文山县', '3', '0');
INSERT INTO `sw_region` VALUES ('3199', '379', '砚山县', '3', '0');
INSERT INTO `sw_region` VALUES ('3200', '379', '西畴县', '3', '0');
INSERT INTO `sw_region` VALUES ('3201', '379', '麻栗坡县', '3', '0');
INSERT INTO `sw_region` VALUES ('3202', '379', '马关县', '3', '0');
INSERT INTO `sw_region` VALUES ('3203', '379', '丘北县', '3', '0');
INSERT INTO `sw_region` VALUES ('3204', '379', '广南县', '3', '0');
INSERT INTO `sw_region` VALUES ('3205', '379', '富宁县', '3', '0');
INSERT INTO `sw_region` VALUES ('3206', '380', '景洪市', '3', '0');
INSERT INTO `sw_region` VALUES ('3207', '380', '勐海县', '3', '0');
INSERT INTO `sw_region` VALUES ('3208', '380', '勐腊县', '3', '0');
INSERT INTO `sw_region` VALUES ('3209', '381', '红塔区', '3', '0');
INSERT INTO `sw_region` VALUES ('3210', '381', '江川县', '3', '0');
INSERT INTO `sw_region` VALUES ('3211', '381', '澄江县', '3', '0');
INSERT INTO `sw_region` VALUES ('3212', '381', '通海县', '3', '0');
INSERT INTO `sw_region` VALUES ('3213', '381', '华宁县', '3', '0');
INSERT INTO `sw_region` VALUES ('3214', '381', '易门县', '3', '0');
INSERT INTO `sw_region` VALUES ('3215', '381', '峨山', '3', '0');
INSERT INTO `sw_region` VALUES ('3216', '381', '新平', '3', '0');
INSERT INTO `sw_region` VALUES ('3217', '381', '元江', '3', '0');
INSERT INTO `sw_region` VALUES ('3218', '382', '昭阳区', '3', '0');
INSERT INTO `sw_region` VALUES ('3219', '382', '鲁甸县', '3', '0');
INSERT INTO `sw_region` VALUES ('3220', '382', '巧家县', '3', '0');
INSERT INTO `sw_region` VALUES ('3221', '382', '盐津县', '3', '0');
INSERT INTO `sw_region` VALUES ('3222', '382', '大关县', '3', '0');
INSERT INTO `sw_region` VALUES ('3223', '382', '永善县', '3', '0');
INSERT INTO `sw_region` VALUES ('3224', '382', '绥江县', '3', '0');
INSERT INTO `sw_region` VALUES ('3225', '382', '镇雄县', '3', '0');
INSERT INTO `sw_region` VALUES ('3226', '382', '彝良县', '3', '0');
INSERT INTO `sw_region` VALUES ('3227', '382', '威信县', '3', '0');
INSERT INTO `sw_region` VALUES ('3228', '382', '水富县', '3', '0');
INSERT INTO `sw_region` VALUES ('3229', '383', '西湖区', '3', '0');
INSERT INTO `sw_region` VALUES ('3230', '383', '上城区', '3', '0');
INSERT INTO `sw_region` VALUES ('3231', '383', '下城区', '3', '0');
INSERT INTO `sw_region` VALUES ('3232', '383', '拱墅区', '3', '0');
INSERT INTO `sw_region` VALUES ('3233', '383', '滨江区', '3', '0');
INSERT INTO `sw_region` VALUES ('3234', '383', '江干区', '3', '0');
INSERT INTO `sw_region` VALUES ('3235', '383', '萧山区', '3', '0');
INSERT INTO `sw_region` VALUES ('3236', '383', '余杭区', '3', '0');
INSERT INTO `sw_region` VALUES ('3237', '383', '市郊', '3', '0');
INSERT INTO `sw_region` VALUES ('3238', '383', '建德市', '3', '0');
INSERT INTO `sw_region` VALUES ('3239', '383', '富阳市', '3', '0');
INSERT INTO `sw_region` VALUES ('3240', '383', '临安市', '3', '0');
INSERT INTO `sw_region` VALUES ('3241', '383', '桐庐县', '3', '0');
INSERT INTO `sw_region` VALUES ('3242', '383', '淳安县', '3', '0');
INSERT INTO `sw_region` VALUES ('3243', '384', '吴兴区', '3', '0');
INSERT INTO `sw_region` VALUES ('3244', '384', '南浔区', '3', '0');
INSERT INTO `sw_region` VALUES ('3245', '384', '德清县', '3', '0');
INSERT INTO `sw_region` VALUES ('3246', '384', '长兴县', '3', '0');
INSERT INTO `sw_region` VALUES ('3247', '384', '安吉县', '3', '0');
INSERT INTO `sw_region` VALUES ('3248', '385', '南湖区', '3', '0');
INSERT INTO `sw_region` VALUES ('3249', '385', '秀洲区', '3', '0');
INSERT INTO `sw_region` VALUES ('3250', '385', '海宁市', '3', '0');
INSERT INTO `sw_region` VALUES ('3251', '385', '嘉善县', '3', '0');
INSERT INTO `sw_region` VALUES ('3252', '385', '平湖市', '3', '0');
INSERT INTO `sw_region` VALUES ('3253', '385', '桐乡市', '3', '0');
INSERT INTO `sw_region` VALUES ('3254', '385', '海盐县', '3', '0');
INSERT INTO `sw_region` VALUES ('3255', '386', '婺城区', '3', '0');
INSERT INTO `sw_region` VALUES ('3256', '386', '金东区', '3', '0');
INSERT INTO `sw_region` VALUES ('3257', '386', '兰溪市', '3', '0');
INSERT INTO `sw_region` VALUES ('3258', '386', '市区', '3', '0');
INSERT INTO `sw_region` VALUES ('3259', '386', '佛堂镇', '3', '0');
INSERT INTO `sw_region` VALUES ('3260', '386', '上溪镇', '3', '0');
INSERT INTO `sw_region` VALUES ('3261', '386', '义亭镇', '3', '0');
INSERT INTO `sw_region` VALUES ('3262', '386', '大陈镇', '3', '0');
INSERT INTO `sw_region` VALUES ('3263', '386', '苏溪镇', '3', '0');
INSERT INTO `sw_region` VALUES ('3264', '386', '赤岸镇', '3', '0');
INSERT INTO `sw_region` VALUES ('3265', '386', '东阳市', '3', '0');
INSERT INTO `sw_region` VALUES ('3266', '386', '永康市', '3', '0');
INSERT INTO `sw_region` VALUES ('3267', '386', '武义县', '3', '0');
INSERT INTO `sw_region` VALUES ('3268', '386', '浦江县', '3', '0');
INSERT INTO `sw_region` VALUES ('3269', '386', '磐安县', '3', '0');
INSERT INTO `sw_region` VALUES ('3270', '387', '莲都区', '3', '0');
INSERT INTO `sw_region` VALUES ('3271', '387', '龙泉市', '3', '0');
INSERT INTO `sw_region` VALUES ('3272', '387', '青田县', '3', '0');
INSERT INTO `sw_region` VALUES ('3273', '387', '缙云县', '3', '0');
INSERT INTO `sw_region` VALUES ('3274', '387', '遂昌县', '3', '0');
INSERT INTO `sw_region` VALUES ('3275', '387', '松阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('3276', '387', '云和县', '3', '0');
INSERT INTO `sw_region` VALUES ('3277', '387', '庆元县', '3', '0');
INSERT INTO `sw_region` VALUES ('3278', '387', '景宁', '3', '0');
INSERT INTO `sw_region` VALUES ('3279', '388', '海曙区', '3', '0');
INSERT INTO `sw_region` VALUES ('3280', '388', '江东区', '3', '0');
INSERT INTO `sw_region` VALUES ('3281', '388', '江北区', '3', '0');
INSERT INTO `sw_region` VALUES ('3282', '388', '镇海区', '3', '0');
INSERT INTO `sw_region` VALUES ('3283', '388', '北仑区', '3', '0');
INSERT INTO `sw_region` VALUES ('3284', '388', '鄞州区', '3', '0');
INSERT INTO `sw_region` VALUES ('3285', '388', '余姚市', '3', '0');
INSERT INTO `sw_region` VALUES ('3286', '388', '慈溪市', '3', '0');
INSERT INTO `sw_region` VALUES ('3287', '388', '奉化市', '3', '0');
INSERT INTO `sw_region` VALUES ('3288', '388', '象山县', '3', '0');
INSERT INTO `sw_region` VALUES ('3289', '388', '宁海县', '3', '0');
INSERT INTO `sw_region` VALUES ('3290', '389', '越城区', '3', '0');
INSERT INTO `sw_region` VALUES ('3291', '389', '上虞市', '3', '0');
INSERT INTO `sw_region` VALUES ('3292', '389', '嵊州市', '3', '0');
INSERT INTO `sw_region` VALUES ('3293', '389', '绍兴县', '3', '0');
INSERT INTO `sw_region` VALUES ('3294', '389', '新昌县', '3', '0');
INSERT INTO `sw_region` VALUES ('3295', '389', '诸暨市', '3', '0');
INSERT INTO `sw_region` VALUES ('3296', '390', '椒江区', '3', '0');
INSERT INTO `sw_region` VALUES ('3297', '390', '黄岩区', '3', '0');
INSERT INTO `sw_region` VALUES ('3298', '390', '路桥区', '3', '0');
INSERT INTO `sw_region` VALUES ('3299', '390', '温岭市', '3', '0');
INSERT INTO `sw_region` VALUES ('3300', '390', '临海市', '3', '0');
INSERT INTO `sw_region` VALUES ('3301', '390', '玉环县', '3', '0');
INSERT INTO `sw_region` VALUES ('3302', '390', '三门县', '3', '0');
INSERT INTO `sw_region` VALUES ('3303', '390', '天台县', '3', '0');
INSERT INTO `sw_region` VALUES ('3304', '390', '仙居县', '3', '0');
INSERT INTO `sw_region` VALUES ('3305', '391', '鹿城区', '3', '0');
INSERT INTO `sw_region` VALUES ('3306', '391', '龙湾区', '3', '0');
INSERT INTO `sw_region` VALUES ('3307', '391', '瓯海区', '3', '0');
INSERT INTO `sw_region` VALUES ('3308', '391', '瑞安市', '3', '0');
INSERT INTO `sw_region` VALUES ('3309', '391', '乐清市', '3', '0');
INSERT INTO `sw_region` VALUES ('3310', '391', '洞头县', '3', '0');
INSERT INTO `sw_region` VALUES ('3311', '391', '永嘉县', '3', '0');
INSERT INTO `sw_region` VALUES ('3312', '391', '平阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('3313', '391', '苍南县', '3', '0');
INSERT INTO `sw_region` VALUES ('3314', '391', '文成县', '3', '0');
INSERT INTO `sw_region` VALUES ('3315', '391', '泰顺县', '3', '0');
INSERT INTO `sw_region` VALUES ('3316', '392', '定海区', '3', '0');
INSERT INTO `sw_region` VALUES ('3317', '392', '普陀区', '3', '0');
INSERT INTO `sw_region` VALUES ('3318', '392', '岱山县', '3', '0');
INSERT INTO `sw_region` VALUES ('3319', '392', '嵊泗县', '3', '0');
INSERT INTO `sw_region` VALUES ('3320', '393', '衢州市', '3', '0');
INSERT INTO `sw_region` VALUES ('3321', '393', '江山市', '3', '0');
INSERT INTO `sw_region` VALUES ('3322', '393', '常山县', '3', '0');
INSERT INTO `sw_region` VALUES ('3323', '393', '开化县', '3', '0');
INSERT INTO `sw_region` VALUES ('3324', '393', '龙游县', '3', '0');
INSERT INTO `sw_region` VALUES ('3325', '394', '合川区', '3', '0');
INSERT INTO `sw_region` VALUES ('3326', '394', '江津区', '3', '0');
INSERT INTO `sw_region` VALUES ('3327', '394', '南川区', '3', '0');
INSERT INTO `sw_region` VALUES ('3328', '394', '永川区', '3', '0');
INSERT INTO `sw_region` VALUES ('3329', '394', '南岸区', '3', '0');
INSERT INTO `sw_region` VALUES ('3330', '394', '渝北区', '3', '0');
INSERT INTO `sw_region` VALUES ('3331', '394', '万盛区', '3', '0');
INSERT INTO `sw_region` VALUES ('3332', '394', '大渡口区', '3', '0');
INSERT INTO `sw_region` VALUES ('3333', '394', '万州区', '3', '0');
INSERT INTO `sw_region` VALUES ('3334', '394', '北碚区', '3', '0');
INSERT INTO `sw_region` VALUES ('3335', '394', '沙坪坝区', '3', '0');
INSERT INTO `sw_region` VALUES ('3336', '394', '巴南区', '3', '0');
INSERT INTO `sw_region` VALUES ('3337', '394', '涪陵区', '3', '0');
INSERT INTO `sw_region` VALUES ('3338', '394', '江北区', '3', '0');
INSERT INTO `sw_region` VALUES ('3339', '394', '九龙坡区', '3', '0');
INSERT INTO `sw_region` VALUES ('3340', '394', '渝中区', '3', '0');
INSERT INTO `sw_region` VALUES ('3341', '394', '黔江开发区', '3', '0');
INSERT INTO `sw_region` VALUES ('3342', '394', '长寿区', '3', '0');
INSERT INTO `sw_region` VALUES ('3343', '394', '双桥区', '3', '0');
INSERT INTO `sw_region` VALUES ('3344', '394', '綦江县', '3', '0');
INSERT INTO `sw_region` VALUES ('3345', '394', '潼南县', '3', '0');
INSERT INTO `sw_region` VALUES ('3346', '394', '铜梁县', '3', '0');
INSERT INTO `sw_region` VALUES ('3347', '394', '大足县', '3', '0');
INSERT INTO `sw_region` VALUES ('3348', '394', '荣昌县', '3', '0');
INSERT INTO `sw_region` VALUES ('3349', '394', '璧山县', '3', '0');
INSERT INTO `sw_region` VALUES ('3350', '394', '垫江县', '3', '0');
INSERT INTO `sw_region` VALUES ('3351', '394', '武隆县', '3', '0');
INSERT INTO `sw_region` VALUES ('3352', '394', '丰都县', '3', '0');
INSERT INTO `sw_region` VALUES ('3353', '394', '城口县', '3', '0');
INSERT INTO `sw_region` VALUES ('3354', '394', '梁平县', '3', '0');
INSERT INTO `sw_region` VALUES ('3355', '394', '开县', '3', '0');
INSERT INTO `sw_region` VALUES ('3356', '394', '巫溪县', '3', '0');
INSERT INTO `sw_region` VALUES ('3357', '394', '巫山县', '3', '0');
INSERT INTO `sw_region` VALUES ('3358', '394', '奉节县', '3', '0');
INSERT INTO `sw_region` VALUES ('3359', '394', '云阳县', '3', '0');
INSERT INTO `sw_region` VALUES ('3360', '394', '忠县', '3', '0');
INSERT INTO `sw_region` VALUES ('3361', '394', '石柱', '3', '0');
INSERT INTO `sw_region` VALUES ('3362', '394', '彭水', '3', '0');
INSERT INTO `sw_region` VALUES ('3363', '394', '酉阳', '3', '0');
INSERT INTO `sw_region` VALUES ('3364', '394', '秀山', '3', '0');
INSERT INTO `sw_region` VALUES ('3365', '395', '沙田区', '3', '0');
INSERT INTO `sw_region` VALUES ('3366', '395', '东区', '3', '0');
INSERT INTO `sw_region` VALUES ('3367', '395', '观塘区', '3', '0');
INSERT INTO `sw_region` VALUES ('3368', '395', '黄大仙区', '3', '0');
INSERT INTO `sw_region` VALUES ('3369', '395', '九龙城区', '3', '0');
INSERT INTO `sw_region` VALUES ('3370', '395', '屯门区', '3', '0');
INSERT INTO `sw_region` VALUES ('3371', '395', '葵青区', '3', '0');
INSERT INTO `sw_region` VALUES ('3372', '395', '元朗区', '3', '0');
INSERT INTO `sw_region` VALUES ('3373', '395', '深水埗区', '3', '0');
INSERT INTO `sw_region` VALUES ('3374', '395', '西贡区', '3', '0');
INSERT INTO `sw_region` VALUES ('3375', '395', '大埔区', '3', '0');
INSERT INTO `sw_region` VALUES ('3376', '395', '湾仔区', '3', '0');
INSERT INTO `sw_region` VALUES ('3377', '395', '油尖旺区', '3', '0');
INSERT INTO `sw_region` VALUES ('3378', '395', '北区', '3', '0');
INSERT INTO `sw_region` VALUES ('3379', '395', '南区', '3', '0');
INSERT INTO `sw_region` VALUES ('3380', '395', '荃湾区', '3', '0');
INSERT INTO `sw_region` VALUES ('3381', '395', '中西区', '3', '0');
INSERT INTO `sw_region` VALUES ('3382', '395', '离岛区', '3', '0');
INSERT INTO `sw_region` VALUES ('3383', '396', '澳门', '3', '0');
INSERT INTO `sw_region` VALUES ('3384', '397', '台北', '3', '0');
INSERT INTO `sw_region` VALUES ('3385', '397', '高雄', '3', '0');
INSERT INTO `sw_region` VALUES ('3386', '397', '基隆', '3', '0');
INSERT INTO `sw_region` VALUES ('3387', '397', '台中', '3', '0');
INSERT INTO `sw_region` VALUES ('3388', '397', '台南', '3', '0');
INSERT INTO `sw_region` VALUES ('3389', '397', '新竹', '3', '0');
INSERT INTO `sw_region` VALUES ('3390', '397', '嘉义', '3', '0');
INSERT INTO `sw_region` VALUES ('3391', '397', '宜兰县', '3', '0');
INSERT INTO `sw_region` VALUES ('3392', '397', '桃园县', '3', '0');
INSERT INTO `sw_region` VALUES ('3393', '397', '苗栗县', '3', '0');
INSERT INTO `sw_region` VALUES ('3394', '397', '彰化县', '3', '0');
INSERT INTO `sw_region` VALUES ('3395', '397', '南投县', '3', '0');
INSERT INTO `sw_region` VALUES ('3396', '397', '云林县', '3', '0');
INSERT INTO `sw_region` VALUES ('3397', '397', '屏东县', '3', '0');
INSERT INTO `sw_region` VALUES ('3398', '397', '台东县', '3', '0');
INSERT INTO `sw_region` VALUES ('3399', '397', '花莲县', '3', '0');
INSERT INTO `sw_region` VALUES ('3400', '397', '澎湖县', '3', '0');
INSERT INTO `sw_region` VALUES ('3401', '3', '合肥', '2', '0');
INSERT INTO `sw_region` VALUES ('3402', '3401', '庐阳区', '3', '0');
INSERT INTO `sw_region` VALUES ('3403', '3401', '瑶海区', '3', '0');
INSERT INTO `sw_region` VALUES ('3404', '3401', '蜀山区', '3', '0');
INSERT INTO `sw_region` VALUES ('3405', '3401', '包河区', '3', '0');
INSERT INTO `sw_region` VALUES ('3406', '3401', '长丰县', '3', '0');
INSERT INTO `sw_region` VALUES ('3407', '3401', '肥东县', '3', '0');
INSERT INTO `sw_region` VALUES ('3408', '3401', '肥西县', '3', '0');

-- ----------------------------
-- Table structure for `sw_reg_extend_info`
-- ----------------------------
DROP TABLE IF EXISTS `sw_reg_extend_info`;
CREATE TABLE `sw_reg_extend_info` (
  `Id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL,
  `reg_field_id` int(10) unsigned NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_reg_extend_info
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_reg_fields`
-- ----------------------------
DROP TABLE IF EXISTS `sw_reg_fields`;
CREATE TABLE `sw_reg_fields` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `reg_field_name` varchar(60) NOT NULL,
  `dis_order` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_need` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_reg_fields
-- ----------------------------
INSERT INTO `sw_reg_fields` VALUES ('1', 'MSN', '0', '1', '1', '1');
INSERT INTO `sw_reg_fields` VALUES ('2', 'QQ', '0', '1', '1', '1');
INSERT INTO `sw_reg_fields` VALUES ('3', '办公电话', '0', '1', '1', '1');
INSERT INTO `sw_reg_fields` VALUES ('4', '家庭电话', '0', '1', '1', '1');
INSERT INTO `sw_reg_fields` VALUES ('5', '手机', '0', '1', '1', '1');
INSERT INTO `sw_reg_fields` VALUES ('6', '密码找回问题', '0', '1', '1', '1');

-- ----------------------------
-- Table structure for `sw_role`
-- ----------------------------
DROP TABLE IF EXISTS `sw_role`;
CREATE TABLE `sw_role` (
  `role_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(60) NOT NULL DEFAULT '',
  `action_list` text NOT NULL,
  `role_describe` text,
  PRIMARY KEY (`role_id`),
  KEY `user_name` (`role_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_role
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_searchengine`
-- ----------------------------
DROP TABLE IF EXISTS `sw_searchengine`;
CREATE TABLE `sw_searchengine` (
  `date` date NOT NULL DEFAULT '0000-00-00',
  `searchengine` varchar(20) NOT NULL DEFAULT '',
  `count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`date`,`searchengine`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_searchengine
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_sessions`
-- ----------------------------
DROP TABLE IF EXISTS `sw_sessions`;
CREATE TABLE `sw_sessions` (
  `sesskey` char(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `expiry` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `adminid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL,
  `user_rank` tinyint(3) NOT NULL,
  `discount` decimal(3,2) NOT NULL,
  `email` varchar(60) NOT NULL,
  `data` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`sesskey`),
  KEY `expiry` (`expiry`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_sessions
-- ----------------------------
INSERT INTO `sw_sessions` VALUES ('30340b37a0a077828ae32b8eecd71248', '1398740022', '0', '0', '127.0.0.1', '0', '0', '1.00', '0', 'a:6:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:14:\"display_search\";s:4:\"grid\";s:12:\"captcha_word\";s:16:\"MjdjMGI1NGE2Yg==\";s:13:\"captcha_login\";s:16:\"ZDYwZDI2NDk4MQ==\";}');
INSERT INTO `sw_sessions` VALUES ('7dcaa16d6bc8ae4fc969d41b570fb275', '1398740650', '0', '1', '127.0.0.1', '0', '0', '0.00', '0', 'a:4:{s:10:\"admin_name\";s:5:\"admin\";s:11:\"action_list\";s:3:\"all\";s:10:\"last_check\";i:1398711850;s:12:\"suppliers_id\";s:1:\"0\";}');
INSERT INTO `sw_sessions` VALUES ('4b2d8d85772bf0ab45fab64aabe70ca4', '1398740585', '0', '0', '127.0.0.1', '0', '0', '1.00', '0', 'a:3:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;}');
INSERT INTO `sw_sessions` VALUES ('c2163fd9291018802ff56b07313612da', '1398740684', '0', '1', '127.0.0.1', '0', '0', '0.00', '0', 'a:4:{s:10:\"admin_name\";s:5:\"admin\";s:11:\"action_list\";s:3:\"all\";s:10:\"last_check\";i:1398711793;s:12:\"suppliers_id\";s:1:\"0\";}');
INSERT INTO `sw_sessions` VALUES ('47aa87d931a0cad6e3d8fa239641979b', '1398740317', '0', '0', '127.0.0.1', '0', '0', '1.00', '0', 'a:4:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;s:12:\"captcha_word\";s:16:\"N2QxNjgyMjNlMQ==\";}');
INSERT INTO `sw_sessions` VALUES ('4fa9d2a3739b40dbac63092903a67731', '1398740623', '0', '0', '127.0.0.1', '0', '0', '1.00', '0', 'a:3:{s:7:\"from_ad\";i:0;s:7:\"referer\";s:6:\"本站\";s:10:\"login_fail\";i:0;}');

-- ----------------------------
-- Table structure for `sw_sessions_data`
-- ----------------------------
DROP TABLE IF EXISTS `sw_sessions_data`;
CREATE TABLE `sw_sessions_data` (
  `sesskey` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `expiry` int(10) unsigned NOT NULL DEFAULT '0',
  `data` longtext NOT NULL,
  PRIMARY KEY (`sesskey`),
  KEY `expiry` (`expiry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_sessions_data
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_shipping`
-- ----------------------------
DROP TABLE IF EXISTS `sw_shipping`;
CREATE TABLE `sw_shipping` (
  `shipping_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `shipping_code` varchar(20) NOT NULL DEFAULT '',
  `shipping_name` varchar(120) NOT NULL DEFAULT '',
  `shipping_desc` varchar(255) NOT NULL DEFAULT '',
  `insure` varchar(10) NOT NULL DEFAULT '0',
  `support_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_print` text NOT NULL,
  `print_bg` varchar(255) DEFAULT NULL,
  `config_lable` text,
  `print_model` tinyint(1) DEFAULT '0',
  `shipping_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`shipping_id`),
  KEY `shipping_code` (`shipping_code`,`enabled`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_shipping
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_shipping_area`
-- ----------------------------
DROP TABLE IF EXISTS `sw_shipping_area`;
CREATE TABLE `sw_shipping_area` (
  `shipping_area_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `shipping_area_name` varchar(150) NOT NULL DEFAULT '',
  `shipping_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `configure` text NOT NULL,
  PRIMARY KEY (`shipping_area_id`),
  KEY `shipping_id` (`shipping_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_shipping_area
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_shop_config`
-- ----------------------------
DROP TABLE IF EXISTS `sw_shop_config`;
CREATE TABLE `sw_shop_config` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `code` varchar(30) NOT NULL DEFAULT '',
  `type` varchar(10) NOT NULL DEFAULT '',
  `store_range` varchar(255) NOT NULL DEFAULT '',
  `store_dir` varchar(255) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `sort_order` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=904 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_shop_config
-- ----------------------------
INSERT INTO `sw_shop_config` VALUES ('1', '0', 'shop_info', 'group', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('2', '0', 'basic', 'group', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('3', '0', 'display', 'group', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('4', '0', 'shopping_flow', 'group', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('5', '0', 'smtp', 'group', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('6', '0', 'hidden', 'hidden', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('7', '0', 'goods', 'group', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('8', '0', 'sms', 'group', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('9', '0', 'wap', 'group', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('101', '1', 'shop_name', 'text', '', '', '大时代商城', '1');
INSERT INTO `sw_shop_config` VALUES ('102', '1', 'shop_title', 'text', '', '', '大时代商城', '1');
INSERT INTO `sw_shop_config` VALUES ('103', '1', 'shop_desc', 'text', '', '', '大时代商城', '1');
INSERT INTO `sw_shop_config` VALUES ('104', '1', 'shop_keywords', 'text', '', '', '大时代商城', '1');
INSERT INTO `sw_shop_config` VALUES ('105', '1', 'shop_country', 'manual', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('106', '1', 'shop_province', 'manual', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('107', '1', 'shop_city', 'manual', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('108', '1', 'shop_address', 'text', '', '', '三门峡盛得佳帮购商贸有限公司', '1');
INSERT INTO `sw_shop_config` VALUES ('109', '1', 'qq', 'text', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('110', '1', 'ww', 'text', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('111', '1', 'skype', 'text', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('112', '1', 'ym', 'text', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('113', '1', 'msn', 'text', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('114', '1', 'service_email', 'text', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('115', '1', 'service_phone', 'text', '', '', '0379-68317585 0379-80886678', '1');
INSERT INTO `sw_shop_config` VALUES ('116', '1', 'shop_closed', 'select', '0,1', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('117', '1', 'close_comment', 'textarea', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('118', '1', 'shop_logo', 'file', '', '../themes/{$template}/images/', '../themes/red_three/images/logo.gif', '1');
INSERT INTO `sw_shop_config` VALUES ('119', '1', 'licensed', 'select', '0,1', '', '1', '1');
INSERT INTO `sw_shop_config` VALUES ('120', '1', 'user_notice', 'textarea', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('121', '1', 'shop_notice', 'textarea', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('122', '1', 'shop_reg_closed', 'select', '1,0', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('201', '2', 'lang', 'manual', '', '', 'zh_cn', '1');
INSERT INTO `sw_shop_config` VALUES ('202', '2', 'icp_number', 'text', '', '', '豫ICP备88888888', '1');
INSERT INTO `sw_shop_config` VALUES ('203', '2', 'icp_file', 'file', '', '../cert/', '', '1');
INSERT INTO `sw_shop_config` VALUES ('204', '2', 'watermark', 'file', '', '../images/', '', '1');
INSERT INTO `sw_shop_config` VALUES ('205', '2', 'watermark_place', 'select', '0,1,2,3,4,5', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('206', '2', 'watermark_alpha', 'text', '', '', '65', '1');
INSERT INTO `sw_shop_config` VALUES ('207', '2', 'use_storage', 'select', '1,0', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('208', '2', 'market_price_rate', 'text', '', '', '1.2', '1');
INSERT INTO `sw_shop_config` VALUES ('209', '2', 'rewrite', 'select', '0,1,2', '', '1', '1');
INSERT INTO `sw_shop_config` VALUES ('210', '2', 'integral_name', 'text', '', '', '积分', '1');
INSERT INTO `sw_shop_config` VALUES ('211', '2', 'integral_scale', 'text', '', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('212', '2', 'integral_percent', 'text', '', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('213', '2', 'sn_prefix', 'text', '', '', 'dsd', '1');
INSERT INTO `sw_shop_config` VALUES ('214', '2', 'comment_check', 'select', '0,1', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('215', '2', 'no_picture', 'file', '', '../images/', '', '1');
INSERT INTO `sw_shop_config` VALUES ('218', '2', 'stats_code', 'textarea', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('219', '2', 'cache_time', 'text', '', '', '3600', '1');
INSERT INTO `sw_shop_config` VALUES ('220', '2', 'register_points', 'text', '', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('221', '2', 'enable_gzip', 'select', '0,1', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('222', '2', 'top10_time', 'select', '0,1,2,3,4', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('223', '2', 'timezone', 'options', '-12,-11,-10,-9,-8,-7,-6,-5,-4,-3.5,-3,-2,-1,0,1,2,3,3.5,4,4.5,5,5.5,5.75,6,6.5,7,8,9,9.5,10,11,12', '', '8', '1');
INSERT INTO `sw_shop_config` VALUES ('224', '2', 'upload_size_limit', 'options', '-1,0,64,128,256,512,1024,2048,4096', '', '64', '1');
INSERT INTO `sw_shop_config` VALUES ('226', '2', 'cron_method', 'select', '0,1', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('227', '2', 'comment_factor', 'select', '0,1,2,3', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('228', '2', 'enable_order_check', 'select', '0,1', '', '1', '1');
INSERT INTO `sw_shop_config` VALUES ('229', '2', 'default_storage', 'text', '', '', '1000', '1');
INSERT INTO `sw_shop_config` VALUES ('230', '2', 'bgcolor', 'text', '', '', '#FFFFFF', '1');
INSERT INTO `sw_shop_config` VALUES ('231', '2', 'visit_stats', 'select', 'on,off', '', 'off', '1');
INSERT INTO `sw_shop_config` VALUES ('232', '2', 'send_mail_on', 'select', 'on,off', '', 'off', '1');
INSERT INTO `sw_shop_config` VALUES ('233', '2', 'auto_generate_gallery', 'select', '1,0', '', '1', '1');
INSERT INTO `sw_shop_config` VALUES ('234', '2', 'retain_original_img', 'select', '1,0', '', '1', '1');
INSERT INTO `sw_shop_config` VALUES ('235', '2', 'member_email_validate', 'select', '1,0', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('236', '2', 'message_board', 'select', '1,0', '', '1', '1');
INSERT INTO `sw_shop_config` VALUES ('239', '2', 'certificate_id', 'hidden', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('240', '2', 'token', 'hidden', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('241', '2', 'certi', 'hidden', '', '', 'http://www.baidu.com/openapi/api.php', '1');
INSERT INTO `sw_shop_config` VALUES ('242', '2', 'send_verify_email', 'select', '1,0', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('243', '2', 'ent_id', 'hidden', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('244', '2', 'ent_ac', 'hidden', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('245', '2', 'ent_sign', 'hidden', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('246', '2', 'ent_email', 'hidden', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('301', '3', 'date_format', 'hidden', '', '', 'Y-m-d', '1');
INSERT INTO `sw_shop_config` VALUES ('302', '3', 'time_format', 'text', '', '', 'Y-m-d H:i:s', '1');
INSERT INTO `sw_shop_config` VALUES ('303', '3', 'currency_format', 'text', '', '', '￥%s', '1');
INSERT INTO `sw_shop_config` VALUES ('304', '3', 'thumb_width', 'text', '', '', '200', '1');
INSERT INTO `sw_shop_config` VALUES ('305', '3', 'thumb_height', 'text', '', '', '200', '1');
INSERT INTO `sw_shop_config` VALUES ('306', '3', 'image_width', 'text', '', '', '600', '1');
INSERT INTO `sw_shop_config` VALUES ('307', '3', 'image_height', 'text', '', '', '600', '1');
INSERT INTO `sw_shop_config` VALUES ('312', '3', 'top_number', 'text', '', '', '10', '1');
INSERT INTO `sw_shop_config` VALUES ('313', '3', 'history_number', 'text', '', '', '5', '1');
INSERT INTO `sw_shop_config` VALUES ('314', '3', 'comments_number', 'text', '', '', '5', '1');
INSERT INTO `sw_shop_config` VALUES ('315', '3', 'bought_goods', 'text', '', '', '3', '1');
INSERT INTO `sw_shop_config` VALUES ('316', '3', 'article_number', 'text', '', '', '8', '1');
INSERT INTO `sw_shop_config` VALUES ('317', '3', 'goods_name_length', 'text', '', '', '13', '1');
INSERT INTO `sw_shop_config` VALUES ('318', '3', 'price_format', 'select', '0,1,2,3,4,5', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('319', '3', 'page_size', 'text', '', '', '20', '1');
INSERT INTO `sw_shop_config` VALUES ('320', '3', 'sort_order_type', 'select', '0,1,2', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('321', '3', 'sort_order_method', 'select', '0,1', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('322', '3', 'show_order_type', 'select', '0,1,2', '', '1', '1');
INSERT INTO `sw_shop_config` VALUES ('323', '3', 'attr_related_number', 'text', '', '', '5', '1');
INSERT INTO `sw_shop_config` VALUES ('324', '3', 'goods_gallery_number', 'text', '', '', '5', '1');
INSERT INTO `sw_shop_config` VALUES ('325', '3', 'article_title_length', 'text', '', '', '16', '1');
INSERT INTO `sw_shop_config` VALUES ('326', '3', 'name_of_region_1', 'text', '', '', '国家', '1');
INSERT INTO `sw_shop_config` VALUES ('327', '3', 'name_of_region_2', 'text', '', '', '省', '1');
INSERT INTO `sw_shop_config` VALUES ('328', '3', 'name_of_region_3', 'text', '', '', '市', '1');
INSERT INTO `sw_shop_config` VALUES ('329', '3', 'name_of_region_4', 'text', '', '', '区', '1');
INSERT INTO `sw_shop_config` VALUES ('330', '3', 'search_keywords', 'text', '', '', '厨卫清洁,纸', '0');
INSERT INTO `sw_shop_config` VALUES ('332', '3', 'related_goods_number', 'text', '', '', '4', '1');
INSERT INTO `sw_shop_config` VALUES ('333', '3', 'help_open', 'select', '0,1', '', '1', '1');
INSERT INTO `sw_shop_config` VALUES ('334', '3', 'article_page_size', 'text', '', '', '10', '1');
INSERT INTO `sw_shop_config` VALUES ('335', '3', 'page_style', 'select', '0,1', '', '1', '1');
INSERT INTO `sw_shop_config` VALUES ('336', '3', 'recommend_order', 'select', '0,1', '', '1', '1');
INSERT INTO `sw_shop_config` VALUES ('337', '3', 'index_ad', 'hidden', '', '', 'sys', '1');
INSERT INTO `sw_shop_config` VALUES ('401', '4', 'can_invoice', 'select', '1,0', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('402', '4', 'use_integral', 'select', '1,0', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('403', '4', 'use_bonus', 'select', '1,0', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('404', '4', 'use_surplus', 'select', '1,0', '', '1', '1');
INSERT INTO `sw_shop_config` VALUES ('405', '4', 'use_how_oos', 'select', '1,0', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('406', '4', 'send_confirm_email', 'select', '1,0', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('407', '4', 'send_ship_email', 'select', '1,0', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('408', '4', 'send_cancel_email', 'select', '1,0', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('409', '4', 'send_invalid_email', 'select', '1,0', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('410', '4', 'order_pay_note', 'select', '1,0', '', '1', '1');
INSERT INTO `sw_shop_config` VALUES ('411', '4', 'order_unpay_note', 'select', '1,0', '', '1', '1');
INSERT INTO `sw_shop_config` VALUES ('412', '4', 'order_ship_note', 'select', '1,0', '', '1', '1');
INSERT INTO `sw_shop_config` VALUES ('413', '4', 'order_receive_note', 'select', '1,0', '', '1', '1');
INSERT INTO `sw_shop_config` VALUES ('414', '4', 'order_unship_note', 'select', '1,0', '', '1', '1');
INSERT INTO `sw_shop_config` VALUES ('415', '4', 'order_return_note', 'select', '1,0', '', '1', '1');
INSERT INTO `sw_shop_config` VALUES ('416', '4', 'order_invalid_note', 'select', '1,0', '', '1', '1');
INSERT INTO `sw_shop_config` VALUES ('417', '4', 'order_cancel_note', 'select', '1,0', '', '1', '1');
INSERT INTO `sw_shop_config` VALUES ('418', '4', 'invoice_content', 'textarea', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('419', '4', 'anonymous_buy', 'select', '1,0', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('420', '4', 'min_goods_amount', 'text', '', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('421', '4', 'one_step_buy', 'select', '1,0', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('422', '4', 'invoice_type', 'manual', '', '', 'a:2:{s:4:\"type\";a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:0:\"\";}s:4:\"rate\";a:3:{i:0;d:1;i:1;d:1.5;i:2;d:0;}}', '1');
INSERT INTO `sw_shop_config` VALUES ('423', '4', 'stock_dec_time', 'select', '1,0', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('424', '4', 'cart_confirm', 'options', '1,2,3,4', '', '3', '0');
INSERT INTO `sw_shop_config` VALUES ('425', '4', 'send_service_email', 'select', '1,0', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('426', '4', 'show_goods_in_cart', 'select', '1,2,3', '', '3', '1');
INSERT INTO `sw_shop_config` VALUES ('427', '4', 'show_attr_in_cart', 'select', '1,0', '', '1', '1');
INSERT INTO `sw_shop_config` VALUES ('501', '5', 'smtp_host', 'text', '', '', 'mx.eYou.com', '1');
INSERT INTO `sw_shop_config` VALUES ('502', '5', 'smtp_port', 'text', '', '', '25', '1');
INSERT INTO `sw_shop_config` VALUES ('503', '5', 'smtp_user', 'text', '', '', 'kongxiaoxiang2@eyou.com', '1');
INSERT INTO `sw_shop_config` VALUES ('504', '5', 'smtp_pass', 'password', '', '', '26312409', '1');
INSERT INTO `sw_shop_config` VALUES ('505', '5', 'smtp_mail', 'text', '', '', '26312409@qq.com', '1');
INSERT INTO `sw_shop_config` VALUES ('506', '5', 'mail_charset', 'select', 'UTF8,GB2312,BIG5', '', 'UTF8', '1');
INSERT INTO `sw_shop_config` VALUES ('507', '5', 'mail_service', 'select', '0,1', '', '1', '0');
INSERT INTO `sw_shop_config` VALUES ('508', '5', 'smtp_ssl', 'select', '0,1', '', '0', '0');
INSERT INTO `sw_shop_config` VALUES ('601', '6', 'integrate_code', 'hidden', '', '', 'ecshop', '1');
INSERT INTO `sw_shop_config` VALUES ('602', '6', 'integrate_config', 'hidden', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('603', '6', 'hash_code', 'hidden', '', '', '31693422540744c0a6b6da635b7a5a93', '1');
INSERT INTO `sw_shop_config` VALUES ('604', '6', 'template', 'hidden', '', '', 'red_three', '1');
INSERT INTO `sw_shop_config` VALUES ('605', '6', 'install_date', 'hidden', '', '', '1358236388', '1');
INSERT INTO `sw_shop_config` VALUES ('606', '6', 'ecs_version', 'hidden', '', '', 'v2.7.3', '1');
INSERT INTO `sw_shop_config` VALUES ('607', '6', 'sms_user_name', 'hidden', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('608', '6', 'sms_password', 'hidden', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('609', '6', 'sms_auth_str', 'hidden', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('610', '6', 'sms_domain', 'hidden', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('611', '6', 'sms_count', 'hidden', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('612', '6', 'sms_total_money', 'hidden', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('613', '6', 'sms_balance', 'hidden', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('614', '6', 'sms_last_request', 'hidden', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('616', '6', 'affiliate', 'hidden', '', '', 'a:3:{s:6:\"config\";a:7:{s:6:\"expire\";d:24;s:11:\"expire_unit\";s:4:\"hour\";s:11:\"separate_by\";i:0;s:15:\"level_point_all\";s:2:\"5%\";s:15:\"level_money_all\";s:2:\"1%\";s:18:\"level_register_all\";i:2;s:17:\"level_register_up\";i:60;}s:4:\"item\";a:4:{i:0;a:2:{s:11:\"level_point\";s:3:\"60%\";s:11:\"level_money\";s:3:\"60%\";}i:1;a:2:{s:11:\"level_point\";s:3:\"30%\";s:11:\"level_money\";s:3:\"30%\";}i:2;a:2:{s:11:\"level_point\";s:2:\"7%\";s:11:\"level_money\";s:2:\"7%\";}i:3;a:2:{s:11:\"level_point\";s:2:\"3%\";s:11:\"level_money\";s:2:\"3%\";}}s:2:\"on\";i:0;}', '1');
INSERT INTO `sw_shop_config` VALUES ('617', '6', 'captcha', 'hidden', '', '', '38', '1');
INSERT INTO `sw_shop_config` VALUES ('618', '6', 'captcha_width', 'hidden', '', '', '100', '1');
INSERT INTO `sw_shop_config` VALUES ('619', '6', 'captcha_height', 'hidden', '', '', '20', '1');
INSERT INTO `sw_shop_config` VALUES ('620', '6', 'sitemap', 'hidden', '', '', 'a:6:{s:19:\"homepage_changefreq\";s:6:\"hourly\";s:17:\"homepage_priority\";s:3:\"0.9\";s:19:\"category_changefreq\";s:6:\"hourly\";s:17:\"category_priority\";s:3:\"0.8\";s:18:\"content_changefreq\";s:6:\"weekly\";s:16:\"content_priority\";s:3:\"0.7\";}', '0');
INSERT INTO `sw_shop_config` VALUES ('621', '6', 'points_rule', 'hidden', '', '', '', '0');
INSERT INTO `sw_shop_config` VALUES ('622', '6', 'flash_theme', 'hidden', '', '', 'default', '1');
INSERT INTO `sw_shop_config` VALUES ('623', '6', 'stylename', 'hidden', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('701', '7', 'show_goodssn', 'select', '1,0', '', '1', '1');
INSERT INTO `sw_shop_config` VALUES ('702', '7', 'show_brand', 'select', '1,0', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('703', '7', 'show_goodsweight', 'select', '1,0', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('704', '7', 'show_goodsnumber', 'select', '1,0', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('705', '7', 'show_addtime', 'select', '1,0', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('706', '7', 'goodsattr_style', 'select', '1,0', '', '1', '1');
INSERT INTO `sw_shop_config` VALUES ('707', '7', 'show_marketprice', 'select', '1,0', '', '1', '1');
INSERT INTO `sw_shop_config` VALUES ('801', '8', 'sms_shop_mobile', 'text', '', '', '', '1');
INSERT INTO `sw_shop_config` VALUES ('802', '8', 'sms_order_placed', 'select', '1,0', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('803', '8', 'sms_order_payed', 'select', '1,0', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('804', '8', 'sms_order_shipped', 'select', '1,0', '', '0', '1');
INSERT INTO `sw_shop_config` VALUES ('901', '9', 'wap_config', 'select', '1,0', '', '1', '1');
INSERT INTO `sw_shop_config` VALUES ('902', '9', 'wap_logo', 'file', '', '../images/', '', '1');
INSERT INTO `sw_shop_config` VALUES ('903', '2', 'message_check', 'select', '1,0', '', '0', '1');

-- ----------------------------
-- Table structure for `sw_snatch_log`
-- ----------------------------
DROP TABLE IF EXISTS `sw_snatch_log`;
CREATE TABLE `sw_snatch_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `snatch_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bid_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `bid_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`),
  KEY `snatch_id` (`snatch_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_snatch_log
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_stats`
-- ----------------------------
DROP TABLE IF EXISTS `sw_stats`;
CREATE TABLE `sw_stats` (
  `access_time` int(10) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `visit_times` smallint(5) unsigned NOT NULL DEFAULT '1',
  `browser` varchar(60) NOT NULL DEFAULT '',
  `system` varchar(20) NOT NULL DEFAULT '',
  `language` varchar(20) NOT NULL DEFAULT '',
  `area` varchar(30) NOT NULL DEFAULT '',
  `referer_domain` varchar(100) NOT NULL DEFAULT '',
  `referer_path` varchar(200) NOT NULL DEFAULT '',
  `access_url` varchar(255) NOT NULL DEFAULT '',
  KEY `access_time` (`access_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_stats
-- ----------------------------
INSERT INTO `sw_stats` VALUES ('1396028127', '127.0.0.1', '3', 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'LAN', 'http://hostshop.com', '/dsdmall.com/mgr/index.php?act=top', '/dsdmall.com/index.php');
INSERT INTO `sw_stats` VALUES ('1396046898', '127.0.0.1', '31', 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'LAN', 'http://www.hostshop.com', '/', '/dsdmall.com/index.php');
INSERT INTO `sw_stats` VALUES ('1396055446', '127.0.0.1', '2', 'Internet Explorer 8.0', 'Windows XP', 'zh-cn', 'LAN', '', '', '/dsdmall.com/index.php');
INSERT INTO `sw_stats` VALUES ('1396112600', '127.0.0.1', '32', 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'LAN', '', '', '/dsdmall.com/index.php');
INSERT INTO `sw_stats` VALUES ('1396116327', '127.0.0.1', '3', 'Internet Explorer 8.0', 'Windows XP', 'zh-cn', 'LAN', '', '', '/dsdmall.com/index.php');
INSERT INTO `sw_stats` VALUES ('1397872310', '127.0.0.1', '1', 'Safari 537.1', 'Windows XP', 'zh-CN,zh', 'LAN', '', '', '/index.php');
INSERT INTO `sw_stats` VALUES ('1398626330', '127.0.0.1', '10', 'Safari 537.36', 'Windows NT', 'zh-CN,zh', 'LAN', '', '', '/index.php');
INSERT INTO `sw_stats` VALUES ('1398707330', '127.0.0.1', '61', 'Safari 537.36', 'Windows XP', 'zh-CN,zh', 'LAN', '', '', '/dsdmall.com/index.php');

-- ----------------------------
-- Table structure for `sw_suppliers`
-- ----------------------------
DROP TABLE IF EXISTS `sw_suppliers`;
CREATE TABLE `sw_suppliers` (
  `suppliers_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `suppliers_name` varchar(255) DEFAULT NULL,
  `suppliers_desc` mediumtext,
  `is_check` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`suppliers_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_suppliers
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_tag`
-- ----------------------------
DROP TABLE IF EXISTS `sw_tag`;
CREATE TABLE `sw_tag` (
  `tag_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `tag_words` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`tag_id`),
  KEY `user_id` (`user_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_tag
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_template`
-- ----------------------------
DROP TABLE IF EXISTS `sw_template`;
CREATE TABLE `sw_template` (
  `filename` varchar(30) NOT NULL DEFAULT '',
  `region` varchar(40) NOT NULL DEFAULT '',
  `library` varchar(40) NOT NULL DEFAULT '',
  `sort_order` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `number` tinyint(1) unsigned NOT NULL DEFAULT '5',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme` varchar(60) NOT NULL DEFAULT '',
  `remarks` varchar(30) NOT NULL DEFAULT '',
  KEY `filename` (`filename`,`region`),
  KEY `theme` (`theme`),
  KEY `remarks` (`remarks`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_template
-- ----------------------------
INSERT INTO `sw_template` VALUES ('index', 'banner右侧区域', '/library/ad_position.lbi', '1', '1', '1', '4', 'red_three', '');
INSERT INTO `sw_template` VALUES ('index', 'banner右侧区域', '/library/cat_articles.lbi', '0', '4', '6', '3', 'red_three', '');
INSERT INTO `sw_template` VALUES ('index', '全宽行', '/library/cat_goods.lbi', '5', '5', '3', '1', 'red_three', '');
INSERT INTO `sw_template` VALUES ('index', '全宽行', '/library/cat_goods.lbi', '4', '4', '3', '1', 'red_three', '');
INSERT INTO `sw_template` VALUES ('index', '全宽行', '/library/cat_goods.lbi', '3', '3', '3', '1', 'red_three', '');
INSERT INTO `sw_template` VALUES ('index', '全宽行', '/library/cat_goods.lbi', '2', '2', '3', '1', 'red_three', '');
INSERT INTO `sw_template` VALUES ('index', '全宽行', '/library/cat_goods.lbi', '1', '1', '3', '1', 'red_three', '');
INSERT INTO `sw_template` VALUES ('index', '', '/library/auction.lbi', '0', '0', '3', '0', 'red_three', '');
INSERT INTO `sw_template` VALUES ('index', '', '/library/brands.lbi', '0', '0', '3', '0', 'red_three', '');
INSERT INTO `sw_template` VALUES ('index', '', '/library/group_buy.lbi', '0', '0', '3', '0', 'red_three', '');
INSERT INTO `sw_template` VALUES ('index', '全宽行', '/library/recommend_promotion.lbi', '0', '0', '4', '0', 'red_three', '');
INSERT INTO `sw_template` VALUES ('index', 'banner下方区域', '/library/recommend_hot.lbi', '0', '0', '4', '0', 'red_three', '');
INSERT INTO `sw_template` VALUES ('index', '', '/library/recommend_new.lbi', '0', '0', '3', '0', 'red_three', '');
INSERT INTO `sw_template` VALUES ('index', '', '/library/recommend_best.lbi', '0', '0', '3', '0', 'red_three', '');

-- ----------------------------
-- Table structure for `sw_topic`
-- ----------------------------
DROP TABLE IF EXISTS `sw_topic`;
CREATE TABLE `sw_topic` (
  `topic_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '''''',
  `intro` text NOT NULL,
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(10) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `template` varchar(255) NOT NULL DEFAULT '''''',
  `css` text NOT NULL,
  `topic_img` varchar(255) DEFAULT NULL,
  `title_pic` varchar(255) DEFAULT NULL,
  `base_style` char(6) DEFAULT NULL,
  `htmls` mediumtext,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  KEY `topic_id` (`topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_topic
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_users`
-- ----------------------------
DROP TABLE IF EXISTS `sw_users`;
CREATE TABLE `sw_users` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(60) NOT NULL DEFAULT '',
  `user_name` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` varchar(255) NOT NULL DEFAULT '',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `birthday` date NOT NULL DEFAULT '0000-00-00',
  `user_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `frozen_money` decimal(10,2) NOT NULL DEFAULT '0.00',
  `pay_points` int(10) unsigned NOT NULL DEFAULT '0',
  `rank_points` int(10) unsigned NOT NULL DEFAULT '0',
  `address_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  `last_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_ip` varchar(15) NOT NULL DEFAULT '',
  `visit_count` smallint(5) unsigned NOT NULL DEFAULT '0',
  `user_rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `is_special` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ec_salt` varchar(10) DEFAULT NULL,
  `salt` varchar(10) NOT NULL DEFAULT '0',
  `parent_id` mediumint(9) NOT NULL DEFAULT '0',
  `flag` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `alias` varchar(60) NOT NULL,
  `msn` varchar(60) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `office_phone` varchar(20) NOT NULL,
  `home_phone` varchar(20) NOT NULL,
  `mobile_phone` varchar(20) NOT NULL,
  `is_validated` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `credit_line` decimal(10,2) unsigned NOT NULL,
  `passwd_question` varchar(50) DEFAULT NULL,
  `passwd_answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  KEY `email` (`email`),
  KEY `parent_id` (`parent_id`),
  KEY `flag` (`flag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_users
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_user_account`
-- ----------------------------
DROP TABLE IF EXISTS `sw_user_account`;
CREATE TABLE `sw_user_account` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `admin_user` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `add_time` int(10) NOT NULL DEFAULT '0',
  `paid_time` int(10) NOT NULL DEFAULT '0',
  `admin_note` varchar(255) NOT NULL,
  `user_note` varchar(255) NOT NULL,
  `process_type` tinyint(1) NOT NULL DEFAULT '0',
  `payment` varchar(90) NOT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `is_paid` (`is_paid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_user_account
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_user_address`
-- ----------------------------
DROP TABLE IF EXISTS `sw_user_address`;
CREATE TABLE `sw_user_address` (
  `address_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `address_name` varchar(50) NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `consignee` varchar(60) NOT NULL DEFAULT '',
  `email` varchar(60) NOT NULL DEFAULT '',
  `country` smallint(5) NOT NULL DEFAULT '0',
  `province` smallint(5) NOT NULL DEFAULT '0',
  `city` smallint(5) NOT NULL DEFAULT '0',
  `district` smallint(5) NOT NULL DEFAULT '0',
  `address` varchar(120) NOT NULL DEFAULT '',
  `zipcode` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(60) NOT NULL DEFAULT '',
  `mobile` varchar(60) NOT NULL DEFAULT '',
  `sign_building` varchar(120) NOT NULL DEFAULT '',
  `best_time` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`address_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_user_address
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_user_bonus`
-- ----------------------------
DROP TABLE IF EXISTS `sw_user_bonus`;
CREATE TABLE `sw_user_bonus` (
  `bonus_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `bonus_type_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `bonus_sn` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `used_time` int(10) unsigned NOT NULL DEFAULT '0',
  `order_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `emailed` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`bonus_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_user_bonus
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_user_feed`
-- ----------------------------
DROP TABLE IF EXISTS `sw_user_feed`;
CREATE TABLE `sw_user_feed` (
  `feed_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `value_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `feed_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_feed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`feed_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_user_feed
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_user_rank`
-- ----------------------------
DROP TABLE IF EXISTS `sw_user_rank`;
CREATE TABLE `sw_user_rank` (
  `rank_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `rank_name` varchar(30) NOT NULL DEFAULT '',
  `min_points` int(10) unsigned NOT NULL DEFAULT '0',
  `max_points` int(10) unsigned NOT NULL DEFAULT '0',
  `discount` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `show_price` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `special_rank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`rank_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_user_rank
-- ----------------------------
INSERT INTO `sw_user_rank` VALUES ('1', '注册用户', '0', '10000', '100', '1', '0');

-- ----------------------------
-- Table structure for `sw_virtual_card`
-- ----------------------------
DROP TABLE IF EXISTS `sw_virtual_card`;
CREATE TABLE `sw_virtual_card` (
  `card_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `card_sn` varchar(60) NOT NULL DEFAULT '',
  `card_password` varchar(60) NOT NULL DEFAULT '',
  `add_date` int(11) NOT NULL DEFAULT '0',
  `end_date` int(11) NOT NULL DEFAULT '0',
  `is_saled` tinyint(1) NOT NULL DEFAULT '0',
  `order_sn` varchar(20) NOT NULL DEFAULT '',
  `crc32` varchar(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`card_id`),
  KEY `goods_id` (`goods_id`),
  KEY `car_sn` (`card_sn`),
  KEY `is_saled` (`is_saled`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_virtual_card
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_volume_price`
-- ----------------------------
DROP TABLE IF EXISTS `sw_volume_price`;
CREATE TABLE `sw_volume_price` (
  `price_type` tinyint(1) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `volume_number` smallint(5) unsigned NOT NULL DEFAULT '0',
  `volume_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`price_type`,`goods_id`,`volume_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_volume_price
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_vote`
-- ----------------------------
DROP TABLE IF EXISTS `sw_vote`;
CREATE TABLE `sw_vote` (
  `vote_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `vote_name` varchar(250) NOT NULL DEFAULT '',
  `start_time` int(11) unsigned NOT NULL DEFAULT '0',
  `end_time` int(11) unsigned NOT NULL DEFAULT '0',
  `can_multi` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vote_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_vote
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_vote_log`
-- ----------------------------
DROP TABLE IF EXISTS `sw_vote_log`;
CREATE TABLE `sw_vote_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `vote_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ip_address` varchar(15) NOT NULL DEFAULT '',
  `vote_time` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`),
  KEY `vote_id` (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_vote_log
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_vote_option`
-- ----------------------------
DROP TABLE IF EXISTS `sw_vote_option`;
CREATE TABLE `sw_vote_option` (
  `option_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `vote_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `option_name` varchar(250) NOT NULL DEFAULT '',
  `option_count` int(8) unsigned NOT NULL DEFAULT '0',
  `option_order` tinyint(3) unsigned NOT NULL DEFAULT '100',
  PRIMARY KEY (`option_id`),
  KEY `vote_id` (`vote_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_vote_option
-- ----------------------------

-- ----------------------------
-- Table structure for `sw_wholesale`
-- ----------------------------
DROP TABLE IF EXISTS `sw_wholesale`;
CREATE TABLE `sw_wholesale` (
  `act_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `goods_name` varchar(255) NOT NULL,
  `rank_ids` varchar(255) NOT NULL,
  `prices` text NOT NULL,
  `enabled` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`act_id`),
  KEY `goods_id` (`goods_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sw_wholesale
-- ----------------------------
