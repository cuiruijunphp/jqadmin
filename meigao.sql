/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : meigao

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2017-07-05 18:47:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for after_sale
-- ----------------------------
DROP TABLE IF EXISTS `after_sale`;
CREATE TABLE `after_sale` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `content` text COMMENT '售后保障内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='售后保障';

-- ----------------------------
-- Records of after_sale
-- ----------------------------

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '图片描述',
  `img_url` varchar(255) NOT NULL DEFAULT '' COMMENT '图片lujing ',
  `img_link` varchar(255) DEFAULT NULL COMMENT '图片链接地址',
  `sort` int(10) NOT NULL DEFAULT '1' COMMENT '图片排序',
  `is_show` tinyint(1) NOT NULL COMMENT '是否显示(1-是，0-否)',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='首页banner图';

-- ----------------------------
-- Records of banner
-- ----------------------------

-- ----------------------------
-- Table structure for brand_story
-- ----------------------------
DROP TABLE IF EXISTS `brand_story`;
CREATE TABLE `brand_story` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `story` text COMMENT '品牌故事内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='品牌故事';

-- ----------------------------
-- Records of brand_story
-- ----------------------------

-- ----------------------------
-- Table structure for comp_qua
-- ----------------------------
DROP TABLE IF EXISTS `comp_qua`;
CREATE TABLE `comp_qua` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '资质名称',
  `pic` varchar(255) NOT NULL DEFAULT '' COMMENT '资质图片',
  `sort` int(10) NOT NULL DEFAULT '1' COMMENT '排序',
  `is_show` tinyint(1) DEFAULT '1' COMMENT '是否显示(1-是，0-否)',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='公司资质';

-- ----------------------------
-- Records of comp_qua
-- ----------------------------

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `right_reserved` varchar(255) DEFAULT '' COMMENT '版权所有',
  `keyword` varchar(255) DEFAULT '' COMMENT '顶部关键词',
  `company_name` varchar(255) DEFAULT '' COMMENT '公司名字',
  `firm` varchar(255) DEFAULT '' COMMENT '制造厂商',
  `address` varchar(255) DEFAULT '' COMMENT '厂商地址',
  `telphone` varchar(30) DEFAULT '' COMMENT '联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='配置';

-- ----------------------------
-- Records of config
-- ----------------------------

-- ----------------------------
-- Table structure for coop_merchat
-- ----------------------------
DROP TABLE IF EXISTS `coop_merchat`;
CREATE TABLE `coop_merchat` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '合作商户名称',
  `pic` varchar(255) NOT NULL DEFAULT '' COMMENT '商户图片',
  `sort` int(10) NOT NULL DEFAULT '1' COMMENT '排序',
  `is_show` tinyint(1) DEFAULT '1' COMMENT '是否显示(1-是，0-否)',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='合作商户';

-- ----------------------------
-- Records of coop_merchat
-- ----------------------------

-- ----------------------------
-- Table structure for hot_info
-- ----------------------------
DROP TABLE IF EXISTS `hot_info`;
CREATE TABLE `hot_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text COMMENT '内容',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `view` int(10) NOT NULL DEFAULT '0' COMMENT '浏览次数',
  `sort` int(10) NOT NULL DEFAULT '1' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='热点资讯';

-- ----------------------------
-- Records of hot_info
-- ----------------------------

-- ----------------------------
-- Table structure for link
-- ----------------------------
DROP TABLE IF EXISTS `link`;
CREATE TABLE `link` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `link_name` varchar(255) DEFAULT NULL COMMENT '友情链接名字',
  `link_url` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `sort` int(10) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='友情链接';

-- ----------------------------
-- Records of link
-- ----------------------------

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) DEFAULT '' COMMENT '主题',
  `phone` varchar(11) DEFAULT '' COMMENT '联系电话',
  `mail` varchar(255) DEFAULT '' COMMENT '邮箱',
  `desc` text COMMENT '问题描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='留言';

-- ----------------------------
-- Records of message
-- ----------------------------

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '产品名称',
  `pic` varchar(255) NOT NULL DEFAULT '' COMMENT '商户图片',
  `sort` int(10) NOT NULL DEFAULT '1' COMMENT '排序',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='充电器产品详情';

-- ----------------------------
-- Records of product
-- ----------------------------

-- ----------------------------
-- Table structure for recruit
-- ----------------------------
DROP TABLE IF EXISTS `recruit`;
CREATE TABLE `recruit` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `position` varchar(255) DEFAULT '' COMMENT '岗位',
  `require` text COMMENT '招聘要求',
  `sort` int(10) NOT NULL DEFAULT '1' COMMENT '排序',
  `is_show` tinyint(1) DEFAULT '1' COMMENT '是否显示(1-是，0-否)',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='招聘信息';

-- ----------------------------
-- Records of recruit
-- ----------------------------

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '类别名称',
  `sort` int(10) NOT NULL DEFAULT '1' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='充电器分类';

-- ----------------------------
-- Records of type
-- ----------------------------
