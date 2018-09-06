/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50532
Source Host           : localhost:3306
Source Database       : funnycheer

Target Server Type    : MYSQL
Target Server Version : 50532
File Encoding         : 65001

Date: 2018-09-06 09:46:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for app
-- ----------------------------
DROP TABLE IF EXISTS `app`;
CREATE TABLE `app` (
  `appid` varchar(50) NOT NULL,
  `appname` varchar(255) DEFAULT NULL,
  `appcategoryid` varchar(50) DEFAULT NULL,
  `developerid` varchar(50) DEFAULT NULL,
  `appsize` double DEFAULT NULL,
  `appversion` varchar(255) DEFAULT NULL,
  `appprice` double(10,0) DEFAULT NULL COMMENT '0：免费下载，非0就是付费价格',
  `appdownloadcount` int(11) DEFAULT NULL COMMENT '系统版本分为0：安卓,1:苹果，2:MAC，3:Windows4个版本',
  `appsystem` varchar(255) DEFAULT NULL,
  `appsynopsis` varchar(255) DEFAULT NULL COMMENT 'app简介',
  `appdesc` varchar(255) DEFAULT NULL,
  `appicon` varchar(255) DEFAULT NULL,
  `appdownloadlink` varchar(255) DEFAULT NULL,
  `appscore` int(11) DEFAULT NULL COMMENT '10个等级，一级等于半颗星星',
  `appupdatetime` datetime DEFAULT NULL,
  `appscreenshot` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`appid`),
  KEY `developerid` (`developerid`),
  KEY `app_ibfk_1` (`appcategoryid`),
  CONSTRAINT `app_ibfk_1` FOREIGN KEY (`appcategoryid`) REFERENCES `appcategory` (`appcategoryid`) ON DELETE SET NULL,
  CONSTRAINT `app_ibfk_2` FOREIGN KEY (`developerid`) REFERENCES `developer` (`developerid`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of app
-- ----------------------------
INSERT INTO `app` VALUES ('1', '阴阳师', '4', '3', '100', '1.0.Version', '1', '1002', '', '好玩', '了快捷方式看到撒地方就看得见奥斯卡了非法风口浪尖撒非奸即盗法拉盛上岛咖啡办了卡会丢失非把数据库', 'images/gameicon/yysicon.png', null, null, '2018-08-15 23:56:15', 'images/appscreenshot/interface-screenshot0-1.jpg');
INSERT INTO `app` VALUES ('10', '京东', '1', '4', '100', '1.0.Version', '20', '1001', null, '好用', '解放后三大浩丰科技sad了副科级阿富汗是否可拉伸机房最喜欢卡电话费阿发收款方陈志雄错派遣就', 'images/appicon/jingdongicon.png', null, null, '2018-08-13 23:56:51', 'images/appscreenshot/interface-screenshot1.jpg');
INSERT INTO `app` VALUES ('11', '微博', '3', '4', '100', '1.0.Version', '5', '998', null, '好用', '创造了服务求鄂破if阿发巨蟹座，女啊回复的斯科拉法V领开箱子从跛IQ查实的老司机 就', 'images/appicon/weiboicon.png', null, null, '2018-07-26 16:31:39', 'images/appscreenshot/interface-screenshot2.jpg');
INSERT INTO `app` VALUES ('12', '哔哩哔哩', '2', '4', '100', '1.0.Version', '4', '997', null, '好用', '了快捷方式看到撒地方就看得见奥斯卡了非法风口浪尖撒非奸即盗法拉盛上岛咖啡办了卡会丢失非把数据库', 'images/appicon/bilibiliicon.png', null, null, '2018-07-17 16:31:45', 'images/appscreenshot/interface-screenshot3.jpg');
INSERT INTO `app` VALUES ('13', '网易云音乐', '2', '3', '100', '1.0.Version', '6', '996', null, '好用', '解放后三大浩丰科技sad了副科级阿富汗是否可拉伸机房最喜欢卡电话费阿发收款方陈志雄错派遣就', 'images/appicon/wangyiyunyinyueicon.png', null, null, '2018-08-17 16:31:48', 'images/appscreenshot/interface-screenshot0-1.jpg');
INSERT INTO `app` VALUES ('14', '虎牙直播', '2', '1', '100', '1.0.Version', '0', '995', null, '好用', '创造了服务求鄂破if阿发巨蟹座，女啊回复的斯科拉法V领开箱子从跛IQ查实的老司机 就', 'images/appicon/huyaicon.png', null, null, '2018-07-09 16:31:53', 'images/appscreenshot/interface-screenshot1.jpg');
INSERT INTO `app` VALUES ('15', '炉石传说', '4', '3', '100', '1.0.Version', '7', '994', null, '好玩', '了快捷方式看到撒地方就看得见奥斯卡了非法风口浪尖撒非奸即盗法拉盛上岛咖啡办了卡会丢失非把数据库', 'images/gameicon/lushichuanshuoicon.jpg', null, null, '2018-06-02 16:31:56', 'images/appscreenshot/interface-screenshot2.jpg');
INSERT INTO `app` VALUES ('16', '命运-冠位指定（Fate/GO）', '4', '3', '100', '1.0.Version', '0', '993', null, '好玩', '解放后三大浩丰科技sad了副科级阿富汗是否可拉伸机房最喜欢卡电话费阿发收款方陈志雄错派遣就', 'images/gameicon/fategoicon.png', null, null, '2018-06-03 16:32:02', 'images/appscreenshot/interface-screenshot3.jpg');
INSERT INTO `app` VALUES ('17', '崩坏3', '6', '3', '100', '1.0.Version', '0', '992', null, '好玩', '创造了服务求鄂破if阿发巨蟹座，女啊回复的斯科拉法V领开箱子从跛IQ查实的老司机 就', 'images/gameicon/benghuai3icon.png', null, null, '2018-05-18 16:32:08', 'images/appscreenshot/interface-screenshot0-1.jpg');
INSERT INTO `app` VALUES ('18', 'QQ飞车', '5', '1', '100', '1.0.Version', '0', '991', null, '好玩', '了快捷方式看到撒地方就看得见奥斯卡了非法风口浪尖撒非奸即盗法拉盛上岛咖啡办了卡会丢失非把数据库', 'images/gameicon/qqfeicheicon.png', null, null, '2018-07-12 16:32:13', 'images/appscreenshot/interface-screenshot1.jpg');
INSERT INTO `app` VALUES ('19', '拼多多', '1', '4', '100', '1.0.Version', '0', '990', null, '好用（呵呵）', '解放后三大浩丰科技sad了副科级阿富汗是否可拉伸机房最喜欢卡电话费阿发收款方陈志雄错派遣就', 'images/appicon/pinduoduoicon.png', null, null, '2018-05-24 16:32:17', 'images/appscreenshot/interface-screenshot2.jpg');
INSERT INTO `app` VALUES ('2', '王者荣耀', '6', '1', '100', '1.0.Version', '0', '1002', null, '好玩', '创造了服务求鄂破if阿发巨蟹座，女啊回复的斯科拉法V领开箱子从跛IQ查实的老司机 就', 'images/gameicon/wangzherongyaoicon.png', null, null, '2018-08-14 23:56:20', 'images/appscreenshot/interface-screenshot3.jpg');
INSERT INTO `app` VALUES ('20', '飞行棋', '7', '4', '100', '1.0.Version', '0', '899', null, '好玩', '了快捷方式看到撒地方就看得见奥斯卡了非法风口浪尖撒非奸即盗法拉盛上岛咖啡办了卡会丢失非把数据库', 'images/gameicon/feixingqiicon.png', null, null, '2018-04-11 16:32:22', 'images/appscreenshot/interface-screenshot0-1.jpg');
INSERT INTO `app` VALUES ('21', '抖音短视频', '2', '3', '100', '1.0.Version', '0', '1010', null, '最新潮流', '创造了服务求鄂破if阿发巨蟹座，女啊回复的斯科拉法V领开箱子从跛IQ查实的老司机 就', 'images/appicon/douyinicon.png', null, null, '2018-08-22 00:07:27', 'images/appscreenshot/interface-screenshot3.jpg');
INSERT INTO `app` VALUES ('22', 'Soul', '3', '2', '100', '1.0.Version', '0', '1013', null, '最新潮流', '创造了服务求鄂破if阿发巨蟹座，女啊回复的斯科拉法V领开箱子从跛IQ查实的老司机 就', 'images/appicon/soulicon.png', null, null, '2018-08-21 00:07:29', 'images/appscreenshot/interface-screenshot3.jpg');
INSERT INTO `app` VALUES ('23', '奇幻射击', '5', '2', '100', '1.0.Version', '0', '1012', null, '最新潮流', '创造了服务求鄂破if阿发巨蟹座，女啊回复的斯科拉法V领开箱子从跛IQ查实的老司机 就', 'images/gameicon/qihuanshejiicon.png', null, null, '2018-08-20 00:07:33', 'images/appscreenshot/interface-screenshot3.jpg');
INSERT INTO `app` VALUES ('24', '火柴人战斗3', '5', '3', '100', '1.0.Version', '0', '1013', null, '最新潮流', '创造了服务求鄂破if阿发巨蟹座，女啊回复的斯科拉法V领开箱子从跛IQ查实的老司机 就', 'images/gameicon/huochairenicon.png', null, null, '2018-08-19 00:07:35', 'images/appscreenshot/interface-screenshot3.jpg');
INSERT INTO `app` VALUES ('25', '荒野行动', '5', '3', '100', '1.0.Version', '0', '1014', null, '最新潮流', '创造了服务求鄂破if阿发巨蟹座，女啊回复的斯科拉法V领开箱子从跛IQ查实的老司机 就', 'images/gameicon/huangyexingdongicon.png', null, null, '2018-08-18 00:07:37', 'images/appscreenshot/interface-screenshot3.jpg');
INSERT INTO `app` VALUES ('26', '中国象棋', '7', '1', '100', '1.0.Version', '0', '1015', null, '最新潮流', '创造了服务求鄂破if阿发巨蟹座，女啊回复的斯科拉法V领开箱子从跛IQ查实的老司机 就', 'images/gameicon/xiangqiicon.png', null, null, '2018-08-17 00:07:39', 'images/appscreenshot/interface-screenshot3.jpg');
INSERT INTO `app` VALUES ('27', '三国杀', '7', '2', '100', '1.0.Version', '0', '1017', null, '最新潮流', '创造了服务求鄂破if阿发巨蟹座，女啊回复的斯科拉法V领开箱子从跛IQ查实的老司机 就', 'images/gameicon/sanguoshaicon.png', null, null, '2018-08-16 00:07:42', 'images/appscreenshot/interface-screenshot3.jpg');
INSERT INTO `app` VALUES ('28', '梦幻西游', '6', '3', '100', '1.0.Version', '0', '1017', null, '最新潮流', '创造了服务求鄂破if阿发巨蟹座，女啊回复的斯科拉法V领开箱子从跛IQ查实的老司机 就', 'images/gameicon/menghuanxiyouicon.png', null, null, '2018-08-15 00:07:44', 'images/appscreenshot/interface-screenshot3.jpg');
INSERT INTO `app` VALUES ('29', '诛仙', '6', '4', '100', '1.0.Version', '0', '1018', null, '最新潮流', '创造了服务求鄂破if阿发巨蟹座，女啊回复的斯科拉法V领开箱子从跛IQ查实的老司机 就', 'images/gameicon/zhuxianicon.png', null, null, '2018-08-14 00:07:47', 'images/appscreenshot/interface-screenshot3.jpg');
INSERT INTO `app` VALUES ('3', '楚留香', '6', '3', '100', '1.0.Version', '0', '1003', null, '好玩', '解放后三大浩丰科技sad了副科级阿富汗是否可拉伸机房最喜欢卡电话费阿发收款方陈志雄错派遣就', 'images/gameicon/chuliuxiangicon.png', null, null, '2018-08-11 23:56:24', 'images/appscreenshot/interface-screenshot1.jpg');
INSERT INTO `app` VALUES ('30', '万王之王3D', '6', '1', '100', '1.0.Version', '0', '1019', null, '最新潮流', '创造了服务求鄂破if阿发巨蟹座，女啊回复的斯科拉法V领开箱子从跛IQ查实的老司机 就', 'images/gameicon/wanwangzhiwangicon.png', null, null, '2018-08-13 00:07:49', 'images/appscreenshot/interface-screenshot3.jpg');
INSERT INTO `app` VALUES ('31', '皇室战争', '4', '2', '100', '1.0.Version', '0', '1020', null, '最新潮流', '创造了服务求鄂破if阿发巨蟹座，女啊回复的斯科拉法V领开箱子从跛IQ查实的老司机 就', 'images/gameicon/huangshizhanzhengicon.png', null, null, '2018-08-12 00:07:51', 'images/appscreenshot/interface-screenshot3.jpg');
INSERT INTO `app` VALUES ('32', '部落冲突', '4', '3', '100', '1.0.Version', '0', '1021', null, '最新潮流', '创造了服务求鄂破if阿发巨蟹座，女啊回复的斯科拉法V领开箱子从跛IQ查实的老司机 就', 'images/gameicon/buluochongtuicon.png', null, null, '2018-08-11 00:07:54', 'images/appscreenshot/interface-screenshot3.jpg');
INSERT INTO `app` VALUES ('33', '率土之滨', '4', '4', '100', '1.0.Version', '0', '1022', null, '最新潮流', '创造了服务求鄂破if阿发巨蟹座，女啊回复的斯科拉法V领开箱子从跛IQ查实的老司机 就', 'images/gameicon/shuaituzhibinicon.png', null, null, '2018-08-10 00:07:56', 'images/appscreenshot/interface-screenshot3.jpg');
INSERT INTO `app` VALUES ('34', '闲鱼', '1', '2', '100', '1.0.Version', '0', '1023', null, '最新潮流', '创造了服务求鄂破if阿发巨蟹座，女啊回复的斯科拉法V领开箱子从跛IQ查实的老司机 就', 'images/appicon/xianyuicon.png', null, null, '2018-08-09 00:07:58', 'images/appscreenshot/interface-screenshot3.jpg');
INSERT INTO `app` VALUES ('35', '当当', '1', '4', '100', '1.0.Version', '0', '1024', null, '最新潮流', '创造了服务求鄂破if阿发巨蟹座，女啊回复的斯科拉法V领开箱子从跛IQ查实的老司机 就', 'images/appicon/dangdangicon.png', null, null, '2018-08-08 00:08:01', 'images/appscreenshot/interface-screenshot3.jpg');
INSERT INTO `app` VALUES ('36', '土豆视频', '2', '3', '100', '1.0.Version', '0', '1025', null, '最新潮流', '创造了服务求鄂破if阿发巨蟹座，女啊回复的斯科拉法V领开箱子从跛IQ查实的老司机 就', 'images/appicon/tudouicon.png', null, null, '2018-08-07 00:08:02', 'images/appscreenshot/interface-screenshot3.jpg');
INSERT INTO `app` VALUES ('37', '企鹅FM', '2', '1', '100', '1.0.Version', '0', '1026', null, '最新潮流', '创造了服务求鄂破if阿发巨蟹座，女啊回复的斯科拉法V领开箱子从跛IQ查实的老司机 就', 'images/appicon/qiefmicon.png', null, null, '2018-08-06 00:08:05', 'images/appscreenshot/interface-screenshot3.jpg');
INSERT INTO `app` VALUES ('38', '暴风影音', '2', '2', '100', '1.0.Version', '0', '1027', null, '最新潮流', '创造了服务求鄂破if阿发巨蟹座，女啊回复的斯科拉法V领开箱子从跛IQ查实的老司机 就', 'images/appicon/baofengyingyinicon.png', null, null, '2018-08-05 00:08:07', 'images/appscreenshot/interface-screenshot3.jpg');
INSERT INTO `app` VALUES ('39', 'Miu', '3', '3', '100', '1.0.Version', '0', '1028', null, '最新潮流', '创造了服务求鄂破if阿发巨蟹座，女啊回复的斯科拉法V领开箱子从跛IQ查实的老司机 就', 'images/appicon/miuicon.png', null, null, '2018-08-04 00:08:09', 'images/appscreenshot/interface-screenshot3.jpg');
INSERT INTO `app` VALUES ('4', '绝地求生：刺激战场', '5', '1', '100', '1.0.Version', '0', '1004', null, '好玩', '创造了服务求鄂破if阿发巨蟹座，女啊回复的斯科拉法V领开箱子从跛IQ查实的老司机 就', 'images/gameicon/pubgcijizhanchangicon.png', null, null, '2018-08-12 23:56:27', 'images/appscreenshot/interface-screenshot2.jpg');
INSERT INTO `app` VALUES ('40', '钉钉', '3', '2', '100', '1.0.Version', '0', '1029', null, '最新潮流', '创造了服务求鄂破if阿发巨蟹座，女啊回复的斯科拉法V领开箱子从跛IQ查实的老司机 就', 'images/appicon/dingdingicon.png', 'http://download.alicdn.com/wireless/dingtalk/latest/rimet_700219.apk', null, '2018-08-03 00:08:11', 'images/appscreenshot/interface-screenshot3.jpg');
INSERT INTO `app` VALUES ('41', 'QQ1', null, null, null, null, null, null, null, null, null, 'images/appicon/weixinicon.png', '41', null, null, null);
INSERT INTO `app` VALUES ('42', 'QQ2', null, null, null, null, null, null, null, null, null, 'images/appicon/baofengyingyinicon.png', null, null, null, null);
INSERT INTO `app` VALUES ('43', 'QQ3', null, null, null, null, null, null, null, null, null, 'images/appicon/miuicon.png', null, null, null, null);
INSERT INTO `app` VALUES ('5', '欢乐斗地主', '7', '1', '100', '1.0.Version', '0', '1005', null, '好玩', '了快捷方式看到撒地方就看得见奥斯卡了非法风口浪尖撒非奸即盗法拉盛上岛咖啡办了卡会丢失非把数据库', 'images/gameicon/huanledoudizhuicon.png', null, null, '2018-08-06 23:56:31', 'images/appscreenshot/interface-screenshot3.jpg');
INSERT INTO `app` VALUES ('6', '淘宝', '1', '2', '100', '1.0.Version', '0', '1006', null, '好用', '解放后三大浩丰科技sad了副科级阿富汗是否可拉伸机房最喜欢卡电话费阿发收款方陈志雄错派遣就', 'images/appicon/taobaoicon.png', null, null, '2018-08-03 23:56:33', 'images/appscreenshot/interface-screenshot0-1.jpg');
INSERT INTO `app` VALUES ('7', '优酷', '2', '2', '100', '1.0.Version', '0', '1007', null, '好用', '创造了服务求鄂破if阿发巨蟹座，女啊回复的斯科拉法V领开箱子从跛IQ查实的老司机 就', 'images/appicon/youkuicon.png', null, null, '2018-08-01 23:56:36', 'images/appscreenshot/interface-screenshot1.jpg');
INSERT INTO `app` VALUES ('8', 'QQ', '3', '1', '100', '1.0.Version', '0', '1008', null, '好用', '了快捷方式看到撒地方就看得见奥斯卡了非法风口浪尖撒非奸即盗法拉盛上岛咖啡办了卡会丢失非把数据库', 'images/appicon/qqicon.png', null, null, '2018-07-31 23:56:39', 'images/appscreenshot/interface-screenshot2.jpg');
INSERT INTO `app` VALUES ('9', '微信', '3', '1', '100', '1.0.Version', '0', '1009', null, '好用', '创造了服务求鄂破if阿发巨蟹座，女啊回复的斯科拉法V领开箱子从跛IQ查实的老司机 就', 'images/appicon/weixinicon.png', null, null, '2018-08-14 23:56:45', 'images/appscreenshot/interface-screenshot3.jpg');

-- ----------------------------
-- Table structure for appcategory
-- ----------------------------
DROP TABLE IF EXISTS `appcategory`;
CREATE TABLE `appcategory` (
  `appcategoryid` varchar(50) NOT NULL,
  `appcategoryone` varchar(255) DEFAULT NULL,
  `appcategoryname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`appcategoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of appcategory
-- ----------------------------
INSERT INTO `appcategory` VALUES ('1', '应用', '网上购物');
INSERT INTO `appcategory` VALUES ('1C0D2D98390B41698319D07551853C7E', '游戏', '网络游戏');
INSERT INTO `appcategory` VALUES ('2', '应用', '影音图像');
INSERT INTO `appcategory` VALUES ('3', '应用', '通讯社交');
INSERT INTO `appcategory` VALUES ('4', '游戏', '卡牌游戏');
INSERT INTO `appcategory` VALUES ('5', '游戏', '动作射击');
INSERT INTO `appcategory` VALUES ('6', '游戏', '角色扮演');
INSERT INTO `appcategory` VALUES ('7', '游戏', '棋牌天地');
INSERT INTO `appcategory` VALUES ('9E13DB4FD90F4DC8BC155AC2D758B108', '应用', '简易出行');
INSERT INTO `appcategory` VALUES ('A6095E08D2B24967950E33499B2003BA', '游戏', '休闲娱乐');

-- ----------------------------
-- Table structure for appcollection
-- ----------------------------
DROP TABLE IF EXISTS `appcollection`;
CREATE TABLE `appcollection` (
  `appcollectionid` varchar(50) NOT NULL,
  `userid` varchar(50) DEFAULT NULL,
  `appid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`appcollectionid`),
  KEY `userid` (`userid`),
  KEY `appid` (`appid`),
  CONSTRAINT `appcollection_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE SET NULL,
  CONSTRAINT `appcollection_ibfk_2` FOREIGN KEY (`appid`) REFERENCES `app` (`appid`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of appcollection
-- ----------------------------

-- ----------------------------
-- Table structure for appcomment
-- ----------------------------
DROP TABLE IF EXISTS `appcomment`;
CREATE TABLE `appcomment` (
  `commentid` varchar(50) NOT NULL,
  `usernickname` varchar(255) DEFAULT NULL,
  `appid` varchar(50) DEFAULT NULL,
  `commentcontent` varchar(255) DEFAULT NULL,
  `commentdate` datetime DEFAULT NULL,
  `commentscore` int(11) DEFAULT NULL,
  PRIMARY KEY (`commentid`),
  KEY `userid` (`usernickname`(191)),
  KEY `appid` (`appid`),
  CONSTRAINT `appcomment_ibfk_2` FOREIGN KEY (`appid`) REFERENCES `app` (`appid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of appcomment
-- ----------------------------
INSERT INTO `appcomment` VALUES ('038324CF9C8A4D618EEF134B99AFED4F', '测试大帝', '39', 'vv', '2018-08-26 22:55:46', '3');
INSERT INTO `appcomment` VALUES ('0CBCAF1F6EAD4E2AAABA9A0C350B6A0B', '测试大帝', '40', 'k', '2018-08-27 10:10:32', '3');
INSERT INTO `appcomment` VALUES ('0E9FFB9D645E46E6811141523DB0771E', '测试大帝', '40', 'ss', '2018-08-26 22:44:35', '5');
INSERT INTO `appcomment` VALUES ('0EEC63F8EC1945EA819126DCEF584AC1', '小林子', '40', '啊', '2018-08-26 23:52:36', '10');
INSERT INTO `appcomment` VALUES ('1568CEDB011C473AB672CBF00CC5FFD8', '测试大帝', '39', 'ff', '2018-08-26 23:01:34', '2');
INSERT INTO `appcomment` VALUES ('1771C97CBF2A4EEC9867CEB2ABD75BE2', '测试大帝', '39', 'dd', '2018-08-26 23:03:46', '2');
INSERT INTO `appcomment` VALUES ('1B11D67F2D454DF8BE7C386BBAAF182A', '测试大帝', '40', 'zhoj', '2018-08-26 22:45:28', '3');
INSERT INTO `appcomment` VALUES ('1EAA071239C24C388563A03F9C8C0B3D', '测试大帝', '39', '？？', '2018-08-26 23:43:33', '6');
INSERT INTO `appcomment` VALUES ('20455DC10FAF42D9849870B118CF9CF9', '', '40', '好几把烦', '2018-08-27 16:12:15', '8');
INSERT INTO `appcomment` VALUES ('2225EB8791A6450B89DA9069CA3A3665', '小林子', '37', '方法', '2018-08-26 23:48:13', '5');
INSERT INTO `appcomment` VALUES ('2F50FF0D283C4BBD915E6366179B7D66', '测试大帝', '40', 'f', '2018-08-27 10:09:48', '2');
INSERT INTO `appcomment` VALUES ('311A1E661CAC49CDB9B66657D020E7C7', '', '34', '老咯', '2018-08-27 14:20:08', '5');
INSERT INTO `appcomment` VALUES ('34354FEF38874645817BF3D1F79DF54D', '测试大帝', '40', '啊', '2018-08-26 22:44:21', '5');
INSERT INTO `appcomment` VALUES ('390E55EEE3F643E9BAD76CF38C9860E0', '测试大帝', '39', 'b', '2018-08-26 22:58:54', '1');
INSERT INTO `appcomment` VALUES ('39E19BC427884ED68528E06ACC2FD4A4', '小林子', '37', '啊啊', '2018-08-26 23:47:57', '9');
INSERT INTO `appcomment` VALUES ('3D385394FAC74254930413497EAC6F88', '小林子', '38', '搜索', '2018-08-26 23:45:12', '8');
INSERT INTO `appcomment` VALUES ('42D9045FAF97493CA9CFA1151820ADF3', '小林子', '37', '还有这种操作？', '2018-08-26 23:45:56', '7');
INSERT INTO `appcomment` VALUES ('493B77CFAB2445B883E123E8B6273896', '测试大帝', '39', 'aa', '2018-08-27 17:32:35', '3');
INSERT INTO `appcomment` VALUES ('4F0DAA1CB44B4567886FB0754C22052F', '小林子', '40', '没错，我小林子又回来了', '2018-08-30 16:10:26', '9');
INSERT INTO `appcomment` VALUES ('4FB4A0AD46A24C9A91FAB08DD47F0082', '测试大帝', '39', 'fgds ', '2018-08-26 22:54:11', '9');
INSERT INTO `appcomment` VALUES ('5619455A29784C1B8E84BAF74790CF9B', '', '35', '砧板', '2018-08-27 14:18:44', '8');
INSERT INTO `appcomment` VALUES ('590F7B7933D24F7DB08CC7C383D545BD', '小林子', '40', '呵呵', '2018-08-26 23:51:04', '9');
INSERT INTO `appcomment` VALUES ('5C67BE1813C74C5CA5D1797F187CAC61', '测试大帝', '39', 'v', '2018-08-26 22:58:36', '4');
INSERT INTO `appcomment` VALUES ('5D7793E169384943B65375569A183BF2', '小林子', '27', '。', '2018-08-27 17:49:17', '1');
INSERT INTO `appcomment` VALUES ('64D4FFCC16564F72AB4C664E5ED27DC5', '小林子', '38', '方法', '2018-08-26 23:45:20', '3');
INSERT INTO `appcomment` VALUES ('66F885E4DFF542BEB1E47C9F837A1D1E', '', '35', '呵呵', '2018-08-27 14:19:44', '1');
INSERT INTO `appcomment` VALUES ('71B0DB199E3146E19EB44815D409ED9A', '测试大帝', '39', '真香', '2018-08-26 23:15:28', '10');
INSERT INTO `appcomment` VALUES ('74E17E8468C44676918FDD619DE2792E', '小林子', '37', '订单', '2018-08-26 23:48:18', '8');
INSERT INTO `appcomment` VALUES ('7A9C2B2ABA7C4CC38D624DC424306B99', '小林子', '37', '不会吧', '2018-08-26 23:46:14', '10');
INSERT INTO `appcomment` VALUES ('7AFE0EBCE56F4466B0068F6DD636205D', '测试大帝', '39', '雄风的', '2018-08-26 23:07:52', '2');
INSERT INTO `appcomment` VALUES ('7D6426C852C043849D2E44A662BE272E', '小林子', '8', '那我是第二个咯', '2018-08-30 16:01:26', '9');
INSERT INTO `appcomment` VALUES ('7EB8B98AC81747B6B4C57E4B8F9CB70C', '小林子', '27', '？', '2018-08-27 17:49:01', '10');
INSERT INTO `appcomment` VALUES ('80E5B189CC06400F877D9C45C6CFE13B', '小林子', '40', '分', '2018-08-26 23:52:32', '2');
INSERT INTO `appcomment` VALUES ('88D6FC1FEF274DFFB86E37E0D2A40CEF', '测试大帝', '40', 'zhenxi', '2018-08-26 22:44:50', '1');
INSERT INTO `appcomment` VALUES ('8AE05507A7B844E0987086052042EF0F', '小林子', '40', '哈哈', '2018-08-26 23:44:26', '10');
INSERT INTO `appcomment` VALUES ('8DDCA75945034D65B5A9B552CF055284', '小林子', '27', '？', '2018-08-27 17:49:11', '8');
INSERT INTO `appcomment` VALUES ('94D3157A5E5641CD892D3235DCDCE0EC', '测试大帝', '39', 'v', '2018-08-26 22:56:29', '1');
INSERT INTO `appcomment` VALUES ('9E5828A769BB42EEA3E52C7499C66C2F', '小林子', '27', '？', '2018-08-27 17:49:07', '7');
INSERT INTO `appcomment` VALUES ('9E8DE53EDCA14D7991EF57B6044DDFDE', '小林子', '27', '这是第一个评论', '2018-08-27 17:48:33', '10');
INSERT INTO `appcomment` VALUES ('A6CBD5B52E66456B99E32B219983FF3D', '小林子', '40', '看看', '2018-08-26 23:50:57', '2');
INSERT INTO `appcomment` VALUES ('AF69B0B74D874E419D9C6F5C766153CD', '小林子', '40', '发送到', '2018-08-26 23:48:42', '10');
INSERT INTO `appcomment` VALUES ('B037AD9E15854ABF8A0FDC10841F0C01', '小林子', '40', '阿发', '2018-08-26 23:48:38', '3');
INSERT INTO `appcomment` VALUES ('B2A24863D6084D1D8E6B410F6262DFA8', '测试大帝', '39', 'f', '2018-08-26 22:59:29', '2');
INSERT INTO `appcomment` VALUES ('BB1EF11A23DA4236AE7303F6169850EE', '小林子', '39', '我来了', '2018-08-26 23:44:42', '9');
INSERT INTO `appcomment` VALUES ('BDB0F94B9D3F417B85A7ABB85954E730', '测试大帝', '39', 'fds', '2018-08-26 22:56:52', '3');
INSERT INTO `appcomment` VALUES ('BFD32F46744D4035A3B726BFA660A073', '测试大帝', '39', 'jkahd', '2018-08-26 22:55:10', '1');
INSERT INTO `appcomment` VALUES ('BFE0B506696B44E4B1310845F220FE59', '', '40', 'fuck', '2018-08-27 17:13:40', '5');
INSERT INTO `appcomment` VALUES ('C103C05FA6764FAABE425227F3CCEF50', '小林子', '37', '方法', '2018-08-26 23:47:51', '2');
INSERT INTO `appcomment` VALUES ('C18CACE4F627424E8FFA160F2E0AF32D', '', '40', '??', '2018-08-27 17:22:59', '10');
INSERT INTO `appcomment` VALUES ('C3D50951B4F345E8B2D0414584A7DD2B', '测试大帝', '39', 'aa', '2018-08-26 23:02:00', '3');
INSERT INTO `appcomment` VALUES ('C5695112AE8D49B89FE96CD45EB155A8', '测试大帝', '40', '呵呵', '2018-08-26 23:42:45', '10');
INSERT INTO `appcomment` VALUES ('C7754FE076404AB483DAEC8B84310126', '测试大帝', '40', '呵呵', '2018-08-26 23:31:21', '10');
INSERT INTO `appcomment` VALUES ('CA050E9F47BD4599977EDB63175E854D', '', '35', '还行', '2018-08-27 14:18:33', '10');
INSERT INTO `appcomment` VALUES ('CB86C64BC93941C3A7D3B89B8E1FB090', '测试大帝', '39', '真', '2018-08-26 23:13:31', '2');
INSERT INTO `appcomment` VALUES ('CEF479842B7648A3BB924608BE53E212', '', '40', '烦', '2018-08-27 15:59:34', '10');
INSERT INTO `appcomment` VALUES ('D03B371F3EC34F89AEB058D2C9158178', '小林子', '37', '啊啊', '2018-08-26 23:48:22', '8');
INSERT INTO `appcomment` VALUES ('D34C45E62EE149DBA712BA69CFB82037', '测试大帝', '39', 'dd', '2018-08-26 23:04:01', '8');
INSERT INTO `appcomment` VALUES ('D539789B36A64186B97109F3F8ACC579', '测试大帝', '39', 'zhe', '2018-08-26 22:54:06', '4');
INSERT INTO `appcomment` VALUES ('D7B1027A158C411388EAB5011472ADEC', '小林子', '38', '握草', '2018-08-26 23:45:37', '2');
INSERT INTO `appcomment` VALUES ('DAAE1D10BFF848D68CB449CFBF4FF919', '', '32', '进攻游戏', '2018-08-27 14:20:21', '7');
INSERT INTO `appcomment` VALUES ('DE297943293740828B0258EA4C857CA9', '开心', '8', '第三个评论', '2018-09-06 08:47:03', '7');
INSERT INTO `appcomment` VALUES ('DE3D9CBA76644E10B7302921BB2936E7', '', '40', '很几把烦了', '2018-08-27 16:20:03', '3');
INSERT INTO `appcomment` VALUES ('E0D02D00E056471FA06F1E76D988DFBF', '小林子', '27', '没错我又评论了', '2018-08-27 17:48:53', '9');
INSERT INTO `appcomment` VALUES ('E1F76002AA714AFB8404BD2841766DCD', '测试大帝', '39', 'ff ', '2018-08-27 17:32:41', '9');
INSERT INTO `appcomment` VALUES ('E4558142592943BEAC097B92042DFDC5', '小林子', '18', '我小林子来了', '2018-08-27 17:45:37', '10');
INSERT INTO `appcomment` VALUES ('E60A33CB61834D0D880464CF145775E5', '小林子', '38', '我小林子来测试了', '2018-08-26 23:45:00', '8');
INSERT INTO `appcomment` VALUES ('E9C1BA486553473C9EB919EFA2351B3A', '测试大帝', '39', 'hh', '2018-08-26 23:00:13', '3');
INSERT INTO `appcomment` VALUES ('EC21A6EFD0B041839342865015615937', '', '35', '好用', '2018-08-27 14:18:09', '10');
INSERT INTO `appcomment` VALUES ('EC2491040A62405AA17422509284DF3C', '小林子', '38', '订单', '2018-08-26 23:45:25', '8');
INSERT INTO `appcomment` VALUES ('ED0059D66AAB44EABFD77BAEC5129981', '', '34', '刷分', '2018-08-27 14:19:59', '2');
INSERT INTO `appcomment` VALUES ('F03BF32B5C10473ABA93C3C240ECA9F5', '测试大帝', '40', 'zh', '2018-08-26 22:53:10', '10');
INSERT INTO `appcomment` VALUES ('F42D3CCC05774BFE83BBED4D4B27E60D', '', '8', '这是第一个评论', '2018-08-30 15:57:06', '10');

-- ----------------------------
-- Table structure for developer
-- ----------------------------
DROP TABLE IF EXISTS `developer`;
CREATE TABLE `developer` (
  `developerid` varchar(50) NOT NULL,
  `developername` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`developerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of developer
-- ----------------------------
INSERT INTO `developer` VALUES ('1', '腾讯');
INSERT INTO `developer` VALUES ('13CFC14B3D2F445EB1BCE19708647845', '华为');
INSERT INTO `developer` VALUES ('2', '阿里');
INSERT INTO `developer` VALUES ('3', '网易');
INSERT INTO `developer` VALUES ('4', '未知');
INSERT INTO `developer` VALUES ('6578DD62C1AF4D5287FC08D36A107301', '大佬');
INSERT INTO `developer` VALUES ('6767F219979446199D077262BA20727F', '魅族');
INSERT INTO `developer` VALUES ('76E95307FBB248B78C60B70D99253509', '搜狐');
INSERT INTO `developer` VALUES ('CB479E89C60E40488B79817C2B520182', '百度');
INSERT INTO `developer` VALUES ('DDC4B09457F94DC18E46038DF9595D91', '屮艸');
INSERT INTO `developer` VALUES ('E27D8D10AAE348F691C1954340F93B20', '新浪');

-- ----------------------------
-- Table structure for subject
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `subjectid` varchar(50) NOT NULL,
  `userid` varchar(50) DEFAULT NULL,
  `subjecttitle` varchar(255) DEFAULT NULL COMMENT '专题标题',
  `subjectcreatetime` datetime DEFAULT NULL COMMENT '创建时间',
  `subjectpic` varchar(255) DEFAULT NULL COMMENT '封面图片',
  `subjectlikecount` int(11) DEFAULT NULL COMMENT '喜欢量',
  `subjectdislikecount` int(11) DEFAULT NULL COMMENT '不喜欢量',
  `subjectviewcount` int(11) DEFAULT NULL COMMENT '观看量',
  PRIMARY KEY (`subjectid`),
  KEY `userid` (`userid`),
  CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of subject
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` varchar(50) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `usernickname` varchar(255) DEFAULT NULL,
  `useremail` varchar(255) DEFAULT NULL,
  `userphone` varchar(255) DEFAULT NULL,
  `usersex` varchar(255) DEFAULT '',
  `usericon` varchar(255) DEFAULT NULL,
  `userbirthday` datetime DEFAULT NULL,
  `userregisttime` datetime DEFAULT NULL,
  `useridentity` int(11) DEFAULT NULL COMMENT '{0：普通用户（只是注册了的用户），1：基础用户（完善了基本信息），2：专题主（可以发表应用测评）}',
  `usertruename` varchar(255) DEFAULT NULL,
  `useraddress` varchar(255) DEFAULT NULL,
  `useridentitycard` varchar(255) DEFAULT NULL,
  `userqq` varchar(255) DEFAULT NULL COMMENT 'qq',
  `userweibo` varchar(255) DEFAULT NULL COMMENT '微博',
  `userwechat` varchar(255) DEFAULT NULL COMMENT '微信',
  `userdesc` varchar(255) DEFAULT NULL COMMENT '用户自我描述',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2100658C8EAC4CF9B3808BDC44424CF0', 'zhonglaoban', 'a', '小林子', 'xiaolinzi@123.com', '123', '男', 'images/usericon/usericon.jpg', '1995-09-10 16:51:54', '2018-08-20 15:46:11', '2', '钟海林', '广东深圳', '1234567890', '1976172204', null, null, '我们一起学老板叫~~~');
INSERT INTO `user` VALUES ('66A421066CB641159CF3D31D07FE71BF', 'admin', '1', 'aa', '1234@qq.com', null, '男', 'images/usericon/yysicon.png', null, '2018-08-16 15:41:02', '0', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('6CDFEF76A615423F8ABDD8F784BE68FE', 'zhangsan', '123', '弓长', '123@qq.com', null, '女', 'images/usericon/fategoicon.png', null, '2018-08-15 22:48:24', '0', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('73411BB255564444936EF2D7B7ACF2DC', 'admin1', '123', 'nickname', 'aaa@qq.com', null, '男', 'images/usericon/benghuai3icon.png', null, '2018-08-16 16:04:26', '0', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('841ADE400D5141C29D7A56BA84BADC5D', 'test', 'a', '测试大帝', 'aafasa@qq.com', '7489173508974', '男', 'images/usericon/yysicon.png', '2018-01-31 00:00:00', '2018-08-23 21:51:40', '2', '李四', '交大', '4783578923075', null, null, null, '老板怎么这么好看');
INSERT INTO `user` VALUES ('9606791E7DB44C27AB55EEB17FB41D59', 'zhangsan1', '123', '弓长一', '12345@qq.com', null, '女', 'images/usericon/yysicon.png', null, '2018-08-15 22:50:45', '0', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('9AC950FF678144D3988184510937B1BA', 'asd', 'a', '发生', 'fads', null, '', 'images/usericon/yysicon.png', null, '2018-08-23 21:51:00', '0', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('AB9DAE3AE9FA4D67B27C000379B32086', 'a', 'a', 'a', 'a', null, '男', '', null, '2018-08-16 16:39:02', '0', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('B9A82CFB67074E81905B2DE3F36CA010', 'nickname1', '123', 'nickname1', 'aaa12@qq.com', null, '女', '', null, '2018-08-16 17:03:19', '0', null, null, null, null, null, null, null);
INSERT INTO `user` VALUES ('C3535624984D4FEDAAAAF1B22C1E98ED', 'a123', 'a', '开心', 'aaa2@aa.com', '1443214', '男', 'images/usericon/yysicon.png', '2018-09-05 00:00:00', '2018-09-06 08:40:47', '2', '钟海林', '深圳', '123', null, null, null, 'asd');
INSERT INTO `user` VALUES ('DBBAEF0018C34C16B3554667421E1BEE', 'fasdfsd', 'aa', 'fasdf', 'fdsaf', null, '', 'images/usericon/yysicon.png', null, '2018-09-01 16:00:37', '0', null, null, null, null, null, null, null);
