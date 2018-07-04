/*
Navicat MySQL Data Transfer

Source Server         : 测试1
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : car

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2018-07-04 17:35:45
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
