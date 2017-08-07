/*
MySQL Data Transfer
Source Host: localhost
Source Database: xmxxapp
Target Host: localhost
Target Database: xmxxapp
Date: 2014/9/7 9:58:49
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for carte
-- ----------------------------
DROP TABLE IF EXISTS `carte`;
CREATE TABLE `carte` (
  `id` bigint(20) NOT NULL auto_increment,
  `carteno` varchar(20) NOT NULL,
  `cartename` varchar(20) NOT NULL,
  `material` varchar(50) NOT NULL,
  `synopsis` varchar(50) default NULL,
  `classesno` varchar(20) NOT NULL,
  `price` float(20,0) NOT NULL,
  `cartetime` datetime default NULL,
  `cartenote` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for classes
-- ----------------------------
DROP TABLE IF EXISTS `classes`;
CREATE TABLE `classes` (
  `id` bigint(20) NOT NULL auto_increment,
  `classesno` varchar(20) NOT NULL,
  `classesname` varchar(20) NOT NULL,
  `classestime` datetime default NULL,
  `classesnote` varchar(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `classesNo` (`classesno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for datacount
-- ----------------------------
DROP TABLE IF EXISTS `datacount`;
CREATE TABLE `datacount` (
  `cost` float default NULL,
  `SelectAppDownload` int(11) default NULL,
  `choosefood` varchar(255) default NULL,
  `CostAge` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for diningtable
-- ----------------------------
DROP TABLE IF EXISTS `diningtable`;
CREATE TABLE `diningtable` (
  `id` bigint(20) NOT NULL auto_increment,
  `dtno` varchar(20) NOT NULL,
  `dtname` varchar(20) NOT NULL,
  `dttime` datetime default NULL,
  `dtnote` varchar(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `TableNo` (`dtno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for foodevaluation
-- ----------------------------
DROP TABLE IF EXISTS `foodevaluation`;
CREATE TABLE `foodevaluation` (
  `id` bigint(20) NOT NULL auto_increment,
  `guuser` varchar(30) character set utf8 default NULL,
  `carteno` varchar(30) character set utf8 default NULL,
  `cartename` varchar(50) character set utf8 default NULL,
  `carteping` varchar(100) character set utf8 default NULL,
  `cptime` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for foodshop
-- ----------------------------
DROP TABLE IF EXISTS `foodshop`;
CREATE TABLE `foodshop` (
  `ID` bigint(20) NOT NULL auto_increment,
  `Businesslicense` varchar(50) NOT NULL,
  `fsname` varchar(50) NOT NULL,
  `fsphone` varchar(50) NOT NULL,
  `fsAddress` varchar(50) NOT NULL,
  `fsdescribe` varchar(50) default NULL,
  `fstime` datetime default NULL,
  `fsnote` varchar(20) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for guinformation
-- ----------------------------
DROP TABLE IF EXISTS `guinformation`;
CREATE TABLE `guinformation` (
  `ID` bigint(20) NOT NULL auto_increment,
  `GuUser` varchar(20) NOT NULL,
  `GuPwd` varchar(20) NOT NULL,
  `GuName` varchar(20) NOT NULL,
  `GuPhone` varchar(20) NOT NULL,
  `GuSex` varchar(20) default NULL,
  `GuMail` varchar(20) default NULL,
  `GuBirthday` varchar(20) default NULL,
  `GuTime` datetime NOT NULL,
  `GuNote` varchar(20) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for indent
-- ----------------------------
DROP TABLE IF EXISTS `indent`;
CREATE TABLE `indent` (
  `id` bigint(20) NOT NULL auto_increment,
  `indentno` varchar(70) NOT NULL,
  `indentstate` varchar(50) default NULL,
  `dtno` varchar(20) NOT NULL,
  `carteno` varchar(200) NOT NULL,
  `pricsum` float(20,0) NOT NULL,
  `indentnote` varchar(20) default NULL,
  `indenttime` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for managerinf
-- ----------------------------
DROP TABLE IF EXISTS `managerinf`;
CREATE TABLE `managerinf` (
  `id` bigint(20) NOT NULL auto_increment,
  `MiUser` varchar(20) NOT NULL,
  `MiPwd` varchar(20) NOT NULL,
  `Jurisdiction` varchar(20) NOT NULL,
  `MiName` varchar(20) NOT NULL,
  `MiTime` datetime default NULL,
  `MiNote` varchar(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for words_cat
-- ----------------------------
DROP TABLE IF EXISTS `words_cat`;
CREATE TABLE `words_cat` (
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `comment` varchar(20) NOT NULL,
  `addtime` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `carte` VALUES ('1', 'carte001', '东坡肘子', 'carte001', 'carte001', '11', '67', '2014-09-01 15:43:25', 'chuanfood');
INSERT INTO `carte` VALUES ('2', 'carte002', '夫妻肺片', 'carte002', 'carte002', '11', '33', null, 'chuanfood');
INSERT INTO `carte` VALUES ('3', 'carte003', '干烧桂鱼', 'carte003', 'carte003', '11', '37', null, 'chuanfood');
INSERT INTO `carte` VALUES ('4', 'carte004', '宫保鸡丁', 'carte004', 'carte004', '11', '45', null, 'chuanfood');
INSERT INTO `carte` VALUES ('5', 'carte005', '回锅肉', 'carte005', 'carte005', '11', '40', null, 'chuanfood');
INSERT INTO `carte` VALUES ('6', 'carte006', '水煮鱼', 'carte006', 'carte006', '11', '123', null, 'chuanfood');
INSERT INTO `carte` VALUES ('7', 'carte007', '鱼香肉丝', 'carte007', 'carte007', '11', '30', null, 'chuanfood');
INSERT INTO `carte` VALUES ('8', 'carte008', '干烧岩鲤', 'carte008', 'carte008', '11', '40', null, 'chuanfood');
INSERT INTO `carte` VALUES ('9', 'carte009', '麻婆豆腐', 'carte009', 'carte009', '11', '12', null, 'chuanfood');
INSERT INTO `carte` VALUES ('10', 'carte010', '酸菜鱼', 'carte010', 'carte010', '11', '70', null, 'chuanfood');
INSERT INTO `carte` VALUES ('11', 'carte011', '凤炖牡丹', 'carte011', 'carte011', '11', '55', '2014-09-06 11:55:44', '徽菜');
INSERT INTO `carte` VALUES ('12', 'carte012', '虎皮毛豆腐', 'carte012', 'carte012', '11', '25', '2014-09-06 11:56:21', '徽菜');
INSERT INTO `carte` VALUES ('13', 'carte013', '黄山炖鸽', 'carte013', 'carte013', '11', '54', '2014-09-06 11:56:46', '徽菜');
INSERT INTO `carte` VALUES ('14', 'carte014', '火腿炖甲鱼', 'carte014', 'carte014', '11', '32', '2014-09-06 11:57:20', '徽菜');
INSERT INTO `carte` VALUES ('15', 'carte015', '蜜汁红芋', 'carte015', 'carte015', '11', '34', '2014-09-06 11:57:46', '徽菜');
INSERT INTO `carte` VALUES ('16', 'carte016', '清蒸石鸡', 'carte016', 'carte016', '11', '43', '2014-09-06 11:58:08', '徽菜');
INSERT INTO `carte` VALUES ('17', 'carte017', '香菇板栗', 'carte017', 'carte017', '11', '34', '2014-09-06 11:58:29', '徽菜');
INSERT INTO `carte` VALUES ('18', 'carte018', '香菇盒', 'carte018', 'carte018', '11', '35', '2014-09-06 11:58:46', '徽菜');
INSERT INTO `carte` VALUES ('19', 'carte019', '腌鲜鳜鱼', 'carte019', 'carte019', '11', '76', '2014-09-06 11:59:05', '徽菜');
INSERT INTO `carte` VALUES ('20', 'carte020', '杨梅丸子', 'carte020', 'carte020', '11', '65', '2014-09-06 11:59:25', '徽菜');
INSERT INTO `classes` VALUES ('1', '11', '11', '2014-08-29 13:28:42', '11111');
INSERT INTO `classes` VALUES ('2', '11111111', '11111111', '2014-08-29 13:28:48', '1112222222');
INSERT INTO `classes` VALUES ('3', '222221', '2222222222222', '2014-08-29 13:29:01', '2222222222222');
INSERT INTO `classes` VALUES ('5', 'ssssssss', 'ssssssssssss', '2014-08-29 13:31:14', 'ssssssss');
INSERT INTO `classes` VALUES ('6', 'as', 'sa', '2014-08-30 07:38:36', 'sas');
INSERT INTO `diningtable` VALUES ('1', '111111', '0', '2014-08-08 13:35:30', '1111111');
INSERT INTO `diningtable` VALUES ('2', '232', '0', '2014-08-30 07:39:41', 'awe');
INSERT INTO `diningtable` VALUES ('3', '2133', '0', '2014-08-30 07:39:56', '1321');
INSERT INTO `diningtable` VALUES ('4', '212333', '1', '2014-08-30 07:41:36', 'wqwssa');
INSERT INTO `diningtable` VALUES ('5', '001', '0', '2014-09-03 15:34:08', '001');
INSERT INTO `diningtable` VALUES ('6', '002', '0', '2014-09-03 15:34:16', '002');
INSERT INTO `diningtable` VALUES ('7', '003', '0', '2014-09-03 15:34:24', '003');
INSERT INTO `diningtable` VALUES ('8', '004', '0', '2014-09-03 15:34:33', '004');
INSERT INTO `diningtable` VALUES ('9', '005', '0', '2014-09-04 17:33:48', '21');
INSERT INTO `diningtable` VALUES ('10', '006', '0', '2014-09-06 12:32:48', '006');
INSERT INTO `diningtable` VALUES ('11', '007', '1', '2014-10-15 12:33:04', '007');
INSERT INTO `diningtable` VALUES ('12', '008', '0', '2014-09-24 12:33:19', '008');
INSERT INTO `foodevaluation` VALUES ('2', '002', 'carte001', '002', '002', '2014-09-05 17:24:29');
INSERT INTO `foodevaluation` VALUES ('3', '003', 'carte001', 'df', '003', '2014-09-05 17:24:36');
INSERT INTO `foodevaluation` VALUES ('4', '001', 'carte001', '001', '001', '2014-09-05 17:26:04');
INSERT INTO `foodevaluation` VALUES ('5', '004', 'carte002', 'ddd', 'ddddddd', '2014-09-06 12:13:47');
INSERT INTO `foodevaluation` VALUES ('6', '003', 'carte004', 'www', 'WWWWWWWWWW', '2014-09-06 15:23:07');
INSERT INTO `foodevaluation` VALUES ('7', 'SDA', 'DSA', 'dA', 'AD', '2014-09-06 15:23:40');
INSERT INTO `foodevaluation` VALUES ('8', '003', 'carte001', '001', '111111111111111111', null);
INSERT INTO `foodevaluation` VALUES ('9', '003', 'carte001', '000', '111111111111111111', '2014-09-06 16:57:53');
INSERT INTO `foodevaluation` VALUES ('10', '003', 'carte001', '232323', '111111111111111111', '2014-09-06 17:17:09');
INSERT INTO `foodevaluation` VALUES ('11', 'fda', 'fda', 'fda', 'fds', '2014-09-06 17:26:07');
INSERT INTO `foodevaluation` VALUES ('12', '0023', 'carte001', '东坡肘子', '111111111111111111', '2014-09-06 17:38:03');
INSERT INTO `foodshop` VALUES ('1', 'wwdsa', 'ww', 'ww', 'w', 'ww', '2014-08-30 12:34:01', 'www');
INSERT INTO `foodshop` VALUES ('2', 'wa', 'dsa', 'as', 'a', 'sas', '2014-08-31 15:39:32', 'aa');
INSERT INTO `foodshop` VALUES ('3', 'aaaaaaaaaa', 'aaaaaaaaa', 'aaaaaaaa', 'aaaaaaaaaaa', 'aaaaaaaa', '2014-08-31 15:40:11', 'aaaaaaaaaaa');
INSERT INTO `foodshop` VALUES ('4', 'd', 'dsad', 'ds', 'ds', 'sasds', '2014-08-31 21:04:04', 'sd');
INSERT INTO `foodshop` VALUES ('5', 'admm', 'addd', '1222222', '2222222222', '222222222', '2014-09-03 15:35:06', '22222222');
INSERT INTO `foodshop` VALUES ('6', 'fda', 'fda', 'fda', 'dfa答复', '打', '2014-09-06 17:25:25', '福大');
INSERT INTO `guinformation` VALUES ('1', '001', '001', '001', '001', '男', '001@qq.com', '123', '2014-08-14 10:15:13', '123');
INSERT INTO `guinformation` VALUES ('2', '002', '002', '002', '002', '男', '002@qq.com', '123', '2014-08-28 22:32:57', '123');
INSERT INTO `guinformation` VALUES ('3', '003', '003', '003', '003', '女', '003@qq.com', '123', '2014-08-29 20:40:11', '123');
INSERT INTO `guinformation` VALUES ('4', '004', '004', '004', '004', '男', '004@qq.com', '123', '2014-08-30 07:38:06', '123');
INSERT INTO `indent` VALUES ('1', 'wwss', 'wwss', 'wwsss', 'wwwsss', '221', 'weq', '2014-08-30 08:34:57');
INSERT INTO `indent` VALUES ('2', 'wewe', 'fewf', '111111', '22', '321', 'weaa', '2014-08-30 08:50:08');
INSERT INTO `indent` VALUES ('3', '00sa3', '00sa3', '003', 'carteno003', '3212', '我不要菜', '2014-09-04 13:10:20');
INSERT INTO `indent` VALUES ('4', '0060000', '1', '1', '酸菜鱼', '123', '1', '2014-09-04 13:23:44');
INSERT INTO `indent` VALUES ('5', '00600007', '1', '1', ',回锅肉,干烧岩鲤,宫保鸡丁', '369', '1', '2014-09-04 13:42:07');
INSERT INTO `indent` VALUES ('6', '0020021409810822838', '1', '1', ',麻婆豆腐,干烧岩鲤', '246', '1', '2014-09-04 14:07:08');
INSERT INTO `indent` VALUES ('7', '0021409811197039', '1', '1', ',麻婆豆腐,水煮鱼,回锅肉,干烧岩鲤', '215', '1', '2014-09-04 14:13:22');
INSERT INTO `indent` VALUES ('8', '用户名：002,2014年09月04日    14:28:11', '1', '1', ',干烧岩鲤,回锅肉,麻婆豆腐', '92', '1', '2014-09-04 14:28:17');
INSERT INTO `indent` VALUES ('9', '00220140904 143118', '1', '1', ',干烧岩鲤,麻婆豆腐,水煮鱼,回锅肉,宫保鸡丁', '260', '1', '2014-09-04 14:31:24');
INSERT INTO `indent` VALUES ('10', '00220140904 190640', null, '232', ',酸菜鱼,鱼香肉丝', '100', null, '2014-09-04 19:06:46');
INSERT INTO `indent` VALUES ('11', '00220140904 190952', null, '232', ',干烧岩鲤,水煮鱼,干烧桂鱼', '200', null, '2014-09-04 19:09:58');
INSERT INTO `indent` VALUES ('12', '00220140904 191124', null, '001', ',鱼香肉丝,水煮鱼,麻婆豆腐', '165', null, '2014-09-04 19:11:30');
INSERT INTO `indent` VALUES ('13', '00220140904 191153', null, '001', ',麻婆豆腐,水煮鱼,回锅肉,干烧岩鲤', '215', null, '2014-09-04 19:11:59');
INSERT INTO `indent` VALUES ('14', '00220140904 191204', null, '001', ',麻婆豆腐,麻婆豆腐,麻婆豆腐', '36', null, '2014-09-04 19:12:09');
INSERT INTO `indent` VALUES ('15', '00220140906 114603', null, '002', ',干烧岩鲤,水煮鱼,回锅肉,酸菜鱼', '273', null, '2014-09-06 11:46:10');
INSERT INTO `indent` VALUES ('17', '003', '003', '003', 'carteno003', '3212', '我不要菜', '2014-09-06 15:27:08');
INSERT INTO `managerinf` VALUES ('1', 'wxy', 'wxy', '001', 'wxy', null, null);
INSERT INTO `managerinf` VALUES ('14', 'sa', 'adw', '001', 'fd', null, null);
INSERT INTO `managerinf` VALUES ('15', 'wwwwwwwfds', 'sa', '12', 'wxy', null, null);
INSERT INTO `managerinf` VALUES ('19', 'wwwreea', 'qw', '12', 'wqq', null, null);
INSERT INTO `managerinf` VALUES ('20', 'asdw', 'ss', '32', 'wqssa', '2014-08-27 09:20:53', 'xzz');
INSERT INTO `managerinf` VALUES ('21', 'sssssss', 'ssssssssss', 'ssssssssss', 'ssssssssss', '2014-08-27 09:21:48', 'sssssssssssss');
INSERT INTO `managerinf` VALUES ('22', 'dd', 'dddd', 'ddddd', 'ddd', '2014-08-27 15:08:01', 'dddddd');
INSERT INTO `managerinf` VALUES ('25', '222', '111', '111aa', '111', '2014-09-03 15:30:47', '111');
INSERT INTO `words_cat` VALUES ('1', 'ss1', 'ss1', '2014-08-13 17:29:48');
INSERT INTO `words_cat` VALUES ('2', 'ss2', 'ss2', '2014-08-30 17:30:21');
INSERT INTO `words_cat` VALUES ('3', 'ss3', 'ss3', '2014-09-02 17:30:46');
INSERT INTO `words_cat` VALUES ('4', 'ss5', 'ss4', '2014-09-11 17:30:56');
