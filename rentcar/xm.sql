/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50530
Source Host           : localhost:3306
Source Database       : xm

Target Server Type    : MYSQL
Target Server Version : 50530
File Encoding         : 65001

Date: 2017-11-17 10:02:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cars`
-- ----------------------------
DROP TABLE IF EXISTS `cars`;
CREATE TABLE `cars` (
  `carnumber` varchar(20) NOT NULL,
  `cartype` varchar(50) NOT NULL,
  `color` varchar(10) NOT NULL,
  `price` float(10,2) NOT NULL,
  `rentprice` float(10,2) NOT NULL,
  `deposit` float(10,2) NOT NULL,
  `isrenting` varchar(20) NOT NULL,
  `cardesc` varchar(500) DEFAULT NULL,
  `carimg` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`carnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cars
-- ----------------------------
INSERT INTO `cars` VALUES ('8888', 'dfafdf', 'orange', '3445.00', '33.00', '66.00', '0', 'dsdsf', 'a38e8153-ab1b-4bdb-ae59-5e05e80ebf38.png');
INSERT INTO `cars` VALUES ('test', 'dsfd', 'sdf', '23.00', '23.00', '24.00', '1', 'dfgh', null);
INSERT INTO `cars` VALUES ('trett', '23424', 'co', '64.00', '234.00', '345.00', '1', 'esfdghj', '02302f7b-bdf6-45ad-b54d-955e290d293d.jpg');
INSERT INTO `cars` VALUES ('wdsfasdf', 'fdsf', 'fsdf', '55.00', '234.00', '234.00', '0', '3245rty', '0a660ce5-4f14-41bf-9d30-21fde4cfbc98.jpg');

-- ----------------------------
-- Table structure for `checktable`
-- ----------------------------
DROP TABLE IF EXISTS `checktable`;
CREATE TABLE `checktable` (
  `checkid` varchar(20) NOT NULL,
  `checkdate` date NOT NULL,
  `field` varchar(100) DEFAULT NULL,
  `problem` varchar(100) DEFAULT NULL,
  `paying` float(10,2) DEFAULT NULL,
  `username` varchar(40) NOT NULL,
  `rentid` varchar(20) NOT NULL,
  PRIMARY KEY (`checkid`),
  KEY `CHECKTABLE_USERS_FK1` (`username`),
  KEY `CHECKTABLE_RENTTABLE_FK2` (`rentid`),
  CONSTRAINT `CHECKTABLE_RENTTABLE_FK2` FOREIGN KEY (`rentid`) REFERENCES `renttable` (`rentid`),
  CONSTRAINT `CHECKTABLE_USERS_FK1` FOREIGN KEY (`username`) REFERENCES `users` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of checktable
-- ----------------------------
INSERT INTO `checktable` VALUES ('1510579637518', '2017-11-13', '789', '879', '89.00', 'admin', '1510579442426');
INSERT INTO `checktable` VALUES ('1510664558190', '2017-11-15', 'qwe', 'dccfvgbh', '600.00', 'admin', '1510664433577');
INSERT INTO `checktable` VALUES ('1510716280017', '2017-11-15', '444', '445', '545.00', 'admin', '1510716176531');

-- ----------------------------
-- Table structure for `customers`
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
  `identity` varchar(20) NOT NULL,
  `custname` varchar(40) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `career` varchar(20) NOT NULL,
  `custpwd` varchar(20) NOT NULL,
  PRIMARY KEY (`identity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customers
-- ----------------------------
INSERT INTO `customers` VALUES ('12345', 'test', '男', 'adfsgh', '23456756', 'fdsg', 'test');
INSERT INTO `customers` VALUES ('666666', 'gxp111', '男', '2dsfaf', '54324555', 'dsfffdsa', 'gxpjoe');

-- ----------------------------
-- Table structure for `funs`
-- ----------------------------
DROP TABLE IF EXISTS `funs`;
CREATE TABLE `funs` (
  `funid` int(10) NOT NULL AUTO_INCREMENT,
  `funname` varchar(40) NOT NULL,
  `funurl` varchar(80) NOT NULL,
  `menuid` int(10) NOT NULL,
  PRIMARY KEY (`funid`),
  KEY `FUNS_FK` (`menuid`),
  CONSTRAINT `FUNS_FK` FOREIGN KEY (`menuid`) REFERENCES `menus` (`menuid`)
) ENGINE=InnoDB AUTO_INCREMENT=403 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of funs
-- ----------------------------
INSERT INTO `funs` VALUES ('1', '主页面', 'index.jsp', '1');
INSERT INTO `funs` VALUES ('2', '头页面', 'head.jsp', '1');
INSERT INTO `funs` VALUES ('3', '菜单页面', 'menu.jsp', '1');
INSERT INTO `funs` VALUES ('4', '脚页面', 'foot.jsp', '1');
INSERT INTO `funs` VALUES ('5', '操作页面', 'welcome.jsp', '1');
INSERT INTO `funs` VALUES ('6', '权限提示页面', 'norole.jsp', '1');
INSERT INTO `funs` VALUES ('8', '退出系统动作n', 'ExitSystemAction.do', '1');
INSERT INTO `funs` VALUES ('9', '菜单导航', 'modNavTop.jsp', '1');
INSERT INTO `funs` VALUES ('10', '菜单条', 'splitor.jsp', '1');
INSERT INTO `funs` VALUES ('11', '操作失败提示页面', 'error.jsp', '1');
INSERT INTO `funs` VALUES ('12', '系统崩溃提示页面', 'appError.jsp', '1');
INSERT INTO `funs` VALUES ('13', '成功页面', 'ok.jsp', '1');
INSERT INTO `funs` VALUES ('15', '添加角色功能n', 'RoleManagerAction.do', '20');
INSERT INTO `funs` VALUES ('16', '角色管理页面', 'roleManager.jsp', '20');
INSERT INTO `funs` VALUES ('17', '查询角色信息动作', 'FindRole.do', '20');
INSERT INTO `funs` VALUES ('18', '添加新角色的菜单查询动作', 'FindMenus.do', '20');
INSERT INTO `funs` VALUES ('19', '预修改角色信息查询动作', 'PreUpdateRole.do', '20');
INSERT INTO `funs` VALUES ('20', '修改角色信息动作', 'UpdateRole.do', '20');
INSERT INTO `funs` VALUES ('21', '删除角色动作', 'DeleteRole.do', '20');
INSERT INTO `funs` VALUES ('22', '添加新角色页面', 'addRole.jsp', '20');
INSERT INTO `funs` VALUES ('23', '查询日志信息页面', 'findLog.jsp', '21');
INSERT INTO `funs` VALUES ('24', '查询日志信息动作n', 'LogOperatorAction.do', '21');
INSERT INTO `funs` VALUES ('25', '显示日志信息页面', 'viewLog.jsp', '21');
INSERT INTO `funs` VALUES ('26', '删除日志信息动作', 'DeleteLog.do', '21');
INSERT INTO `funs` VALUES ('27', '查询登陆信息页面', 'findLoginInfo.jsp', '22');
INSERT INTO `funs` VALUES ('28', '查询登陆信息动作', 'LoginInfoOperatorAction.do', '22');
INSERT INTO `funs` VALUES ('29', '显示登陆信息页面', 'showLoginLogInfo.jsp', '22');
INSERT INTO `funs` VALUES ('30', '底页面', 'foot.jsp', '1');
INSERT INTO `funs` VALUES ('50', '添加用户角色查询动作n', 'AddUserAction.do', '3');
INSERT INTO `funs` VALUES ('51', '添加用户页面', 'addUser.jsp', '3');
INSERT INTO `funs` VALUES ('52', '添加用户动作', 'AddUser.do', '3');
INSERT INTO `funs` VALUES ('53', '查询用户角色查询动作n', 'FindUserAction.do', '4');
INSERT INTO `funs` VALUES ('54', '查询用户页面', 'findUser.jsp', '4');
INSERT INTO `funs` VALUES ('55', '显示查询用户结果页面n', 'viewUser.jsp', '4');
INSERT INTO `funs` VALUES ('56', '查询用户动作', 'FindUser.do', '4');
INSERT INTO `funs` VALUES ('57', '预更新查询用户动作', 'PreUpdateUser.do', '4');
INSERT INTO `funs` VALUES ('58', '显示更新用户页面', 'updateUser.jsp', '4');
INSERT INTO `funs` VALUES ('59', '更新用户动作', 'UpdateUser.do', '4');
INSERT INTO `funs` VALUES ('60', '删除用户动作', 'DeleteUser.do', '4');
INSERT INTO `funs` VALUES ('61', '预修改用户密码', 'PreChangeUserPwd.do', '4');
INSERT INTO `funs` VALUES ('62', '修改用户密码页面', 'chengeUserPwd.jsp', '4');
INSERT INTO `funs` VALUES ('63', '修改用户密码动作', 'ChangeUserPwd.do', '4');
INSERT INTO `funs` VALUES ('100', '添加客户页面', 'addCustomers.jsp', '6');
INSERT INTO `funs` VALUES ('101', '添加客户动作n', 'AddCustomersAction.do', '6');
INSERT INTO `funs` VALUES ('102', '查询客户页面', 'findCustomers.jsp', '7');
INSERT INTO `funs` VALUES ('103', '查询客户信息动作n', 'FindCustomersAction.do', '7');
INSERT INTO `funs` VALUES ('104', '显示查询客户结果页面', 'viewCustomers.jsp', '7');
INSERT INTO `funs` VALUES ('105', '预更新客户查询动作', 'PreCustomers.do', '7');
INSERT INTO `funs` VALUES ('106', '显示更新客户页面', 'updateCustomers.jsp', '7');
INSERT INTO `funs` VALUES ('107', '更新客户动作', 'UpdateCustomers.do', '7');
INSERT INTO `funs` VALUES ('108', '删除客户动作', 'DeleteCustomers.do', '7');
INSERT INTO `funs` VALUES ('109', '预修改客户密码', 'PreChangeCustomerPwd.do', '7');
INSERT INTO `funs` VALUES ('110', '修改客户密码页面', 'chengeCustomersPwd.jsp', '7');
INSERT INTO `funs` VALUES ('111', '修改用户密码动作', 'ChangeCustomersPwd.do', '7');
INSERT INTO `funs` VALUES ('200', '添加汽车页面', 'addCar.jsp', '9');
INSERT INTO `funs` VALUES ('201', '添加汽车动作n', 'AddCarAction.do', '9');
INSERT INTO `funs` VALUES ('202', '查询汽车页面', 'findCar.jsp', '10');
INSERT INTO `funs` VALUES ('203', '显示查询汽车结果页面', 'viewCars.jsp', '10');
INSERT INTO `funs` VALUES ('204', '查询汽车信息动作n', 'FindCarAction.do', '10');
INSERT INTO `funs` VALUES ('205', '预更新查询汽车动作', 'PreUpdateCar.do', '10');
INSERT INTO `funs` VALUES ('206', '显示更新汽车结果页面', 'updateCar.jsp', '10');
INSERT INTO `funs` VALUES ('207', '更新汽车动作', 'UpdateCar.do', '10');
INSERT INTO `funs` VALUES ('209', '删除汽车动作', 'DeleteCar.do', '10');
INSERT INTO `funs` VALUES ('300', '租车页面', 'rentCar.jsp', '12');
INSERT INTO `funs` VALUES ('301', '预生成出租单动作n', 'RentingCarAction.do', '12');
INSERT INTO `funs` VALUES ('302', '预生成出租单页面', 'preCreateRenting.jsp', '12');
INSERT INTO `funs` VALUES ('303', '生成出租单动作', 'CreateRentCarTable.do', '12');
INSERT INTO `funs` VALUES ('304', '汽车出租单查询页面', 'returnCar.jsp', '13');
INSERT INTO `funs` VALUES ('305', '预还车查询动作', 'PreReturnCarSearch.do', '13');
INSERT INTO `funs` VALUES ('306', '创建检查单页面', 'createCheckTable.jsp', '13');
INSERT INTO `funs` VALUES ('307', '创建检查单动作', 'CreateCheckTable.do', '13');
INSERT INTO `funs` VALUES ('308', '出租单管理页面', 'rentManager.jsp', '14');
INSERT INTO `funs` VALUES ('309', '出租单管理查询动作', 'RentManagerSearch.do', '14');
INSERT INTO `funs` VALUES ('310', '显示查询出租单结果页面', 'viewRenttables.jsp', '14');
INSERT INTO `funs` VALUES ('311', '预更新出租单查询动作', 'PreUpdateRenttable.do', '14');
INSERT INTO `funs` VALUES ('312', '更新出租单页面', 'updateRenttable.jsp', '14');
INSERT INTO `funs` VALUES ('313', '更新出租单动作', 'UpdateRenttable.do', '14');
INSERT INTO `funs` VALUES ('314', '删除出租单动作', 'DeleteRenttable.do', '14');
INSERT INTO `funs` VALUES ('315', '检查单管理页面', 'checkManager.jsp', '15');
INSERT INTO `funs` VALUES ('316', '查询检查单动作', 'FindCheckTable.do', '15');
INSERT INTO `funs` VALUES ('317', '显示查询检查单结果页面', 'viewCheckTables.jsp', '15');
INSERT INTO `funs` VALUES ('318', '预更新检查单查询动作', 'PreUdateCheckTable.do', '15');
INSERT INTO `funs` VALUES ('319', '更新检查单页面', 'updateCheckTable.jsp', '15');
INSERT INTO `funs` VALUES ('320', '更新检查单动作', 'UpdateCheckTable.do', '15');
INSERT INTO `funs` VALUES ('321', '删除检查单动作', 'DeleteCheckTables.do', '15');
INSERT INTO `funs` VALUES ('322', '查询当月应还汽车动作n', 'MonthStatisticsCarAction.do', '17');
INSERT INTO `funs` VALUES ('400', '显示当月应还车结果页面', 'viewMonthReturnCarResult.jsp', '17');
INSERT INTO `funs` VALUES ('401', '查询当月应归还汽车相信信息', 'FindMonthReturnCarByInfo.do', '17');
INSERT INTO `funs` VALUES ('402', '显示当月应还汽车详细信息', 'findMonthReturnCarByInfo.jsp', '17');

-- ----------------------------
-- Table structure for `loginlogs`
-- ----------------------------
DROP TABLE IF EXISTS `loginlogs`;
CREATE TABLE `loginlogs` (
  `loginlogid` int(20) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(80) NOT NULL,
  `loginip` varchar(40) DEFAULT NULL,
  `logintime` date NOT NULL,
  PRIMARY KEY (`loginlogid`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of loginlogs
-- ----------------------------
INSERT INTO `loginlogs` VALUES ('29', 'admin', '127.0.0.1', '2017-11-14');
INSERT INTO `loginlogs` VALUES ('30', 'admin', '127.0.0.1', '2017-11-14');
INSERT INTO `loginlogs` VALUES ('31', 'admin', '127.0.0.1', '2017-11-14');
INSERT INTO `loginlogs` VALUES ('32', 'admin', '127.0.0.1', '2017-11-14');
INSERT INTO `loginlogs` VALUES ('33', 'admin', '127.0.0.1', '2017-11-14');
INSERT INTO `loginlogs` VALUES ('34', 'admin', '127.0.0.1', '2017-11-14');
INSERT INTO `loginlogs` VALUES ('35', 'admin', '127.0.0.1', '2017-11-14');
INSERT INTO `loginlogs` VALUES ('36', 'admin', '127.0.0.1', '2017-11-14');
INSERT INTO `loginlogs` VALUES ('37', 'admin', '127.0.0.1', '2017-11-14');
INSERT INTO `loginlogs` VALUES ('38', 'admin', '127.0.0.1', '2017-11-14');
INSERT INTO `loginlogs` VALUES ('39', 'admin', '127.0.0.1', '2017-11-14');
INSERT INTO `loginlogs` VALUES ('40', 'admin', '127.0.0.1', '2017-11-14');
INSERT INTO `loginlogs` VALUES ('41', 'admin', '127.0.0.1', '2017-11-14');
INSERT INTO `loginlogs` VALUES ('42', 'admin', '127.0.0.1', '2017-11-14');
INSERT INTO `loginlogs` VALUES ('43', 'admin', '0:0:0:0:0:0:0:1', '2017-11-14');
INSERT INTO `loginlogs` VALUES ('44', 'admin', '0:0:0:0:0:0:0:1', '2017-11-14');
INSERT INTO `loginlogs` VALUES ('45', 'admin', '127.0.0.1', '2017-11-14');
INSERT INTO `loginlogs` VALUES ('46', 'admin', '0:0:0:0:0:0:0:1', '2017-11-14');
INSERT INTO `loginlogs` VALUES ('47', 'admin', '127.0.0.1', '2017-11-14');
INSERT INTO `loginlogs` VALUES ('48', 'admin', '0:0:0:0:0:0:0:1', '2017-11-14');
INSERT INTO `loginlogs` VALUES ('49', 'admin', '127.0.0.1', '2017-11-14');
INSERT INTO `loginlogs` VALUES ('50', 'admin', '127.0.0.1', '2017-11-14');
INSERT INTO `loginlogs` VALUES ('51', 'admin', '127.0.0.1', '2017-11-14');
INSERT INTO `loginlogs` VALUES ('52', 'admin', '127.0.0.1', '2017-11-14');
INSERT INTO `loginlogs` VALUES ('53', 'admin', '127.0.0.1', '2017-11-15');
INSERT INTO `loginlogs` VALUES ('54', 'admin', '127.0.0.1', '2017-11-15');
INSERT INTO `loginlogs` VALUES ('55', 'admin', '192.168.3.42', '2017-11-15');
INSERT INTO `loginlogs` VALUES ('56', 'admin', '192.168.3.253', '2017-11-15');
INSERT INTO `loginlogs` VALUES ('57', 'admin', '127.0.0.1', '2017-11-16');
INSERT INTO `loginlogs` VALUES ('58', 'admin', '127.0.0.1', '2017-11-16');
INSERT INTO `loginlogs` VALUES ('59', 'admin', '127.0.0.1', '2017-11-16');

-- ----------------------------
-- Table structure for `logs`
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `action` varchar(40) NOT NULL,
  `actiontime` date NOT NULL,
  `flag` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=341 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logs
-- ----------------------------
INSERT INTO `logs` VALUES ('3', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('4', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('5', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('6', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('7', 'admin', '汽车管理-->查询汽车信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('8', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('9', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('10', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('11', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('12', 'admin', '查找出租单信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('13', 'admin', '查找出租单信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('14', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('15', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('16', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('17', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('18', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('19', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('20', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('21', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('22', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('23', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('24', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('25', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('26', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('27', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('28', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('29', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('30', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('31', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('32', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('33', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('34', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('35', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('36', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('37', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('38', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('39', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('40', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('41', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('42', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('43', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('44', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('45', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('46', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('47', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('48', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('49', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('50', 'admin', '查找顾客信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('51', 'admin', '查找出租单信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('52', 'admin', '查找顾客信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('53', 'admin', '查找顾客信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('54', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('55', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('56', 'admin', '日志管理-->查询日志信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('57', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('58', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('59', 'admin', '日志管理-->查询日志信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('60', 'admin', '日志管理-->查询日志信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('61', 'admin', '日志管理-->查询日志信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('62', 'admin', '日志管理-->查询日志信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('63', 'admin', '日志管理-->查询日志信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('64', 'admin', '日志管理-->查询日志信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('65', 'admin', '日志管理-->查询日志信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('66', 'admin', '日志管理-->查询日志信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('67', 'admin', '日志管理-->查询日志信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('68', 'admin', '日志管理-->查询日志信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('69', 'admin', '日志管理-->查询日志信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('70', 'admin', '日志管理-->查询日志信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('71', 'admin', '日志管理-->查询日志信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('72', 'admin', '日志管理-->查询日志信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('73', 'admin', '日志管理-->查询日志信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('74', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('75', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('76', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('77', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('78', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('79', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('80', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('81', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('82', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('84', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('85', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('86', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('87', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('88', 'admin', '日志管理-->查询日志信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('89', 'admin', '日志管理-->查询日志信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('90', 'admin', '日志管理-->查询日志信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('91', 'admin', '日志管理-->查询日志信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('92', 'admin', '日志管理-->查询日志信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('93', 'admin', '日志管理-->查询日志信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('94', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('95', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('96', 'admin', '查询登录信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('97', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('98', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('99', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('100', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('101', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('102', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('103', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('104', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('105', 'admin', '查询登录信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('106', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('107', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('108', 'admin', '查询登录信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('109', 'admin', '查询登录信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('110', 'admin', '查询登录信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('111', 'admin', '日志管理-->查询日志信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('112', 'admin', '日志管理-->查询日志信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('113', 'admin', '日志管理-->查询日志信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('114', 'admin', '日志管理-->查询日志信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('115', 'admin', '日志管理-->查询日志信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('116', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('117', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('118', 'admin', '日志管理-->查询日志信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('119', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('120', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('121', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('122', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('123', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('124', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('125', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('126', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('127', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('128', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('129', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('130', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('131', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('132', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('133', 'admin', '日志管理-->查询日志信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('134', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('135', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('136', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('137', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('138', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('139', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('140', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('141', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('143', 'admin', '日志管理-->查询日志信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('144', 'admin', '查询登录信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('145', 'admin', '汽车管理-->查询汽车信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('146', 'admin', '汽车管理-->查询汽车信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('147', 'admin', '汽车管理-->查询汽车信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('148', 'admin', '汽车管理-->查询汽车信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('149', 'admin', '查找顾客信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('150', 'admin', '查找顾客信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('151', 'admin', '汽车管理-->查询汽车信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('152', 'admin', '汽车管理-->预处理租车单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('153', 'admin', '查找顾客信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('154', 'admin', '汽车管理-->查询汽车信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('155', 'admin', '汽车管理-->预处理租车单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('156', 'admin', '查找出租单信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('157', 'admin', '汽车管理-->查询汽车信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('158', 'admin', '汽车管理-->查询汽车信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('159', 'admin', '查找出租单信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('160', 'admin', '查找出租单信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('161', 'admin', '查找出租单信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('162', 'admin', '汽车管理-->预处理检查单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('163', 'admin', '汽车管理-->查询汽车信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('164', 'admin', '日志管理-->查询日志信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('165', 'admin', '查询登录信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('166', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('167', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('168', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('169', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('170', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('171', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('172', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('173', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('174', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('175', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('176', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('177', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('178', 'admin', '汽车管理-->查询汽车信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('179', 'admin', '汽车管理-->查询汽车信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('180', 'admin', '汽车管理-->查询汽车信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('181', 'admin', '汽车管理-->查询汽车信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('182', 'admin', '汽车管理-->查询汽车信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('183', 'admin', '汽车管理-->查询汽车信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('184', 'admin', '汽车管理-->查询汽车信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('185', 'admin', '汽车管理-->查询汽车信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('186', 'admin', '汽车管理-->查询汽车信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('187', 'admin', '汽车管理-->查询汽车信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('188', 'admin', '汽车管理-->查询汽车信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('189', 'admin', '汽车管理-->查询汽车信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('190', 'admin', '汽车管理-->查询汽车信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('191', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('192', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('193', 'admin', '日志管理-->查询日志信息', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('194', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('195', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('196', 'admin', '登录', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('197', 'admin', '获取菜单', '2017-11-14', '0');
INSERT INTO `logs` VALUES ('198', 'admin', '登录', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('199', 'admin', '获取菜单', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('200', 'admin', '查找顾客信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('201', 'admin', '查找顾客信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('202', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('203', 'admin', '汽车管理-->预处理租车单', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('204', 'admin', '汽车管理-->预处理租车单', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('205', 'admin', '查找顾客信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('206', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('207', 'admin', '汽车管理-->预处理租车单', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('208', 'admin', '查找顾客信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('209', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('210', 'admin', '汽车管理-->预处理租车单', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('211', 'admin', '查找顾客信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('212', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('213', 'admin', '汽车管理-->预处理租车单', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('214', 'admin', '查找顾客信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('215', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('216', 'admin', '汽车管理-->预处理租车单', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('217', 'admin', '查找顾客信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('218', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('219', 'admin', '汽车管理-->预处理租车单', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('220', 'admin', '查找出租单信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('221', 'admin', '查找出租单信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('222', 'admin', '查找出租单信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('223', 'admin', '查找出租单信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('224', 'admin', '查找出租单信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('225', 'admin', '查找出租单信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('226', 'admin', '日志管理-->查询日志信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('227', 'admin', '日志管理-->查询日志信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('228', 'admin', '日志管理-->查询日志信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('229', 'admin', '日志管理-->查询日志信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('230', 'admin', '日志管理-->查询日志信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('231', 'admin', '查询登录信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('232', 'admin', '查询登录信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('233', 'admin', '查询登录信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('234', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('235', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('236', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('237', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('238', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('239', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('240', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('241', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('242', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('243', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('244', 'admin', '日志管理-->查询日志信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('245', 'admin', '查询登录信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('246', 'admin', '查询登录信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('247', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('248', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('249', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('250', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('251', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('252', 'admin', '查找顾客信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('253', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('254', 'admin', '汽车管理-->预处理租车单', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('255', 'admin', '用户管理-->查询用户', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('256', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('257', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('258', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('259', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('260', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('261', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('262', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('263', 'admin', '登录', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('264', 'admin', '获取菜单', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('265', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('266', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('267', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('268', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('269', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('270', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('271', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('272', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('273', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('274', 'admin', '登录', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('275', 'admin', '获取菜单', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('276', 'admin', '日志管理-->查询日志信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('277', 'admin', '查询登录信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('278', 'admin', '用户管理-->查询用户', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('279', 'admin', '用户管理-->查询用户', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('280', 'admin', '用户管理-->查询用户', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('281', 'admin', '用户管理-->查询用户', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('282', 'admin', '用户管理-->查询用户', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('283', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('284', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('285', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('286', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('287', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('288', 'admin', '查找顾客信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('289', 'admin', '日志管理-->查询日志信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('290', 'admin', '查询登录信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('291', 'admin', '查询登录信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('292', 'admin', '登录', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('293', 'admin', '获取菜单', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('294', 'admin', '用户管理-->查询用户', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('295', 'admin', '用户管理-->查询用户', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('296', 'admin', '用户管理-->查询用户', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('297', 'admin', '用户管理-->查询用户', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('298', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('299', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('300', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('301', 'admin', '查找顾客信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('302', 'admin', '查找顾客信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('303', 'admin', '查找顾客信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('304', 'admin', '查找顾客信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('305', 'admin', '查找顾客信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('306', 'admin', '查找顾客信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('307', 'admin', '查找顾客信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('308', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('309', 'admin', '汽车管理-->预处理租车单', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('310', 'admin', '查找出租单信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('311', 'admin', '查找出租单信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('312', 'admin', '查找出租单信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('313', 'admin', '查找出租单信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('314', 'admin', '查找出租单信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('315', 'admin', '汽车管理-->预处理检查单', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('316', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('317', 'admin', '汽车管理-->查询汽车信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('318', 'admin', '日志管理-->查询日志信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('319', 'admin', '查询登录信息', '2017-11-15', '0');
INSERT INTO `logs` VALUES ('320', 'admin', '登录', '2017-11-16', '0');
INSERT INTO `logs` VALUES ('321', 'admin', '获取菜单', '2017-11-16', '0');
INSERT INTO `logs` VALUES ('322', 'admin', '日志管理-->查询日志信息', '2017-11-16', '0');
INSERT INTO `logs` VALUES ('323', 'admin', '登录', '2017-11-16', '0');
INSERT INTO `logs` VALUES ('324', 'admin', '获取菜单', '2017-11-16', '0');
INSERT INTO `logs` VALUES ('325', 'admin', '日志管理-->查询日志信息', '2017-11-16', '0');
INSERT INTO `logs` VALUES ('326', 'admin', '日志管理-->查询日志信息', '2017-11-16', '0');
INSERT INTO `logs` VALUES ('327', 'admin', '查询登录信息', '2017-11-16', '0');
INSERT INTO `logs` VALUES ('328', 'admin', '查询登录信息', '2017-11-16', '0');
INSERT INTO `logs` VALUES ('329', 'admin', '登录', '2017-11-16', '0');
INSERT INTO `logs` VALUES ('330', 'admin', '获取菜单', '2017-11-16', '0');
INSERT INTO `logs` VALUES ('331', 'admin', '日志管理-->查询日志信息', '2017-11-16', '0');
INSERT INTO `logs` VALUES ('332', 'admin', '查询登录信息', '2017-11-16', '0');
INSERT INTO `logs` VALUES ('333', 'admin', '日志管理-->查询日志信息', '2017-11-16', '0');
INSERT INTO `logs` VALUES ('334', 'admin', '日志管理-->查询日志信息', '2017-11-16', '0');
INSERT INTO `logs` VALUES ('335', 'admin', '日志管理-->查询日志信息', '2017-11-16', '0');
INSERT INTO `logs` VALUES ('336', 'admin', '日志管理-->查询日志信息', '2017-11-16', '0');
INSERT INTO `logs` VALUES ('337', 'admin', '汽车管理-->查询汽车信息', '2017-11-16', '0');
INSERT INTO `logs` VALUES ('338', 'admin', '汽车管理-->查询汽车信息', '2017-11-16', '0');
INSERT INTO `logs` VALUES ('339', 'admin', '汽车管理-->查询汽车信息', '2017-11-16', '0');
INSERT INTO `logs` VALUES ('340', 'admin', '汽车管理-->查询汽车信息', '2017-11-16', '0');

-- ----------------------------
-- Table structure for `menus`
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `menuid` int(10) NOT NULL AUTO_INCREMENT,
  `menuname` varchar(40) NOT NULL,
  `uri` varchar(80) DEFAULT NULL,
  `fatherid` int(10) NOT NULL,
  PRIMARY KEY (`menuid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES ('1', '汽车租赁管理系统', null, '-1');
INSERT INTO `menus` VALUES ('2', '用户管理', null, '1');
INSERT INTO `menus` VALUES ('3', '添加用户', 'user/addUser.jsp', '2');
INSERT INTO `menus` VALUES ('4', '查询用户', 'user/selUser.jsp', '2');
INSERT INTO `menus` VALUES ('5', '客户管理', null, '1');
INSERT INTO `menus` VALUES ('6', '添加客户信息', 'custManager/addCustomers.jsp', '5');
INSERT INTO `menus` VALUES ('7', '查询客户信息', 'custManager/findCustomers.jsp', '5');
INSERT INTO `menus` VALUES ('8', '汽车管理', null, '1');
INSERT INTO `menus` VALUES ('9', '添加汽车信息', 'carManager/addCar.jsp', '8');
INSERT INTO `menus` VALUES ('10', '查询汽车信息', 'carManager/findCar.jsp', '8');
INSERT INTO `menus` VALUES ('11', '业务管理', null, '1');
INSERT INTO `menus` VALUES ('12', '汽车出租', 'operatorManager/rentCar.jsp', '11');
INSERT INTO `menus` VALUES ('13', '汽车入库', 'operatorManager/returnCar.jsp', '11');
INSERT INTO `menus` VALUES ('14', '出租单管理', 'operatorManager/rentManager.jsp', '11');
INSERT INTO `menus` VALUES ('15', '检查单管理', 'operatorManager/checkManager.jsp', '11');
INSERT INTO `menus` VALUES ('16', '业务统计', null, '1');
INSERT INTO `menus` VALUES ('17', '当月应还汽车', 'findNowM', '16');
INSERT INTO `menus` VALUES ('18', '系统管理', null, '1');
INSERT INTO `menus` VALUES ('20', '角色管理', 'systemManager/showRole.jsp', '18');
INSERT INTO `menus` VALUES ('21', '日志管理', 'systemManager/findLog.jsp', '18');
INSERT INTO `menus` VALUES ('22', '登陆信息管理', 'systemManager/findLoginInfo.jsp', '18');

-- ----------------------------
-- Table structure for `renttable`
-- ----------------------------
DROP TABLE IF EXISTS `renttable`;
CREATE TABLE `renttable` (
  `rentid` varchar(20) NOT NULL,
  `imprest` float(10,2) NOT NULL,
  `shouldpaypric` float(10,2) NOT NULL,
  `price` float(10,2) NOT NULL,
  `begindate` date NOT NULL,
  `shouldreturndate` date NOT NULL,
  `returndate` date DEFAULT NULL,
  `rentflage` int(1) NOT NULL,
  `custid` varchar(20) NOT NULL,
  `carid` varchar(20) NOT NULL,
  `username` varchar(40) NOT NULL,
  PRIMARY KEY (`rentid`),
  KEY `RENTTABLE_CUSTIONERS_FK3` (`username`),
  KEY `RENTTABLE_CUSTOMERS_FK1` (`custid`),
  KEY `RENTTABLE_CUSTONERS_FK2` (`carid`),
  CONSTRAINT `RENTTABLE_CUSTIONERS_FK3` FOREIGN KEY (`username`) REFERENCES `users` (`username`),
  CONSTRAINT `RENTTABLE_CUSTOMERS_FK1` FOREIGN KEY (`custid`) REFERENCES `customers` (`identity`),
  CONSTRAINT `RENTTABLE_CUSTONERS_FK2` FOREIGN KEY (`carid`) REFERENCES `cars` (`carnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of renttable
-- ----------------------------
INSERT INTO `renttable` VALUES ('1510579442426', '783.00', '759.00', '67.00', '2017-11-13', '2017-11-14', '2017-12-23', '1', '12345', 'test', 'admin');
INSERT INTO `renttable` VALUES ('1510664359683', '714.00', '690.00', '700.00', '2017-11-14', '2017-11-29', '2017-12-21', '0', '12345', 'test', 'admin');
INSERT INTO `renttable` VALUES ('1510664433577', '813.00', '468.00', '500.00', '2017-11-14', '2017-11-16', '2017-12-15', '1', '12345', 'trett', 'admin');
INSERT INTO `renttable` VALUES ('1510711759131', '7365.00', '7020.00', '56.00', '2017-11-15', '2017-12-14', '2017-12-22', '0', '12345', 'trett', 'admin');
INSERT INTO `renttable` VALUES ('1510716176531', '1287.00', '1221.00', '444.00', '2017-11-15', '2017-12-21', '2017-12-21', '1', '666666', '8888', 'admin');

-- ----------------------------
-- Table structure for `roles`
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `roleid` int(10) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(20) NOT NULL,
  PRIMARY KEY (`roleid`,`rolename`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', '管理员');
INSERT INTO `roles` VALUES ('2', '销售');
INSERT INTO `roles` VALUES ('3', 'test');

-- ----------------------------
-- Table structure for `roles_menus`
-- ----------------------------
DROP TABLE IF EXISTS `roles_menus`;
CREATE TABLE `roles_menus` (
  `roleid` int(10) NOT NULL,
  `menuid` int(10) NOT NULL,
  PRIMARY KEY (`roleid`,`menuid`),
  KEY `ROLES_MENUS_FK2` (`menuid`),
  CONSTRAINT `ROLES_MENUS_FK1` FOREIGN KEY (`roleid`) REFERENCES `roles` (`roleid`),
  CONSTRAINT `ROLES_MENUS_FK2` FOREIGN KEY (`menuid`) REFERENCES `menus` (`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles_menus
-- ----------------------------
INSERT INTO `roles_menus` VALUES ('1', '1');
INSERT INTO `roles_menus` VALUES ('1', '2');
INSERT INTO `roles_menus` VALUES ('3', '2');
INSERT INTO `roles_menus` VALUES ('1', '3');
INSERT INTO `roles_menus` VALUES ('1', '4');
INSERT INTO `roles_menus` VALUES ('1', '5');
INSERT INTO `roles_menus` VALUES ('2', '5');
INSERT INTO `roles_menus` VALUES ('3', '5');
INSERT INTO `roles_menus` VALUES ('1', '6');
INSERT INTO `roles_menus` VALUES ('2', '6');
INSERT INTO `roles_menus` VALUES ('3', '6');
INSERT INTO `roles_menus` VALUES ('1', '7');
INSERT INTO `roles_menus` VALUES ('2', '7');
INSERT INTO `roles_menus` VALUES ('3', '7');
INSERT INTO `roles_menus` VALUES ('1', '8');
INSERT INTO `roles_menus` VALUES ('2', '8');
INSERT INTO `roles_menus` VALUES ('3', '8');
INSERT INTO `roles_menus` VALUES ('1', '9');
INSERT INTO `roles_menus` VALUES ('2', '9');
INSERT INTO `roles_menus` VALUES ('3', '9');
INSERT INTO `roles_menus` VALUES ('1', '10');
INSERT INTO `roles_menus` VALUES ('2', '10');
INSERT INTO `roles_menus` VALUES ('3', '10');
INSERT INTO `roles_menus` VALUES ('1', '11');
INSERT INTO `roles_menus` VALUES ('3', '11');
INSERT INTO `roles_menus` VALUES ('1', '12');
INSERT INTO `roles_menus` VALUES ('3', '12');
INSERT INTO `roles_menus` VALUES ('1', '13');
INSERT INTO `roles_menus` VALUES ('1', '14');
INSERT INTO `roles_menus` VALUES ('1', '15');
INSERT INTO `roles_menus` VALUES ('1', '16');
INSERT INTO `roles_menus` VALUES ('1', '17');
INSERT INTO `roles_menus` VALUES ('1', '18');
INSERT INTO `roles_menus` VALUES ('1', '20');
INSERT INTO `roles_menus` VALUES ('1', '21');
INSERT INTO `roles_menus` VALUES ('1', '22');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `username` varchar(40) NOT NULL,
  `identity` varchar(20) NOT NULL,
  `fullname` varchar(20) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `address` varchar(40) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `position` varchar(20) NOT NULL,
  `roleid` int(10) NOT NULL,
  `userpwd` varchar(40) NOT NULL,
  PRIMARY KEY (`username`),
  KEY `USERS_UK` (`identity`),
  KEY `USERS_FK` (`roleid`),
  CONSTRAINT `USERS_FK` FOREIGN KEY (`roleid`) REFERENCES `roles` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('admin', '322312133', 'admin', '男', '北京', '234242', 'manager', '1', 'a1231');
INSERT INTO `users` VALUES ('haha', '123123123', 'dushiyap', '男', '123', '15945342789', '123', '2', '123');
