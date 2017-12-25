/*
Navicat MySQL Data Transfer

Source Server         : syjfb_wp
Source Server Version : 50629
Source Host           : 101.132.109.44:3306
Source Database       : ccshop_website

Target Server Type    : MYSQL
Target Server Version : 50629
File Encoding         : 65001

Date: 2017-12-21 11:33:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cc_1_banner
-- ----------------------------
DROP TABLE IF EXISTS `cc_1_banner`;
CREATE TABLE `cc_1_banner` (
  `id` int(10) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) DEFAULT NULL COMMENT '主题',
  `thumb` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `description` text,
  `hits` mediumint(8) unsigned DEFAULT NULL COMMENT '浏览数',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者id',
  `author` varchar(50) NOT NULL COMMENT '作者名称',
  `status` tinyint(2) NOT NULL COMMENT '状态',
  `url` varchar(255) DEFAULT NULL COMMENT '地址',
  `tableid` smallint(5) unsigned NOT NULL COMMENT '附表id',
  `inputip` varchar(15) DEFAULT NULL COMMENT '录入者ip',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `comments` int(10) unsigned NOT NULL COMMENT '评论数量',
  `favorites` int(10) unsigned NOT NULL COMMENT '收藏数量',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `link` varchar(255) DEFAULT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `updatetime` (`updatetime`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模型主表';

-- ----------------------------
-- Records of cc_1_banner
-- ----------------------------
INSERT INTO `cc_1_banner` VALUES ('127', '27', 'homebanner', '1', '', '', '0', '1', 'admin', '9', '/index.php?c=show&id=127', '0', '::1', '1505982857', '1505982914', '0', '0', '0', '#');
INSERT INTO `cc_1_banner` VALUES ('128', '28', 'shopbanner', '2', '', '', '0', '1', 'admin', '9', '/index.php?c=show&id=128', '0', '::1', '1505982884', '1505982884', '0', '0', '0', '#');
INSERT INTO `cc_1_banner` VALUES ('129', '29', 'newsbanner', '3', '', '', '0', '1', 'admin', '9', '/index.php?c=show&id=129', '0', '::1', '1505982899', '1505982899', '0', '0', '0', '#');
INSERT INTO `cc_1_banner` VALUES ('130', '30', 'businessbanner', '4', '', '', '0', '1', 'admin', '9', '/index.php?c=show&id=130', '0', '::1', '1505982920', '1505982920', '0', '0', '0', '#');
INSERT INTO `cc_1_banner` VALUES ('131', '31', 'contactbanner', '5', '', '', '0', '1', 'admin', '9', '/index.php?c=show&id=131', '0', '::1', '1505982953', '1505982953', '0', '0', '0', '#');

-- ----------------------------
-- Table structure for cc_1_banner_data_0
-- ----------------------------
DROP TABLE IF EXISTS `cc_1_banner_data_0`;
CREATE TABLE `cc_1_banner_data_0` (
  `id` int(10) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext COMMENT '内容',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模型附表';

-- ----------------------------
-- Records of cc_1_banner_data_0
-- ----------------------------
INSERT INTO `cc_1_banner_data_0` VALUES ('127', '1', '27', null);
INSERT INTO `cc_1_banner_data_0` VALUES ('128', '1', '28', null);
INSERT INTO `cc_1_banner_data_0` VALUES ('129', '1', '29', null);
INSERT INTO `cc_1_banner_data_0` VALUES ('130', '1', '30', null);
INSERT INTO `cc_1_banner_data_0` VALUES ('131', '1', '31', null);

-- ----------------------------
-- Table structure for cc_1_block
-- ----------------------------
DROP TABLE IF EXISTS `cc_1_block`;
CREATE TABLE `cc_1_block` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '资料块名称',
  `content` text NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='资料块表';

-- ----------------------------
-- Records of cc_1_block
-- ----------------------------

-- ----------------------------
-- Table structure for cc_1_category
-- ----------------------------
DROP TABLE IF EXISTS `cc_1_category`;
CREATE TABLE `cc_1_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `tid` tinyint(1) NOT NULL COMMENT '栏目类型，0单页，1模块，2外链',
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `mid` varchar(20) NOT NULL COMMENT '模块目录',
  `pids` varchar(255) NOT NULL COMMENT '所有上级id',
  `name` varchar(30) NOT NULL COMMENT '栏目名称',
  `domain` varchar(50) NOT NULL COMMENT '绑定域名',
  `letter` char(1) NOT NULL COMMENT '首字母',
  `dirname` varchar(30) NOT NULL COMMENT '栏目目录',
  `pdirname` varchar(100) NOT NULL COMMENT '上级目录',
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否有下级',
  `childids` text NOT NULL COMMENT '下级所有id',
  `pcatpost` tinyint(1) NOT NULL COMMENT '是否父栏目发布',
  `thumb` varchar(255) NOT NULL COMMENT '栏目图片',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示',
  `content` mediumtext NOT NULL COMMENT '单页内容',
  `permission` text COMMENT '会员权限',
  `setting` text NOT NULL COMMENT '属性配置',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `tid` (`tid`),
  KEY `show` (`show`),
  KEY `dirname` (`dirname`),
  KEY `module` (`pid`,`displayorder`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='栏目表';

-- ----------------------------
-- Records of cc_1_category
-- ----------------------------
INSERT INTO `cc_1_category` VALUES ('22', '0', '0', '', '0', '平台首页', '', 'i', 'indexpage', '', '1', '22,27', '0', '', '0', '', '', '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"show\":\"show.html\",\"category\":\"category.html\",\"list\":\"list.html\",\"search\":\"search.html\",\"page\":\"index.html\"},\"admin\":[],\"member\":[],\"html\":0,\"getchild\":0}', '0');
INSERT INTO `cc_1_category` VALUES ('23', '0', '0', '', '0', 'CC商城', '', '', 'shoppage', '', '1', '23,28', '0', '', '1', '', null, '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"show\":\"show.html\",\"category\":\"category.html\",\"list\":\"list.html\",\"search\":\"search.html\",\"page\":\"shop.html\"}}', '0');
INSERT INTO `cc_1_category` VALUES ('24', '0', '0', '', '0', '新闻中心', '', '', 'newspage', '', '1', '24,29,32', '0', '', '1', '', null, '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"show\":\"show.html\",\"category\":\"category.html\",\"list\":\"list.html\",\"search\":\"search.html\",\"page\":\"news.html\"}}', '0');
INSERT INTO `cc_1_category` VALUES ('25', '0', '0', '', '0', '招商合作', '', '', 'businesspage', '', '1', '25,30', '0', '', '1', '', null, '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"show\":\"show.html\",\"category\":\"category.html\",\"list\":\"list.html\",\"search\":\"search.html\",\"page\":\"business.html\"}}', '0');
INSERT INTO `cc_1_category` VALUES ('26', '0', '0', '', '0', '联系我们', '', '', 'contactpage', '', '1', '26,31', '0', '', '1', '', null, '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"show\":\"show.html\",\"category\":\"category.html\",\"list\":\"list.html\",\"search\":\"search.html\",\"page\":\"contact.html\"}}', '0');
INSERT INTO `cc_1_category` VALUES ('27', '1', '22', 'banner', '0,22', '首页轮播图', '', '', 'bannerindex', 'indexpage/', '0', '27', '0', '', '1', '', null, '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"show\":\"show.html\",\"category\":\"category.html\",\"list\":\"list.html\",\"search\":\"search.html\",\"page\":\"index.html\"}}', '0');
INSERT INTO `cc_1_category` VALUES ('28', '1', '23', 'banner', '0,23', 'CC商城轮播图', '', '', 'bannershop', 'shoppage/', '0', '28', '0', '', '1', '', null, '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"show\":\"show.html\",\"category\":\"category.html\",\"list\":\"list.html\",\"search\":\"search.html\",\"page\":\"shop.html\"}}', '0');
INSERT INTO `cc_1_category` VALUES ('29', '1', '24', 'banner', '0,24', '新闻轮播图', '', '', 'bannernews', 'newspage/', '0', '29', '0', '', '1', '', null, '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"show\":\"show.html\",\"category\":\"category.html\",\"list\":\"list.html\",\"search\":\"search.html\",\"page\":\"news.html\"}}', '0');
INSERT INTO `cc_1_category` VALUES ('30', '1', '25', 'banner', '0,25', '招商轮播图', '', 'b', 'bannerbusiness', 'businesspage/', '0', '30', '0', '', '1', '', '', '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"show\":\"show.html\",\"category\":\"category.html\",\"list\":\"list.html\",\"search\":\"search.html\",\"page\":\"business.html\"},\"admin\":[],\"member\":[],\"html\":0,\"getchild\":0}', '0');
INSERT INTO `cc_1_category` VALUES ('31', '1', '26', 'banner', '0,26', '联系我们轮播图', '', '', 'bannercontact', 'contactpage/', '0', '31', '0', '', '1', '', null, '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"show\":\"show.html\",\"category\":\"category.html\",\"list\":\"list.html\",\"search\":\"search.html\",\"page\":\"contact.html\"}}', '0');
INSERT INTO `cc_1_category` VALUES ('32', '1', '24', 'news', '0,24', '新闻文章', '', '', 'news', 'newspage/', '0', '32', '0', '', '1', '', null, '{\"edit\":\"0\",\"linkurl\":\"\",\"urlrule\":\"0\",\"seo\":{\"show_title\":\"[\\u7b2c{page}\\u9875{join}]{title}{join}{catname}{join}{SITE_NAME}\",\"list_title\":\"[\\u7b2c{page}\\u9875{join}]{name}{join}{SITE_NAME}\",\"list_keywords\":\"\",\"list_description\":\"\"},\"template\":{\"pagesize\":\"20\",\"show\":\"news_detail.html\",\"category\":\"category.html\",\"list\":\"list.html\",\"search\":\"search.html\",\"page\":\"news.html\"}}', '0');

-- ----------------------------
-- Table structure for cc_1_form
-- ----------------------------
DROP TABLE IF EXISTS `cc_1_form`;
CREATE TABLE `cc_1_form` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '名称',
  `table` varchar(50) NOT NULL COMMENT '表名',
  `setting` text COMMENT '配置信息',
  PRIMARY KEY (`id`),
  UNIQUE KEY `table` (`table`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='表单模型表';

-- ----------------------------
-- Records of cc_1_form
-- ----------------------------
INSERT INTO `cc_1_form` VALUES ('1', '留言', 'liuyan', '{\"post\":\"1\",\"code\":\"1\",\"send\":\"\",\"template\":\"\",\"rt_url\":\"\"}');

-- ----------------------------
-- Table structure for cc_1_form_liuyan
-- ----------------------------
DROP TABLE IF EXISTS `cc_1_form_liuyan`;
CREATE TABLE `cc_1_form_liuyan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '主题',
  `uid` int(10) unsigned DEFAULT '0' COMMENT '录入者uid',
  `author` varchar(100) DEFAULT NULL COMMENT '录入者账号',
  `inputip` varchar(30) DEFAULT NULL COMMENT '录入者ip',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0' COMMENT '排序值',
  `tableid` smallint(5) unsigned NOT NULL COMMENT '附表id',
  `neirong` mediumtext,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `inputtime` (`inputtime`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='留言表单表';

-- ----------------------------
-- Records of cc_1_form_liuyan
-- ----------------------------

-- ----------------------------
-- Table structure for cc_1_form_liuyan_data_0
-- ----------------------------
DROP TABLE IF EXISTS `cc_1_form_liuyan_data_0`;
CREATE TABLE `cc_1_form_liuyan_data_0` (
  `id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned DEFAULT '0' COMMENT '录入者uid',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='留言表单附表';

-- ----------------------------
-- Records of cc_1_form_liuyan_data_0
-- ----------------------------

-- ----------------------------
-- Table structure for cc_1_index
-- ----------------------------
DROP TABLE IF EXISTS `cc_1_index`;
CREATE TABLE `cc_1_index` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `mid` varchar(20) NOT NULL COMMENT '模块目录',
  `catid` tinyint(3) unsigned NOT NULL COMMENT '栏目id',
  `status` tinyint(2) NOT NULL COMMENT '审核状态',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`)
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 COMMENT='内容索引表';

-- ----------------------------
-- Records of cc_1_index
-- ----------------------------
INSERT INTO `cc_1_index` VALUES ('127', '1', 'banner', '27', '9', '1505982857');
INSERT INTO `cc_1_index` VALUES ('128', '1', 'banner', '28', '9', '1505982884');
INSERT INTO `cc_1_index` VALUES ('129', '1', 'banner', '29', '9', '1505982899');
INSERT INTO `cc_1_index` VALUES ('130', '1', 'banner', '30', '9', '1505982920');
INSERT INTO `cc_1_index` VALUES ('131', '1', 'banner', '31', '9', '1505982953');
INSERT INTO `cc_1_index` VALUES ('132', '1', 'news', '32', '9', '1505983931');

-- ----------------------------
-- Table structure for cc_1_news
-- ----------------------------
DROP TABLE IF EXISTS `cc_1_news`;
CREATE TABLE `cc_1_news` (
  `id` int(10) unsigned NOT NULL,
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `title` varchar(255) DEFAULT NULL COMMENT '主题',
  `thumb` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `description` text,
  `hits` mediumint(8) unsigned DEFAULT NULL COMMENT '浏览数',
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者id',
  `author` varchar(50) NOT NULL COMMENT '作者名称',
  `status` tinyint(2) NOT NULL COMMENT '状态',
  `url` varchar(255) DEFAULT NULL COMMENT '地址',
  `tableid` smallint(5) unsigned NOT NULL COMMENT '附表id',
  `inputip` varchar(15) DEFAULT NULL COMMENT '录入者ip',
  `inputtime` int(10) unsigned NOT NULL COMMENT '录入时间',
  `updatetime` int(10) unsigned NOT NULL COMMENT '更新时间',
  `comments` int(10) unsigned NOT NULL COMMENT '评论数量',
  `favorites` int(10) unsigned NOT NULL COMMENT '收藏数量',
  `displayorder` tinyint(3) NOT NULL DEFAULT '0',
  `readnum` int(11) DEFAULT '0',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`),
  KEY `status` (`status`),
  KEY `inputtime` (`inputtime`),
  KEY `updatetime` (`updatetime`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模型主表';

-- ----------------------------
-- Records of cc_1_news
-- ----------------------------
INSERT INTO `cc_1_news` VALUES ('132', '32', 'Phanteks Enthoo Evolv Shift X 评测', '6', '新闻,机箱', 'Phanteks的立式机箱Shift已经评测完成,那么紧接着就是它的大哥 Shift X的评测.与Shift相比,外观上仅有高度不同,设计思路相类似的Shift X究竟会有怎么样的变化呢?我们看看“大哥”的表现. Shift X为了塞下360冷排', '0', '1', 'admin', '9', '/index.php?c=show&id=132', '0', '::1', '1505983931', '1505984288', '0', '0', '0', '1234');

-- ----------------------------
-- Table structure for cc_1_news_data_0
-- ----------------------------
DROP TABLE IF EXISTS `cc_1_news_data_0`;
CREATE TABLE `cc_1_news_data_0` (
  `id` int(10) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '作者uid',
  `catid` smallint(5) unsigned NOT NULL COMMENT '栏目id',
  `content` mediumtext COMMENT '内容',
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='模型附表';

-- ----------------------------
-- Records of cc_1_news_data_0
-- ----------------------------
INSERT INTO `cc_1_news_data_0` VALUES ('132', '1', '32', '<div class=\"vm_pagetitle xw1\" style=\"word-wrap: break-word; font-weight: 700; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\">装机解析</div><div style=\"word-wrap: break-word; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\">和SHIFT一样,厂商送测机箱后又送来了安装完成的整机,装机解析主要以整机来进行.</div><div style=\"word-wrap: break-word; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; 显卡: ASUS ROG STRIX-GTX1080TI-O11G-GAMING</div><div style=\"word-wrap: break-word; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; 主板: ASUS ROG STRIX Z270I GAMING</div><div style=\"word-wrap: break-word; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; 电源: LIAN LI PE-550</div><div style=\"word-wrap: break-word; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; 显卡冷头：Phanteks LACIER G1080 ASUS STRIX(PH-GB1080TIAS_X)</div><div style=\"word-wrap: break-word; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; CPU冷头：Phanteks GLACIER C350I(PH-C350I_X）</div><div style=\"word-wrap: break-word; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp; &nbsp; 冷排风扇：F140MP_BK</div><div style=\"word-wrap: break-word; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\">&nbsp;</div><div style=\"word-wrap: break-word; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\">机箱增大的大部分空间都留给了水冷部分.</div><div style=\"word-wrap: break-word; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\"><p style=\"word-wrap: break-word; margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><a href=\"https://www.chiphell.com/data/attachment/portal/201709/20/165002ap8hpa0ep0f808t6.jpeg\" target=\"_blank\" style=\"word-wrap: break-word; color: rgb(51, 51, 51); text-decoration-line: none;\"><img src=\"https://www.chiphell.com/data/attachment/portal/201709/20/165002ap8hpa0ep0f808t6.jpeg\" style=\"word-wrap: break-word; max-width: 980px; width: auto; height: auto; border: none;\"/></a></p></div><div style=\"word-wrap: break-word; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\">CPU散热器的限高为82mm,大部分塔式散热器就被排除在外了,这里使用的是分体水冷.&nbsp;</div><div style=\"word-wrap: break-word; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\"><p style=\"word-wrap: break-word; margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><a href=\"https://www.chiphell.com/data/attachment/portal/201709/20/165002qvv5tll9tvzvtc8b.jpeg\" target=\"_blank\" style=\"word-wrap: break-word; color: rgb(51, 51, 51); text-decoration-line: none;\"><img src=\"https://www.chiphell.com/data/attachment/portal/201709/20/165002qvv5tll9tvzvtc8b.jpeg\" style=\"word-wrap: break-word; max-width: 980px; width: auto; height: auto; border: none;\"/></a></p></div><div style=\"word-wrap: break-word; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\">这套水冷使用大量90°和45°水管接头,没有弯折水管.</div><div style=\"word-wrap: break-word; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\"><p style=\"word-wrap: break-word; margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><a href=\"https://www.chiphell.com/data/attachment/portal/201709/20/165003uix56i72uc66urx2.jpeg\" target=\"_blank\" style=\"word-wrap: break-word; color: rgb(51, 51, 51); text-decoration-line: none;\"><img src=\"https://www.chiphell.com/data/attachment/portal/201709/20/165003uix56i72uc66urx2.jpeg\" style=\"word-wrap: break-word; max-width: 980px; width: auto; height: auto; border: none;\"/></a></p></div><div style=\"word-wrap: break-word; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\">水管接头印有Phanteks的LOGO.</div><div style=\"word-wrap: break-word; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\"><p style=\"word-wrap: break-word; margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><a href=\"https://www.chiphell.com/data/attachment/portal/201709/20/165003hqyayqx7jxy7zjja.jpeg\" target=\"_blank\" style=\"word-wrap: break-word; color: rgb(51, 51, 51); text-decoration-line: none;\"><img src=\"https://www.chiphell.com/data/attachment/portal/201709/20/165003hqyayqx7jxy7zjja.jpeg\" style=\"word-wrap: break-word; max-width: 980px; width: auto; height: auto; border: none;\"/></a></p></div><div style=\"word-wrap: break-word; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\">冷排安装在底部靠前的风扇位,安装两枚140mm风扇.</div><div style=\"word-wrap: break-word; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\"><p style=\"word-wrap: break-word; margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><a href=\"https://www.chiphell.com/data/attachment/portal/201709/20/165003jdlwbpdgy6umwab1.jpeg\" target=\"_blank\" style=\"word-wrap: break-word; color: rgb(51, 51, 51); text-decoration-line: none;\"><img src=\"https://www.chiphell.com/data/attachment/portal/201709/20/165003jdlwbpdgy6umwab1.jpeg\" style=\"word-wrap: break-word; max-width: 980px; width: auto; height: auto; border: none;\"/></a></p></div><div style=\"word-wrap: break-word; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\">安装金士顿的骇客神条8G x2无压力</div><div style=\"word-wrap: break-word; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\"><p style=\"word-wrap: break-word; margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><a href=\"https://www.chiphell.com/data/attachment/portal/201709/20/165003xzci0aviv1bllvi6.jpeg\" target=\"_blank\" style=\"word-wrap: break-word; color: rgb(51, 51, 51); text-decoration-line: none;\"><img src=\"https://www.chiphell.com/data/attachment/portal/201709/20/165003xzci0aviv1bllvi6.jpeg\" style=\"word-wrap: break-word; max-width: 980px; width: auto; height: auto; border: none;\"/></a></p></div><div style=\"word-wrap: break-word; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\">来看背面.</div><div style=\"word-wrap: break-word; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\"><p style=\"word-wrap: break-word; margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><a href=\"https://www.chiphell.com/data/attachment/portal/201709/20/165004dy7iitawiu7rtcau.jpeg\" target=\"_blank\" style=\"word-wrap: break-word; color: rgb(51, 51, 51); text-decoration-line: none;\"><img src=\"https://www.chiphell.com/data/attachment/portal/201709/20/165004dy7iitawiu7rtcau.jpeg\" style=\"word-wrap: break-word; max-width: 980px; width: auto; height: auto; border: none;\"/></a></p></div><div style=\"word-wrap: break-word; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\">显卡冷头,除了水道的表面为镜面.&nbsp;</div><div style=\"word-wrap: break-word; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\"><p style=\"word-wrap: break-word; margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><a href=\"https://www.chiphell.com/data/attachment/portal/201709/20/165004dne3io4m5fm9niv2.jpeg\" target=\"_blank\" style=\"word-wrap: break-word; color: rgb(51, 51, 51); text-decoration-line: none;\"><img src=\"https://www.chiphell.com/data/attachment/portal/201709/20/165004dne3io4m5fm9niv2.jpeg\" style=\"word-wrap: break-word; max-width: 980px; width: auto; height: auto; border: none;\"/></a></p></div><div style=\"word-wrap: break-word; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\">右上角Phanteks的LOGO.</div><div style=\"word-wrap: break-word; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\"><p style=\"word-wrap: break-word; margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><a href=\"https://www.chiphell.com/data/attachment/portal/201709/20/165004so8u0durdordh0q0.jpeg\" target=\"_blank\" style=\"word-wrap: break-word; color: rgb(51, 51, 51); text-decoration-line: none;\"><img src=\"https://www.chiphell.com/data/attachment/portal/201709/20/165004so8u0durdordh0q0.jpeg\" style=\"word-wrap: break-word; max-width: 980px; width: auto; height: auto; border: none;\"/></a></p></div><div style=\"word-wrap: break-word; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\">左下角STRIX的LOGO.</div><div style=\"word-wrap: break-word; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\"><p style=\"word-wrap: break-word; margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><a href=\"https://www.chiphell.com/data/attachment/portal/201709/20/165004nqnnpin91hjnlenp.jpeg\" target=\"_blank\" style=\"word-wrap: break-word; color: rgb(51, 51, 51); text-decoration-line: none;\"><img src=\"https://www.chiphell.com/data/attachment/portal/201709/20/165004nqnnpin91hjnlenp.jpeg\" style=\"word-wrap: break-word; max-width: 980px; width: auto; height: auto; border: none;\"/></a></p></div><div style=\"word-wrap: break-word; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\">堵头上也有LOGO.</div><div style=\"word-wrap: break-word; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\"><p style=\"word-wrap: break-word; margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><a href=\"https://www.chiphell.com/data/attachment/portal/201709/20/165005xz6v18vczvmvhchc.jpeg\" target=\"_blank\" style=\"word-wrap: break-word; color: rgb(51, 51, 51); text-decoration-line: none;\"><img src=\"https://www.chiphell.com/data/attachment/portal/201709/20/165005xz6v18vczvmvhchc.jpeg\" style=\"word-wrap: break-word; max-width: 980px; width: auto; height: auto; border: none;\"/></a></p></div><div style=\"word-wrap: break-word; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\">电源为LIAN LI的PE-550,半埋入电源罩.</div><div style=\"word-wrap: break-word; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\"><p style=\"word-wrap: break-word; margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><a href=\"https://www.chiphell.com/data/attachment/portal/201709/20/165005dsjufwn12onmuuw9.jpeg\" target=\"_blank\" style=\"word-wrap: break-word; color: rgb(51, 51, 51); text-decoration-line: none;\"><img src=\"https://www.chiphell.com/data/attachment/portal/201709/20/165005dsjufwn12onmuuw9.jpeg\" style=\"word-wrap: break-word; max-width: 980px; width: auto; height: auto; border: none;\"/></a></p></div><div style=\"word-wrap: break-word; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\">最后我们来看顶部,同样找来一根DP线和一根USB线,穿过后面的束线孔.</div><div style=\"word-wrap: break-word; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\"><p style=\"word-wrap: break-word; margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><a href=\"https://www.chiphell.com/data/attachment/portal/201709/20/165005zn7abgb7x5axtxlt.jpeg\" target=\"_blank\" style=\"word-wrap: break-word; color: rgb(51, 51, 51); text-decoration-line: none;\"><img src=\"https://www.chiphell.com/data/attachment/portal/201709/20/165005zn7abgb7x5axtxlt.jpeg\" style=\"word-wrap: break-word; max-width: 980px; width: auto; height: auto; border: none;\"/></a></p></div><div style=\"word-wrap: break-word; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\">盖上栅格后,线材有明显的弯折,顶住了栅格,不过完全可以接受.</div><div style=\"word-wrap: break-word; font-family: 微软雅黑, Tahoma, &quot;Microsoft Yahei&quot;, Simsun; white-space: normal; background-color: rgb(255, 255, 255);\"><p style=\"word-wrap: break-word; margin-top: 0px; margin-bottom: 0px; padding: 0px;\"><a href=\"https://www.chiphell.com/data/attachment/portal/201709/20/165005wwyljll8xllxsddw.jpeg\" target=\"_blank\" style=\"word-wrap: break-word; color: rgb(51, 51, 51); text-decoration-line: none;\"><img src=\"https://www.chiphell.com/data/attachment/portal/201709/20/165005wwyljll8xllxsddw.jpeg\" style=\"word-wrap: break-word; max-width: 980px; width: auto; height: auto; border: none;\"/></a></p></div><p><br/></p>');

-- ----------------------------
-- Table structure for cc_1_tag
-- ----------------------------
DROP TABLE IF EXISTS `cc_1_tag`;
CREATE TABLE `cc_1_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) DEFAULT '0' COMMENT '父级id',
  `name` varchar(200) NOT NULL COMMENT '关键词名称',
  `code` varchar(200) NOT NULL COMMENT '关键词代码（拼音）',
  `pcode` varchar(255) DEFAULT NULL,
  `hits` mediumint(8) unsigned NOT NULL COMMENT '点击量',
  `url` varchar(255) DEFAULT NULL COMMENT '关键词url',
  `childids` varchar(255) NOT NULL COMMENT '子类集合',
  `content` text NOT NULL COMMENT '关键词描述',
  `total` int(10) NOT NULL COMMENT '点击数量',
  `displayorder` int(10) NOT NULL COMMENT '排序值',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `letter` (`code`,`hits`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='关键词库表';

-- ----------------------------
-- Records of cc_1_tag
-- ----------------------------
INSERT INTO `cc_1_tag` VALUES ('1', '0', '标签测试', 'test', null, '18', '', '', '1', '0', '0');
INSERT INTO `cc_1_tag` VALUES ('2', '0', '中国', 'zhongguo', '', '0', '', '', '', '0', '0');

-- ----------------------------
-- Table structure for cc_1_weixin
-- ----------------------------
DROP TABLE IF EXISTS `cc_1_weixin`;
CREATE TABLE `cc_1_weixin` (
  `name` varchar(50) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信属性参数表';

-- ----------------------------
-- Records of cc_1_weixin
-- ----------------------------

-- ----------------------------
-- Table structure for cc_1_weixin_follow
-- ----------------------------
DROP TABLE IF EXISTS `cc_1_weixin_follow`;
CREATE TABLE `cc_1_weixin_follow` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `openid` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `uid` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `status` (`status`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信粉丝同步表';

-- ----------------------------
-- Records of cc_1_weixin_follow
-- ----------------------------

-- ----------------------------
-- Table structure for cc_1_weixin_menu
-- ----------------------------
DROP TABLE IF EXISTS `cc_1_weixin_menu`;
CREATE TABLE `cc_1_weixin_menu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pid` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `value` text NOT NULL,
  `displayorder` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信菜单表';

-- ----------------------------
-- Records of cc_1_weixin_menu
-- ----------------------------

-- ----------------------------
-- Table structure for cc_1_weixin_user
-- ----------------------------
DROP TABLE IF EXISTS `cc_1_weixin_user`;
CREATE TABLE `cc_1_weixin_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) unsigned DEFAULT NULL COMMENT '会员id',
  `username` varchar(100) NOT NULL,
  `groupid` int(10) NOT NULL,
  `openid` varchar(50) NOT NULL COMMENT '唯一id',
  `nickname` text NOT NULL COMMENT '微信昵称',
  `sex` tinyint(1) unsigned DEFAULT NULL COMMENT '性别',
  `city` varchar(30) DEFAULT NULL COMMENT '城市',
  `country` varchar(30) DEFAULT NULL COMMENT '国家',
  `province` varchar(30) DEFAULT NULL COMMENT '省',
  `language` varchar(30) DEFAULT NULL COMMENT '语言',
  `headimgurl` varchar(255) DEFAULT NULL COMMENT '头像地址',
  `subscribe_time` int(10) unsigned NOT NULL COMMENT '关注时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `subscribe_time` (`subscribe_time`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信粉丝表';

-- ----------------------------
-- Records of cc_1_weixin_user
-- ----------------------------

-- ----------------------------
-- Table structure for cc_admin
-- ----------------------------
DROP TABLE IF EXISTS `cc_admin`;
CREATE TABLE `cc_admin` (
  `uid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `realname` varchar(50) DEFAULT NULL COMMENT '管理员姓名',
  `usermenu` text COMMENT '自定义面板菜单，序列化数组格式',
  `color` text COMMENT '定制权限',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of cc_admin
-- ----------------------------
INSERT INTO `cc_admin` VALUES ('1', '网站创始人', '', 'blue');

-- ----------------------------
-- Table structure for cc_attachment
-- ----------------------------
DROP TABLE IF EXISTS `cc_attachment`;
CREATE TABLE `cc_attachment` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `siteid` tinyint(3) unsigned NOT NULL COMMENT '站点id',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `tableid` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '附件副表id',
  `download` mediumint(8) NOT NULL DEFAULT '0' COMMENT '下载次数',
  `filesize` int(10) unsigned NOT NULL COMMENT '文件大小',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filemd5` varchar(50) NOT NULL COMMENT '文件md5值',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `author` (`author`),
  KEY `relatedtid` (`related`),
  KEY `fileext` (`fileext`),
  KEY `filemd5` (`filemd5`),
  KEY `siteid` (`siteid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='附件表';

-- ----------------------------
-- Records of cc_attachment
-- ----------------------------
INSERT INTO `cc_attachment` VALUES ('1', '1', 'admin', '1', '', '1', '0', '98959', 'jpg', 'b7acbddd08cd20240114237f6d6ab379');
INSERT INTO `cc_attachment` VALUES ('2', '1', 'admin', '1', '', '1', '0', '98959', 'jpg', 'b7acbddd08cd20240114237f6d6ab379');
INSERT INTO `cc_attachment` VALUES ('3', '1', 'admin', '1', '', '1', '0', '98959', 'jpg', 'b7acbddd08cd20240114237f6d6ab379');
INSERT INTO `cc_attachment` VALUES ('4', '1', 'admin', '1', '', '1', '0', '98959', 'jpg', 'b7acbddd08cd20240114237f6d6ab379');
INSERT INTO `cc_attachment` VALUES ('5', '1', 'admin', '1', '', '1', '0', '98959', 'jpg', 'b7acbddd08cd20240114237f6d6ab379');
INSERT INTO `cc_attachment` VALUES ('6', '1', 'admin', '1', '', '1', '0', '77394', 'jpg', '7ad69ce420d7321f2bf8fe9543c9cb15');

-- ----------------------------
-- Table structure for cc_attachment_0
-- ----------------------------
DROP TABLE IF EXISTS `cc_attachment_0`;
CREATE TABLE `cc_attachment_0` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '远程附件id',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表0';

-- ----------------------------
-- Records of cc_attachment_0
-- ----------------------------

-- ----------------------------
-- Table structure for cc_attachment_1
-- ----------------------------
DROP TABLE IF EXISTS `cc_attachment_1`;
CREATE TABLE `cc_attachment_1` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '远程附件id',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表1';

-- ----------------------------
-- Records of cc_attachment_1
-- ----------------------------
INSERT INTO `cc_attachment_1` VALUES ('1', '1', 'admin', '', 'banner', 'jpg', '98959', '201709/b441303143.jpg', '0', '', '1505982869');
INSERT INTO `cc_attachment_1` VALUES ('2', '1', 'admin', '', 'banner', 'jpg', '98959', '201709/65daa364a5.jpg', '0', '', '1505982888');
INSERT INTO `cc_attachment_1` VALUES ('3', '1', 'admin', '', 'banner', 'jpg', '98959', '201709/eeb00400b5.jpg', '0', '', '1505982903');
INSERT INTO `cc_attachment_1` VALUES ('4', '1', 'admin', '', 'banner', 'jpg', '98959', '201709/b9d9aaaaa5.jpg', '0', '', '1505982945');
INSERT INTO `cc_attachment_1` VALUES ('5', '1', 'admin', '', 'banner', 'jpg', '98959', '201709/1a6c21aaf7.jpg', '0', '', '1505982956');
INSERT INTO `cc_attachment_1` VALUES ('6', '1', 'admin', '', 'shop_img_2', 'jpg', '77394', '201709/296f5b29a5.jpg', '0', '', '1505983978');

-- ----------------------------
-- Table structure for cc_attachment_2
-- ----------------------------
DROP TABLE IF EXISTS `cc_attachment_2`;
CREATE TABLE `cc_attachment_2` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '远程附件id',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表2';

-- ----------------------------
-- Records of cc_attachment_2
-- ----------------------------

-- ----------------------------
-- Table structure for cc_attachment_3
-- ----------------------------
DROP TABLE IF EXISTS `cc_attachment_3`;
CREATE TABLE `cc_attachment_3` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '远程附件id',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表3';

-- ----------------------------
-- Records of cc_attachment_3
-- ----------------------------

-- ----------------------------
-- Table structure for cc_attachment_4
-- ----------------------------
DROP TABLE IF EXISTS `cc_attachment_4`;
CREATE TABLE `cc_attachment_4` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '远程附件id',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表4';

-- ----------------------------
-- Records of cc_attachment_4
-- ----------------------------

-- ----------------------------
-- Table structure for cc_attachment_5
-- ----------------------------
DROP TABLE IF EXISTS `cc_attachment_5`;
CREATE TABLE `cc_attachment_5` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '远程附件id',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表5';

-- ----------------------------
-- Records of cc_attachment_5
-- ----------------------------

-- ----------------------------
-- Table structure for cc_attachment_6
-- ----------------------------
DROP TABLE IF EXISTS `cc_attachment_6`;
CREATE TABLE `cc_attachment_6` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '远程附件id',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表6';

-- ----------------------------
-- Records of cc_attachment_6
-- ----------------------------

-- ----------------------------
-- Table structure for cc_attachment_7
-- ----------------------------
DROP TABLE IF EXISTS `cc_attachment_7`;
CREATE TABLE `cc_attachment_7` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '远程附件id',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表7';

-- ----------------------------
-- Records of cc_attachment_7
-- ----------------------------

-- ----------------------------
-- Table structure for cc_attachment_8
-- ----------------------------
DROP TABLE IF EXISTS `cc_attachment_8`;
CREATE TABLE `cc_attachment_8` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '远程附件id',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表8';

-- ----------------------------
-- Records of cc_attachment_8
-- ----------------------------

-- ----------------------------
-- Table structure for cc_attachment_9
-- ----------------------------
DROP TABLE IF EXISTS `cc_attachment_9`;
CREATE TABLE `cc_attachment_9` (
  `id` mediumint(8) unsigned NOT NULL COMMENT '附件id',
  `uid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `author` varchar(50) NOT NULL COMMENT '会员',
  `related` varchar(50) NOT NULL COMMENT '相关表标识',
  `filename` varchar(255) NOT NULL DEFAULT '' COMMENT '原文件名',
  `fileext` varchar(20) NOT NULL COMMENT '文件扩展名',
  `filesize` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文件大小',
  `attachment` varchar(255) NOT NULL DEFAULT '' COMMENT '服务器路径',
  `remote` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '远程附件id',
  `attachinfo` text NOT NULL COMMENT '附件信息',
  `inputtime` int(10) unsigned NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='附件表9';

-- ----------------------------
-- Records of cc_attachment_9
-- ----------------------------

-- ----------------------------
-- Table structure for cc_field
-- ----------------------------
DROP TABLE IF EXISTS `cc_field`;
CREATE TABLE `cc_field` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL COMMENT '字段别名语言',
  `fieldname` varchar(50) NOT NULL COMMENT '字段名称',
  `fieldtype` varchar(50) NOT NULL COMMENT '字段类型',
  `relatedid` smallint(5) unsigned NOT NULL COMMENT '相关id',
  `relatedname` varchar(50) NOT NULL COMMENT '相关表',
  `isedit` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可修改',
  `ismain` tinyint(1) unsigned NOT NULL COMMENT '是否主表',
  `issystem` tinyint(1) unsigned NOT NULL COMMENT '是否系统表',
  `ismember` tinyint(1) unsigned NOT NULL COMMENT '是否会员可见',
  `issearch` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否可搜索',
  `disabled` tinyint(1) unsigned NOT NULL COMMENT '禁用？',
  `setting` text NOT NULL COMMENT '配置信息',
  `displayorder` tinyint(3) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  KEY `list` (`relatedid`,`disabled`,`issystem`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COMMENT='字段表';

-- ----------------------------
-- Records of cc_field
-- ----------------------------
INSERT INTO `cc_field` VALUES ('80', '标题', 'title', 'Text', '17', 'module', '1', '1', '1', '1', '0', '0', '{\"option\":{\"width\":\"400\",\"is_mb_auto\":\"0\",\"value\":\"\",\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\"},\"validate\":{\"required\":\"1\",\"pattern\":\"\",\"errortips\":\"\",\"xss\":\"1\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"onblur=\\\"check_title();get_keywords(\'keywords\');\\\"\"},\"is_right\":\"0\"}', '0');
INSERT INTO `cc_field` VALUES ('79', '跳转链接', 'link', 'Text', '16', 'module', '1', '1', '0', '1', '0', '0', '{\"option\":{\"width\":\"200\",\"is_mb_auto\":\"0\",\"value\":\"\",\"fieldtype\":\"\",\"fieldlength\":\"\"},\"validate\":{\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}', '0');
INSERT INTO `cc_field` VALUES ('83', '描述', 'description', 'Textarea', '17', 'module', '1', '1', '1', '1', '0', '0', '{\"option\":{\"width\":\"500\",\"is_mb_auto\":\"0\",\"height\":\"60\",\"value\":\"\"},\"validate\":{\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"xss\":\"1\",\"check\":\"\",\"filter\":\"dr_clearhtml\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}', '0');
INSERT INTO `cc_field` VALUES ('25', '内容', 'neirong', 'Ueditor', '1', 'form-1', '1', '1', '0', '1', '0', '0', '{\"option\":{\"width\":\"100%\",\"height\":\"200\",\"autofloat\":\"0\",\"autoheight\":\"0\",\"autodown\":\"0\",\"page\":\"0\",\"mode\":\"1\",\"tool\":\"\'bold\', \'italic\', \'underline\'\",\"mode2\":\"1\",\"tool2\":\"\'bold\', \'italic\', \'underline\'\",\"mode3\":\"1\",\"tool3\":\"\'bold\', \'italic\', \'underline\'\",\"value\":\"\"},\"validate\":{\"required\":\"1\",\"pattern\":\"\",\"errortips\":\"\",\"xss\":\"1\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}', '0');
INSERT INTO `cc_field` VALUES ('23', '主题', 'title', 'Text', '1', 'form-1', '1', '1', '1', '1', '1', '0', '{\"option\":{\"width\":400,\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\"},\"validate\":{\"xss\":1,\"required\":1}}', '0');
INSERT INTO `cc_field` VALUES ('84', '内容', 'content', 'Ueditor', '17', 'module', '1', '0', '1', '1', '1', '0', '{\"option\":{\"mode\":1,\"width\":\"90%\",\"height\":400},\"validate\":{\"xss\":1,\"required\":1}}', '0');
INSERT INTO `cc_field` VALUES ('85', '阅读数', 'readnum', 'Text', '17', 'module', '1', '1', '0', '1', '0', '0', '{\"option\":{\"width\":\"200\",\"is_mb_auto\":\"0\",\"value\":\"0\",\"fieldtype\":\"INT\",\"fieldlength\":\"11\"},\"validate\":{\"required\":\"1\",\"pattern\":\"\\/^[0-9-]+$\\/\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}', '0');
INSERT INTO `cc_field` VALUES ('81', '缩略图', 'thumb', 'File', '17', 'module', '1', '1', '1', '1', '1', '0', '{\"option\":{\"ext\":\"jpg,gif,png\",\"size\":10,\"width\":400,\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\"}}', '0');
INSERT INTO `cc_field` VALUES ('82', '分类', 'keywords', 'Text', '17', 'module', '1', '1', '1', '1', '0', '0', '{\"option\":{\"width\":\"400\",\"is_mb_auto\":\"0\",\"value\":\"\",\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\"},\"validate\":{\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"xss\":\"1\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\" data-role=\\\"tagsinput\\\"\"},\"is_right\":\"0\"}', '0');
INSERT INTO `cc_field` VALUES ('77', '内容', 'content', 'Ueditor', '16', 'module', '1', '0', '1', '1', '0', '1', '{\"option\":{\"width\":\"90%\",\"height\":\"400\",\"autofloat\":\"0\",\"autoheight\":\"0\",\"autodown\":\"0\",\"page\":\"0\",\"mode\":\"1\",\"tool\":\"\'bold\', \'italic\', \'underline\'\",\"mode2\":\"1\",\"tool2\":\"\'bold\', \'italic\', \'underline\'\",\"mode3\":\"1\",\"tool3\":\"\'bold\', \'italic\', \'underline\'\",\"value\":\"\"},\"validate\":{\"required\":\"1\",\"pattern\":\"\",\"errortips\":\"\",\"xss\":\"1\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}', '0');
INSERT INTO `cc_field` VALUES ('76', '描述', 'description', 'Textarea', '16', 'module', '1', '1', '1', '1', '0', '1', '{\"option\":{\"width\":\"500\",\"is_mb_auto\":\"0\",\"height\":\"60\",\"value\":\"\"},\"validate\":{\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"xss\":\"1\",\"check\":\"\",\"filter\":\"dr_clearhtml\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}', '0');
INSERT INTO `cc_field` VALUES ('75', '关键字', 'keywords', 'Text', '16', 'module', '1', '1', '1', '1', '0', '1', '{\"option\":{\"width\":\"400\",\"is_mb_auto\":\"0\",\"value\":\"\",\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\"},\"validate\":{\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"xss\":\"1\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\" data-role=\\\"tagsinput\\\"\"},\"is_right\":\"0\"}', '0');
INSERT INTO `cc_field` VALUES ('74', '轮播图', 'thumb', 'File', '16', 'module', '1', '1', '1', '1', '0', '0', '{\"option\":{\"size\":\"10\",\"ext\":\"jpg,gif,png\"},\"validate\":{\"required\":\"0\",\"pattern\":\"\",\"errortips\":\"\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"\"},\"is_right\":\"0\"}', '0');
INSERT INTO `cc_field` VALUES ('73', '轮播图名称', 'title', 'Text', '16', 'module', '1', '1', '1', '1', '0', '0', '{\"option\":{\"width\":\"400\",\"is_mb_auto\":\"0\",\"value\":\"\",\"fieldtype\":\"VARCHAR\",\"fieldlength\":\"255\"},\"validate\":{\"required\":\"1\",\"pattern\":\"\",\"errortips\":\"\",\"xss\":\"1\",\"check\":\"\",\"filter\":\"\",\"tips\":\"\",\"formattr\":\"onblur=\\\"check_title();get_keywords(\'keywords\');\\\"\"},\"is_right\":\"0\"}', '0');

-- ----------------------------
-- Table structure for cc_linkage
-- ----------------------------
DROP TABLE IF EXISTS `cc_linkage`;
CREATE TABLE `cc_linkage` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '菜单名称',
  `type` tinyint(1) unsigned NOT NULL,
  `code` char(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`),
  KEY `module` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='联动菜单表';

-- ----------------------------
-- Records of cc_linkage
-- ----------------------------
INSERT INTO `cc_linkage` VALUES ('1', '中国地区', '0', 'address');

-- ----------------------------
-- Table structure for cc_linkage_data_1
-- ----------------------------
DROP TABLE IF EXISTS `cc_linkage_data_1`;
CREATE TABLE `cc_linkage_data_1` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `site` mediumint(5) unsigned NOT NULL COMMENT '站点id',
  `pid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '上级id',
  `pids` varchar(255) DEFAULT NULL COMMENT '所有上级id',
  `name` varchar(30) NOT NULL COMMENT '栏目名称',
  `cname` varchar(30) NOT NULL COMMENT '别名',
  `child` tinyint(1) unsigned DEFAULT '0' COMMENT '是否有下级',
  `hidden` tinyint(1) unsigned DEFAULT '0' COMMENT '前端隐藏',
  `childids` text COMMENT '下级所有id',
  `displayorder` tinyint(3) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cname` (`cname`),
  KEY `hidden` (`hidden`),
  KEY `list` (`site`,`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COMMENT='联动菜单数据表';

-- ----------------------------
-- Records of cc_linkage_data_1
-- ----------------------------
INSERT INTO `cc_linkage_data_1` VALUES ('1', '1', '0', '0', '北京', 'beijing', '0', '0', '1', '0');
INSERT INTO `cc_linkage_data_1` VALUES ('2', '1', '0', '0', '天津', 'tianjin', '0', '0', '2', '0');
INSERT INTO `cc_linkage_data_1` VALUES ('3', '1', '0', '0', '上海', 'shanghai', '0', '0', '3', '0');
INSERT INTO `cc_linkage_data_1` VALUES ('4', '1', '0', '0', '重庆', 'chongqing', '0', '0', '4', '0');
INSERT INTO `cc_linkage_data_1` VALUES ('5', '1', '0', '0', '黑龙江', 'heilongjiang', '0', '0', '5', '0');
INSERT INTO `cc_linkage_data_1` VALUES ('6', '1', '0', '0', '吉林', 'jilin', '0', '0', '6', '0');
INSERT INTO `cc_linkage_data_1` VALUES ('7', '1', '0', '0', '辽宁', 'liaoning', '0', '0', '7', '0');
INSERT INTO `cc_linkage_data_1` VALUES ('8', '1', '0', '0', '河北', 'hebei', '0', '0', '8', '0');
INSERT INTO `cc_linkage_data_1` VALUES ('9', '1', '0', '0', '河南', 'henan', '0', '0', '9', '0');
INSERT INTO `cc_linkage_data_1` VALUES ('10', '1', '0', '0', '山东', 'shandong', '0', '0', '10', '0');
INSERT INTO `cc_linkage_data_1` VALUES ('11', '1', '0', '0', '江苏', 'jiangsu', '0', '0', '11', '0');
INSERT INTO `cc_linkage_data_1` VALUES ('12', '1', '0', '0', '山西', 'shanxi', '0', '0', '12', '0');
INSERT INTO `cc_linkage_data_1` VALUES ('13', '1', '0', '0', '陕西', 'shanxi1', '0', '0', '13', '0');
INSERT INTO `cc_linkage_data_1` VALUES ('14', '1', '0', '0', '甘肃', 'gansu', '0', '0', '14', '0');
INSERT INTO `cc_linkage_data_1` VALUES ('15', '1', '0', '0', '四川', 'sichuan', '0', '0', '15', '0');
INSERT INTO `cc_linkage_data_1` VALUES ('16', '1', '0', '0', '青海', 'qinghai', '0', '0', '16', '0');
INSERT INTO `cc_linkage_data_1` VALUES ('17', '1', '0', '0', '湖南', 'hunan', '0', '0', '17', '0');
INSERT INTO `cc_linkage_data_1` VALUES ('18', '1', '0', '0', '湖北', 'hubei', '0', '0', '18', '0');
INSERT INTO `cc_linkage_data_1` VALUES ('19', '1', '0', '0', '江西', 'jiangxi', '0', '0', '19', '0');
INSERT INTO `cc_linkage_data_1` VALUES ('20', '1', '0', '0', '安徽', 'anhui', '0', '0', '20', '0');
INSERT INTO `cc_linkage_data_1` VALUES ('21', '1', '0', '0', '浙江', 'zhejiang', '0', '0', '21', '0');
INSERT INTO `cc_linkage_data_1` VALUES ('22', '1', '0', '0', '福建', 'fujian', '0', '0', '22', '0');
INSERT INTO `cc_linkage_data_1` VALUES ('23', '1', '0', '0', '广东', 'guangdong', '0', '0', '23', '0');
INSERT INTO `cc_linkage_data_1` VALUES ('24', '1', '0', '0', '广西', 'guangxi', '0', '0', '24', '0');
INSERT INTO `cc_linkage_data_1` VALUES ('25', '1', '0', '0', '贵州', 'guizhou', '0', '0', '25', '0');
INSERT INTO `cc_linkage_data_1` VALUES ('26', '1', '0', '0', '云南', 'yunnan', '0', '0', '26', '0');
INSERT INTO `cc_linkage_data_1` VALUES ('27', '1', '0', '0', '海南', 'hainan', '0', '0', '27', '0');
INSERT INTO `cc_linkage_data_1` VALUES ('28', '1', '0', '0', '内蒙古', 'neimenggu', '0', '0', '28', '0');
INSERT INTO `cc_linkage_data_1` VALUES ('29', '1', '0', '0', '新疆', 'xinjiang', '0', '0', '29', '0');
INSERT INTO `cc_linkage_data_1` VALUES ('30', '1', '0', '0', '宁夏', 'ningxia', '0', '0', '30', '0');
INSERT INTO `cc_linkage_data_1` VALUES ('31', '1', '0', '0', '西藏', 'xicang', '0', '0', '31', '0');
INSERT INTO `cc_linkage_data_1` VALUES ('32', '1', '0', '0', '香港', 'xianggang', '0', '0', '32', '0');
INSERT INTO `cc_linkage_data_1` VALUES ('33', '1', '0', '0', '澳门', 'aomen', '0', '0', '33', '0');
INSERT INTO `cc_linkage_data_1` VALUES ('34', '1', '0', '0', '台湾', 'taiwan', '0', '0', '34', '0');

-- ----------------------------
-- Table structure for cc_mail_smtp
-- ----------------------------
DROP TABLE IF EXISTS `cc_mail_smtp`;
CREATE TABLE `cc_mail_smtp` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `host` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `port` mediumint(8) unsigned NOT NULL,
  `displayorder` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='邮件账户表';

-- ----------------------------
-- Records of cc_mail_smtp
-- ----------------------------

-- ----------------------------
-- Table structure for cc_member
-- ----------------------------
DROP TABLE IF EXISTS `cc_member`;
CREATE TABLE `cc_member` (
  `uid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `email` char(40) NOT NULL DEFAULT '' COMMENT '邮箱地址',
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '加密密码',
  `salt` char(10) NOT NULL COMMENT '随机加密码',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `phone` char(20) NOT NULL COMMENT '手机号码',
  `avatar` varchar(255) NOT NULL COMMENT '头像地址',
  `money` decimal(10,2) unsigned NOT NULL COMMENT 'RMB',
  `freeze` decimal(10,2) unsigned NOT NULL COMMENT '冻结RMB',
  `spend` decimal(10,2) unsigned NOT NULL COMMENT '消费RMB总额',
  `score` int(10) unsigned NOT NULL COMMENT '虚拟币',
  `experience` int(10) unsigned NOT NULL COMMENT '经验值',
  `adminid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '管理组id',
  `groupid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '用户组id',
  `levelid` smallint(5) unsigned NOT NULL COMMENT '会员级别',
  `overdue` int(10) unsigned NOT NULL COMMENT '到期时间',
  `regip` varchar(15) NOT NULL COMMENT '注册ip',
  `regtime` int(10) unsigned NOT NULL COMMENT '注册时间',
  `randcode` mediumint(6) unsigned NOT NULL COMMENT '随机验证码',
  `ismobile` tinyint(1) unsigned DEFAULT NULL COMMENT '手机认证标识',
  PRIMARY KEY (`uid`),
  KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `groupid` (`groupid`),
  KEY `adminid` (`adminid`),
  KEY `phone` (`phone`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='会员表';

-- ----------------------------
-- Records of cc_member
-- ----------------------------
INSERT INTO `cc_member` VALUES ('1', '', 'admin', 'ac7cd59472be180b81c7551b92925f03', 'b3967a0e93', '1212', '12', '', '9999.00', '0.00', '0.00', '10000', '10000', '1', '3', '4', '0', '', '0', '0', '0');

-- ----------------------------
-- Table structure for cc_member_data
-- ----------------------------
DROP TABLE IF EXISTS `cc_member_data`;
CREATE TABLE `cc_member_data` (
  `uid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `complete` tinyint(1) unsigned NOT NULL COMMENT '完善资料标识',
  `is_auth` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '实名认证标识',
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='会员表';

-- ----------------------------
-- Records of cc_member_data
-- ----------------------------
INSERT INTO `cc_member_data` VALUES ('1', '1', '0');

-- ----------------------------
-- Table structure for cc_member_oauth
-- ----------------------------
DROP TABLE IF EXISTS `cc_member_oauth`;
CREATE TABLE `cc_member_oauth` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL COMMENT '会员uid',
  `oid` varchar(255) NOT NULL COMMENT 'OAuth返回id',
  `oauth` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `expire_at` int(10) unsigned NOT NULL,
  `access_token` varchar(255) DEFAULT NULL,
  `refresh_token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员OAuth2授权表';

-- ----------------------------
-- Records of cc_member_oauth
-- ----------------------------

-- ----------------------------
-- Table structure for cc_module
-- ----------------------------
DROP TABLE IF EXISTS `cc_module`;
CREATE TABLE `cc_module` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `site` text COMMENT '站点划分',
  `dirname` varchar(50) NOT NULL COMMENT '目录名称',
  `share` tinyint(1) unsigned DEFAULT NULL COMMENT '是否共享模块',
  `extend` tinyint(1) unsigned DEFAULT NULL COMMENT '是否是扩展模块',
  `sitemap` tinyint(1) unsigned DEFAULT NULL COMMENT '是否生成地图',
  `setting` text COMMENT '配置信息',
  `disabled` tinyint(1) NOT NULL DEFAULT '0' COMMENT '禁用？',
  `displayorder` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dirname` (`dirname`),
  KEY `displayorder` (`displayorder`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='模块表';

-- ----------------------------
-- Records of cc_module
-- ----------------------------
INSERT INTO `cc_module` VALUES ('17', '{\"name\":\"\\u65b0\\u95fb\\u6587\\u7ae0\"}', 'news', '0', '0', '0', '', '0', '0');
INSERT INTO `cc_module` VALUES ('16', '{\"name\":\"\\u8f6e\\u64ad\\u56fe\"}', 'banner', '0', '0', '0', '', '0', '0');

-- ----------------------------
-- Table structure for cc_site
-- ----------------------------
DROP TABLE IF EXISTS `cc_site`;
CREATE TABLE `cc_site` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '站点名称',
  `domain` varchar(50) NOT NULL COMMENT '站点域名',
  `setting` text NOT NULL COMMENT '站点配置',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='站点表';

-- ----------------------------
-- Records of cc_site
-- ----------------------------
INSERT INTO `cc_site` VALUES ('1', 'FineCMS', 'www.lcfine.com', '{\"SITE_CLOSE\":\"0\",\"SITE_CLOSE_MSG\":\"\\u7f51\\u7ad9\\u5347\\u7ea7\\u4e2d....\",\"SITE_NAME\":\"FineCMS\",\"SITE_TIME_FORMAT\":\"Y-m-d H:i\",\"SITE_LANGUAGE\":\"zh-cn\",\"SITE_THEME\":\"default\",\"SITE_TEMPLATE\":\"default\",\"SITE_TIMEZONE\":\"8\",\"SITE_DOMAINS\":\"\",\"SITE_REWRITE\":\"0\",\"SITE_MOBILE_OPEN\":\"1\",\"SITE_MOBILE\":\"\",\"SITE_SEOJOIN\":\"_\",\"SITE_TITLE\":\"FineCMS\\u516c\\u76ca\\u8f6f\\u4ef6\",\"SITE_KEYWORDS\":\"\\u514d\\u8d39cms,\\u5f00\\u6e90cms\",\"SITE_DESCRIPTION\":\"\\u516c\\u76ca\\u8f6f\\u4ef6\\u4ea7\\u54c1\\u4ecb\\u7ecd\",\"SITE_IMAGE_RATIO\":\"1\",\"SITE_IMAGE_WATERMARK\":\"0\",\"SITE_IMAGE_VRTALIGN\":\"top\",\"SITE_IMAGE_HORALIGN\":\"left\",\"SITE_IMAGE_VRTOFFSET\":\"\",\"SITE_IMAGE_HOROFFSET\":\"\",\"SITE_IMAGE_TYPE\":\"0\",\"SITE_IMAGE_OVERLAY\":\"default.png\",\"SITE_IMAGE_OPACITY\":\"\",\"SITE_IMAGE_FONT\":\"default.ttf\",\"SITE_IMAGE_COLOR\":\"\",\"SITE_IMAGE_SIZE\":\"\",\"SITE_IMAGE_TEXT\":\"\",\"SITE_DOMAIN\":\"test2.yuanzongniubi.com\",\"SITE_IMAGE_CONTENT\":0}');

-- ----------------------------
-- Table structure for cc_urlrule
-- ----------------------------
DROP TABLE IF EXISTS `cc_urlrule`;
CREATE TABLE `cc_urlrule` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '规则类型',
  `name` varchar(50) NOT NULL COMMENT '规则名称',
  `value` text NOT NULL COMMENT '详细规则',
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='URL规则表';

-- ----------------------------
-- Records of cc_urlrule
-- ----------------------------
INSERT INTO `cc_urlrule` VALUES ('1', '3', '栏目规则测试', '{\"share_list\":\"{dirname}-list.html\",\"share_list_page\":\"{dirname}-list-{page}.html\",\"share_show\":\"{dirname}-show-{id}.html\",\"share_show_page\":\"{dirname}-show-{id}-{page}.html\",\"share_search\":\"\",\"share_search_page\":\"\",\"tags\":\"\"}');
INSERT INTO `cc_urlrule` VALUES ('2', '4', '站点URL测试', '{\"share_list\":\"\",\"share_list_page\":\"\",\"share_show\":\"\",\"share_show_page\":\"\",\"share_search\":\"search.html\",\"share_search_page\":\"search\\/{param}.html\",\"tags\":\"tag\\/{tag}.html\"}');
