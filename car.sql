/*
Navicat MySQL Data Transfer

Source Server         : 测试1
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : car

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2018-07-08 10:15:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `ctime` date NOT NULL,
  `img` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of car
-- ----------------------------
INSERT INTO `car` VALUES ('1', '奔驰', '2018-06-28', '../src/images/benz.jpg');
INSERT INTO `car` VALUES ('2', '宝马', '2018-06-20', '../src/images/bmw.jpg');
INSERT INTO `car` VALUES ('3', '奥迪', '2018-06-27', '../src/images/benz.jpg');
INSERT INTO `car` VALUES ('4', '众泰', '2018-06-29', '../src/images/bmw.jpg');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `user_name` varchar(255) NOT NULL,
  `add_time` datetime NOT NULL,
  `content` varchar(255) NOT NULL,
  `news_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('asd', '2018-07-10 17:13:14', 'asdasdasdasd', '1');
INSERT INTO `comments` VALUES ('ff', '2018-07-24 17:14:13', 'dfsdfsdfsdfsdf', '1');
INSERT INTO `comments` VALUES ('asffsdf', '2018-07-19 17:14:24', 'sfsfsefef', '1');
INSERT INTO `comments` VALUES ('sdfsdfdsf', '2018-07-17 17:14:34', 'sdfsfdsfsdfsdf', '1');
INSERT INTO `comments` VALUES ('匿名用户', '2018-07-05 09:51:26', '1111111111111111111111111111', '1');
INSERT INTO `comments` VALUES ('匿名用户', '2018-07-05 09:54:20', ',,,,,,,,,,,,,,,,,,,,,,,,,,,,', '1');
INSERT INTO `comments` VALUES ('匿名用户', '2018-07-05 19:03:01', 'fggghh', '2');
INSERT INTO `comments` VALUES ('匿名用户', '2018-07-05 19:05:54', 'fffg', '1');
INSERT INTO `comments` VALUES ('匿名用户', '2018-07-05 19:06:03', 'bbbhj', '1');
INSERT INTO `comments` VALUES ('匿名用户', '2018-07-05 19:06:20', 'hhhjj', '1');
INSERT INTO `comments` VALUES ('匿名用户', '2018-07-05 19:06:32', 'gdsaafgg', '1');
INSERT INTO `comments` VALUES ('匿名用户', '2018-07-05 19:07:06', 'fff', '6');
INSERT INTO `comments` VALUES ('匿名用户', '2018-07-05 19:07:11', 'easss', '6');
INSERT INTO `comments` VALUES ('匿名用户', '2018-07-05 19:07:17', 'jjkkloj', '6');
INSERT INTO `comments` VALUES ('匿名用户', '2018-07-07 18:38:37', 'asdasd', '4');
INSERT INTO `comments` VALUES ('匿名用户', '2018-07-07 19:01:25', 'asdasd', '1');
INSERT INTO `comments` VALUES ('匿名用户', '2018-07-07 19:02:12', 'asdasd', '1');
INSERT INTO `comments` VALUES ('匿名用户', '2018-07-07 19:02:15', 'asdasd', '1');
INSERT INTO `comments` VALUES ('匿名用户', '2018-07-07 19:03:36', 'asdasdasd', '1');
INSERT INTO `comments` VALUES ('匿名用户', '2018-07-07 19:03:39', 'zzzzzzzzzzzzz', '1');
INSERT INTO `comments` VALUES ('匿名用户', '2018-07-07 19:28:26', 'asdad', '2');
INSERT INTO `comments` VALUES ('匿名用户', '2018-07-07 19:50:24', 'asdasd', '1');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `add_time` datetime NOT NULL,
  `zhaiyao` varchar(255) DEFAULT NULL,
  `click` int(11) NOT NULL,
  `img_url` varchar(255) NOT NULL,
  `sell_price` decimal(10,2) NOT NULL,
  `market_price` decimal(10,2) NOT NULL,
  `stock_quantity` decimal(10,0) NOT NULL,
  `goods_no` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '华为荣耀1', '2018-07-10 13:37:20', '华为荣耀plus', '0', 'https://ss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=026d26522b7f9e2f6f351b082f31e962/500fd9f9d72a605986cb75ae2434349b023bbaaf.jpg', '2195.00', '2499.00', '60', 'SD3973042344');
INSERT INTO `goods` VALUES ('2', '华为荣耀2', '2018-07-10 13:37:20', '华为荣耀plus', '0', 'https://ss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=026d26522b7f9e2f6f351b082f31e962/500fd9f9d72a605986cb75ae2434349b023bbaaf.jpg', '2195.00', '2499.00', '60', 'SD3973042344');
INSERT INTO `goods` VALUES ('3', '华为荣耀3', '2018-07-10 13:37:20', '华为荣耀plus', '0', 'https://ss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=026d26522b7f9e2f6f351b082f31e962/500fd9f9d72a605986cb75ae2434349b023bbaaf.jpg', '2195.00', '2499.00', '60', 'SD3973042344');
INSERT INTO `goods` VALUES ('4', '华为荣耀4', '2018-07-10 13:37:20', '华为荣耀plus', '0', 'https://ss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=026d26522b7f9e2f6f351b082f31e962/500fd9f9d72a605986cb75ae2434349b023bbaaf.jpg', '2195.00', '2499.00', '60', 'SD3973042344');
INSERT INTO `goods` VALUES ('5', '华为荣耀5', '2018-07-10 13:37:20', '华为荣耀plus', '0', 'https://ss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=026d26522b7f9e2f6f351b082f31e962/500fd9f9d72a605986cb75ae2434349b023bbaaf.jpg', '2195.00', '2499.00', '60', 'SD3973042344');
INSERT INTO `goods` VALUES ('6', '华为荣耀6', '2018-07-10 13:37:20', '华为荣耀plus', '0', 'https://ss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=026d26522b7f9e2f6f351b082f31e962/500fd9f9d72a605986cb75ae2434349b023bbaaf.jpg', '2195.00', '2499.00', '60', 'SD3973042344');
INSERT INTO `goods` VALUES ('7', '华为荣耀7', '2018-07-10 13:37:20', '华为荣耀plus', '0', 'https://ss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=026d26522b7f9e2f6f351b082f31e962/500fd9f9d72a605986cb75ae2434349b023bbaaf.jpg', '2195.00', '2499.00', '60', 'SD3973042344');
INSERT INTO `goods` VALUES ('8', '华为荣耀8', '2018-07-10 13:37:20', '华为荣耀plus', '0', 'https://ss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/image/h%3D300/sign=026d26522b7f9e2f6f351b082f31e962/500fd9f9d72a605986cb75ae2434349b023bbaaf.jpg', '2195.00', '2499.00', '60', 'SD3973042344');

-- ----------------------------
-- Table structure for imgcategory
-- ----------------------------
DROP TABLE IF EXISTS `imgcategory`;
CREATE TABLE `imgcategory` (
  `title` varchar(255) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imgcategory
-- ----------------------------
INSERT INTO `imgcategory` VALUES ('家居生活', '1');
INSERT INTO `imgcategory` VALUES ('摄影设计', '2');
INSERT INTO `imgcategory` VALUES ('明星美女', '3');
INSERT INTO `imgcategory` VALUES ('明星美女', '4');
INSERT INTO `imgcategory` VALUES ('明星美女', '5');
INSERT INTO `imgcategory` VALUES ('明星美女', '6');
INSERT INTO `imgcategory` VALUES ('明星美女', '7');
INSERT INTO `imgcategory` VALUES ('明星美女', '8');
INSERT INTO `imgcategory` VALUES ('明星美女', '9');

-- ----------------------------
-- Table structure for imghum
-- ----------------------------
DROP TABLE IF EXISTS `imghum`;
CREATE TABLE `imghum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `src` varchar(255) NOT NULL,
  `img_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imghum
-- ----------------------------
INSERT INTO `imghum` VALUES ('1', '../src/images/benz.jpg', '1');
INSERT INTO `imghum` VALUES ('2', '../src/images/benz.jpg', '1');
INSERT INTO `imghum` VALUES ('3', '../src/images/benz.jpg', '1');

-- ----------------------------
-- Table structure for imglist
-- ----------------------------
DROP TABLE IF EXISTS `imglist`;
CREATE TABLE `imglist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `click` int(11) NOT NULL,
  `add_time` datetime NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imglist
-- ----------------------------
INSERT INTO `imglist` VALUES ('1', '../src/images/benz.jpg', '1', '好车', '1', '2018-07-18 14:42:09', '前端时间面试的时候老是被问到图片懒加载实现及原理,由于自己在实际项目中并没有用过,只是了解过大概,所以回答起来都不尽如人意,趁这段时间空闲下来有啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊');
INSERT INTO `imglist` VALUES ('2', '../src/images/bmw.jpg', '1', '好车', '2', '2018-07-18 14:42:09', '前端时间面试的时候老是被问到图片懒加载实现及原理,由于自己在实际项目中并没有用过,只是了解过大概,所以回答起来都不尽如人意,趁这段时间空闲下来有');
INSERT INTO `imglist` VALUES ('3', '../src/images/benz.jpg', '2', '好车', '3', '2018-07-18 14:42:09', '前端时间面试的时候老是被问到图片懒加载实现及原理,由于自己在实际项目中并没有用过,只是了解过大概,所以回答起来都不尽如人意,趁这段时间空闲下来有');
INSERT INTO `imglist` VALUES ('4', '../src/images/benz.jpg', '2', '好车', '4', '2018-07-18 14:42:09', '前端时间面试的时候老是被问到图片懒加载实现及原理,由于自己在实际项目中并没有用过,只是了解过大概,所以回答起来都不尽如人意,趁这段时间空闲下来有assssssssssssssssssssssssssssss');
INSERT INTO `imglist` VALUES ('5', '../src/images/benz.jpg', '3', '好车', '5', '2018-07-18 14:42:09', '前端时间面试的时候老是被问到图片懒加载实现及原理,由于自己在实际项目中并没有用过,只是了解过大概,所以回答起来都不尽如人意,趁这段时间空闲下来有');
INSERT INTO `imglist` VALUES ('6', '../src/images/benz.jpg', '1', '好车', '6', '2018-07-18 14:42:09', '前端时间面试的时候老是被问到图片懒加载实现及原理,由于自己在实际项目中并没有用过,只是了解过大概,所以回答起来都不尽如人意,趁这段时间空闲下来有');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `add_time` datetime NOT NULL,
  `zhaoyao` varchar(255) DEFAULT NULL,
  `click` int(11) NOT NULL,
  `img_url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '二季度', '2018-07-18 22:34:36', '一季度多家放弃奥术大师大所发发所付撒发所付发扩扩扩扩扩扩扩扩扩扩扩扩扩扩扩扩扩扩扩扩扩扩扩扩扩扩扩扩扩扩扩扩扩扩扩扩扩扩扩扩扩扩', '2', 'http://img5.imgtn.bdimg.com/it/u=453475852,2588557495&fm=27&gp=0.jpg');
INSERT INTO `news` VALUES ('2', '一季度多家房企', '2018-07-19 22:34:03', '房企一季度多家利润', '1', 'http://img5.imgtn.bdimg.com/it/u=453475852,2588557495&fm=27&gp=0.jpg');
INSERT INTO `news` VALUES ('3', 'sfasff', '2018-07-19 22:35:49', '房企一季度多家利润', '4', 'http://img5.imgtn.bdimg.com/it/u=453475852,2588557495&fm=27&gp=0.jpg');
INSERT INTO `news` VALUES ('4', 'fasf', '2018-07-24 22:37:55', '房企一季度多家利润', '6', 'http://img5.imgtn.bdimg.com/it/u=453475852,2588557495&fm=27&gp=0.jpg');
