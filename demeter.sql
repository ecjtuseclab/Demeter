/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50611
Source Host           : localhost:3306
Source Database       : demeter

Target Server Type    : MYSQL
Target Server Version : 50611
File Encoding         : 65001

Date: 2019-08-28 09:40:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `accountname` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `pubkey` varchar(512) DEFAULT NULL,
  `prikey` varchar(512) DEFAULT NULL,
  `keystore` varchar(255) DEFAULT NULL,
  `blance` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', '222', null, '0xbffc38cb1f3425ef1a87b2625470923411ac3881', null, null, null, null, null);
INSERT INTO `account` VALUES ('2', '223', null, '0xf6f4793fcd097b8801e015ca6dfaaa9416dc0c32', '123456', null, null, null, null);
INSERT INTO `account` VALUES ('11', '222', 'ks', '0x2bcb076f1113343e725a99b5bf48ab49f95fc771', '123456', null, '3499783515242256377097713060828606361074203109181924220383409505549867723196', null, null);
INSERT INTO `account` VALUES ('4', '222', 'ks', '0x5649590b5952546e5c023b45674b1c8f6e930d42', '123456', null, null, null, null);
INSERT INTO `account` VALUES ('5', '222', 'ks', '0xeb3f0186c8589c8a8f80dbf91152bedbdcb69370', '123456', null, null, null, null);
INSERT INTO `account` VALUES ('6', '222', 'ks', '0x0d50e4c7081b328214387d895f68cac0815d1211', '123456', null, null, null, null);
INSERT INTO `account` VALUES ('7', '222', 'ks1', '0x1a2194ecefbcca985d64a142beca957b7bf90295', '123456', null, null, null, null);
INSERT INTO `account` VALUES ('8', '222', 'ks23', '0x2bf77c021cdd70d5573e8e4d3ce2e1d2dd2eee8c', '123456', null, null, null, null);
INSERT INTO `account` VALUES ('9', '222', 'kkkkkk', '0x8851ef1d65361445a15ea31982d1da46f23ef553', '123456', null, '65491474479372258136065997402645140153691083659308694585486624195207192307408', null, null);
INSERT INTO `account` VALUES ('10', '222', 'ksssssss', '0xfe27797e67e09537cd728359bc615ed158ff9aa6', '123456', null, '93976940792844803483303122176870487869510103591031803561888163250329716129252', null, null);
INSERT INTO `account` VALUES ('12', '222', 'ks', '0xe3e63763066b9f6024fe3f1dff1c41664c4515dc', '123456', null, '85120070827900288673015795875413317059435821800864619632029207739062190714605', null, null);

-- ----------------------------
-- Table structure for action
-- ----------------------------
DROP TABLE IF EXISTS `action`;
CREATE TABLE `action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `actionname` varchar(50) NOT NULL,
  `actionurl` varchar(1024) DEFAULT NULL,
  `actionparam` varchar(1024) DEFAULT NULL,
  `actiontype` int(11) DEFAULT NULL,
  `actionowner` varchar(50) DEFAULT NULL,
  `actioncode` int(11) DEFAULT NULL,
  `controllername` varchar(50) DEFAULT NULL,
  `actiondescription` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=219 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of action
-- ----------------------------
INSERT INTO `action` VALUES ('73', '用户管理', '../index.ashx?ctrl=user', 'ctrl=user', '1', '0', '1', 'userControler', null);
INSERT INTO `action` VALUES ('75', '新增', '../index.ashx?ctrl=user&action=Form', 'ctrl=user&action=Form', '3', '73', '1', 'userControler', null);
INSERT INTO `action` VALUES ('76', '修改', '../index.ashx?ctrl=user&action=Formedit', 'ctrl=user&action=Formedit', '3', '73', '2', 'userControler', null);
INSERT INTO `action` VALUES ('78', '删除', '../index.ashx?ctrl=user&action=DeleteForm', 'ctrl=user&action=DeleteForm', '3', '73', '4', 'userControler', null);
INSERT INTO `action` VALUES ('79', '详情', '../index.ashx?ctrl=user&action=Details', 'ctrl=user&action=Details', '3', '73', '8', 'userControler', null);
INSERT INTO `action` VALUES ('80', '角色管理', '../index.ashx?ctrl=role', 'ctrl=role', '1', '0', '1', 'roleControler', null);
INSERT INTO `action` VALUES ('81', '新增', '../index.ashx?ctrl=role&action=Form', 'ctrl=role&action=Form', '3', '80', '1', 'roleControler', null);
INSERT INTO `action` VALUES ('83', '修改', '../index.ashx?ctrl=role&action=Form', 'ctrl=role&action=Form', '3', '80', '2', 'roleControler', null);
INSERT INTO `action` VALUES ('84', '删除', '../index.ashx?ctrl=role&action=DeleteForm', 'ctrl=role&action=DeleteForm', '3', '80', '4', 'roleControler', null);
INSERT INTO `action` VALUES ('85', '详情', '../index.ashx?ctrl=role&action=Details', 'ctrl=role&action=Details', '3', '80', '8', 'roleControler', null);
INSERT INTO `action` VALUES ('89', '资源管理', '../index.ashx?ctrl=resource', 'ctrl=resource', '1', '0', '1', 'resourceControler', null);
INSERT INTO `action` VALUES ('93', '新增', '../index.ashx?ctrl=resource&action=Form', 'ctrl=resource&action=Form', '3', '89', '1', 'resourceControler', null);
INSERT INTO `action` VALUES ('94', '修改', '../index.ashx?ctrl=resource&action=Form', 'ctrl=resource&action=Form', '3', '89', '2', 'resourceControler', null);
INSERT INTO `action` VALUES ('95', '删除', '../index.ashx?ctrl=resource&action=DeleteForm', 'ctrl=resource&action=DeleteForm', '3', '89', '4', 'resourceControler', null);
INSERT INTO `action` VALUES ('96', '详情', '../index.ashx?ctrl=resource&action=Details', 'ctrl=resource&action=Details', '3', '89', '8', 'resourceControler', null);
INSERT INTO `action` VALUES ('101', '分组管理', '../index.ashx?ctrl=group', 'ctrl=group', '1', '0', '1', 'groupControler', null);
INSERT INTO `action` VALUES ('102', '新增', '../index.ashx?ctrl=group&action=Form', 'ctrl=groupe&action=Form', '3', '101', '1', 'groupControler', null);
INSERT INTO `action` VALUES ('103', '修改', '../index.ashx?ctrl=group&action=Form', 'ctrl=group&action=Form', '3', '101', '2', 'groupControler', null);
INSERT INTO `action` VALUES ('104', '删除', '../index.ashx?ctrl=group&action=DeleteForm', 'ctrl=group&action=DeleteForm', '3', '101', '4', 'groupControler', null);
INSERT INTO `action` VALUES ('105', '详情', '../index.ashx?ctrl=group&action=Details', 'ctrl=group&action=Details', '3', '101', '8', 'groupControler', null);
INSERT INTO `action` VALUES ('106', '数据字典管理', '../index.ashx?ctrl=propertymapping', 'ctrl=propertymapping', '1', '0', '1', 'groupControler', null);
INSERT INTO `action` VALUES ('107', '新增', '../index.ashx?ctrl=propertymapping&action=Form', 'ctrl=propertymapping&action=Form', '3', '106', '1', 'propertymappingControler', null);
INSERT INTO `action` VALUES ('108', '修改', '../index.ashx?ctrl=propertymapping&action=Form', 'ctrl=propertymapping&action=Form', '3', '106', '2', 'propertymappingControler', null);
INSERT INTO `action` VALUES ('109', '删除', '../index.ashx?ctrl=propertymapping&action=DeleteForm', 'ctrl=propertymapping&action=DeleteForm', '3', '106', '4', 'propertymappingControler', null);
INSERT INTO `action` VALUES ('110', '详情', '../index.ashx?ctrl=propertymapping&action=Details', 'ctrl=propertymapping&action=Details', '3', '106', '8', 'propertymappingControler', null);
INSERT INTO `action` VALUES ('111', '区域管理', '../index.ashx?ctrl=area', 'ctrl=group', '1', '0', '1', 'areaControler', null);
INSERT INTO `action` VALUES ('112', '新增', '../index.ashx?ctrl=area&action=Form', 'ctrl=area&action=Form', '3', '111', '1', 'areaControler', null);
INSERT INTO `action` VALUES ('113', '修改', '../index.ashx?ctrl=area&action=Form', 'ctrl=area&action=Form', '3', '111', '2', 'areaControler', null);
INSERT INTO `action` VALUES ('114', '删除', '../index.ashx?ctrl=area&action=DeleteForm', 'ctrl=areap&action=DeleteForm', '3', '111', '6', 'areaControler', null);
INSERT INTO `action` VALUES ('115', '详情1', '../index.ashx?ctrl=area&action=Details', 'ctrl=area&action=Details', '3', '111', '8', 'areaControler', null);
INSERT INTO `action` VALUES ('116', '工作流管理', '../index.ashx?ctrl=workflow', 'ctrl=workflow', '3', '0', '3', 'workflowControler', null);
INSERT INTO `action` VALUES ('117', '新增', '../index.ashx?ctrl=workflow&action=Form', 'ctrl=workflow&action=Form', '3', '116', '5', 'workflowControler', null);
INSERT INTO `action` VALUES ('118', '修改', '../index.ashx?ctrl=workflow&action=Form', 'ctrl=workflow&action=Form', '3', '89', '4', 'workflowControler', null);
INSERT INTO `action` VALUES ('214', '新增', null, null, '2', 'WF_CZS', null, null, null);
INSERT INTO `action` VALUES ('213', '复审', null, null, '2', 'workflowTest1111', null, null, null);
INSERT INTO `action` VALUES ('211', '新增', null, null, '2', 'workflowTest1111', null, null, null);
INSERT INTO `action` VALUES ('212', '初审', null, null, '2', 'workflowTest1111', null, null, null);
INSERT INTO `action` VALUES ('215', '提交', null, null, '2', 'WF_CZS', null, null, null);
INSERT INTO `action` VALUES ('216', '审核', null, null, '2', 'WF_CZS', null, null, null);
INSERT INTO `action` VALUES ('217', '复审', null, null, '2', 'WF_CZS', null, null, null);
INSERT INTO `action` VALUES ('218', '撤销', null, null, '2', 'WF_CZS', null, null, null);

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) NOT NULL,
  `layers` int(11) DEFAULT NULL,
  `encode` varchar(50) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=422813 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES ('110000', '0', '1', '110000', '北京123');
INSERT INTO `area` VALUES ('110100', '120100', '2', '110100', '区1');
INSERT INTO `area` VALUES ('120000', '0', '1', '120000', '天津');
INSERT INTO `area` VALUES ('120100', '120000', '2', '120100', '天津市');
INSERT INTO `area` VALUES ('130000', '0', '1', '130000', '河北省');
INSERT INTO `area` VALUES ('130100', '130000', '2', '130100', '石家庄市');
INSERT INTO `area` VALUES ('130200', '130000', '2', '130200', '唐山市');
INSERT INTO `area` VALUES ('130300', '130000', '2', '130300', '秦皇岛市');
INSERT INTO `area` VALUES ('130400', '130000', '2', '130400', '邯郸市');
INSERT INTO `area` VALUES ('130500', '130000', '2', '130500', '邢台市');
INSERT INTO `area` VALUES ('130600', '130000', '2', '130600', '保定市');
INSERT INTO `area` VALUES ('130700', '130000', '2', '130700', '张家口市');
INSERT INTO `area` VALUES ('130800', '130000', '2', '130800', '承德市');
INSERT INTO `area` VALUES ('130900', '130000', '2', '130900', '沧州市');
INSERT INTO `area` VALUES ('131000', '130000', '2', '131000', '廊坊市');
INSERT INTO `area` VALUES ('131100', '130000', '2', '131100', '衡水市');
INSERT INTO `area` VALUES ('140000', '0', '1', '140000', '山西省');
INSERT INTO `area` VALUES ('140100', '140000', '2', '140100', '太原市');
INSERT INTO `area` VALUES ('140200', '140000', '2', '140200', '大同市');
INSERT INTO `area` VALUES ('140300', '140000', '2', '140300', '阳泉市');
INSERT INTO `area` VALUES ('140400', '140000', '2', '140400', '长治市');
INSERT INTO `area` VALUES ('140500', '140000', '2', '140500', '晋城市');
INSERT INTO `area` VALUES ('140600', '140000', '2', '140600', '朔州市');
INSERT INTO `area` VALUES ('140700', '140000', '2', '140700', '晋中市');
INSERT INTO `area` VALUES ('140800', '140000', '2', '140800', '运城市');
INSERT INTO `area` VALUES ('140900', '140000', '2', '140900', '忻州市');
INSERT INTO `area` VALUES ('141000', '140000', '2', '141000', '临汾市');
INSERT INTO `area` VALUES ('141100', '140000', '2', '141100', '吕梁市');
INSERT INTO `area` VALUES ('150000', '0', '1', '150000', '内蒙古自治区');
INSERT INTO `area` VALUES ('150100', '150000', '2', '150100', '呼和浩特市');
INSERT INTO `area` VALUES ('150200', '150000', '2', '150200', '包头市');
INSERT INTO `area` VALUES ('150300', '150000', '2', '150300', '乌海市');
INSERT INTO `area` VALUES ('150400', '150000', '2', '150400', '赤峰市');
INSERT INTO `area` VALUES ('150500', '150000', '2', '150500', '通辽市');
INSERT INTO `area` VALUES ('150600', '150000', '2', '150600', '鄂尔多斯市');
INSERT INTO `area` VALUES ('150700', '150000', '2', '150700', '呼伦贝尔市');
INSERT INTO `area` VALUES ('150800', '150000', '2', '150800', '巴彦淖尔市');
INSERT INTO `area` VALUES ('150900', '150000', '2', '150900', '乌兰察布市');
INSERT INTO `area` VALUES ('152200', '150000', '2', '152200', '兴安盟');
INSERT INTO `area` VALUES ('152500', '150000', '2', '152500', '锡林郭勒盟');
INSERT INTO `area` VALUES ('152900', '150000', '2', '152900', '阿拉善盟');
INSERT INTO `area` VALUES ('210000', '0', '1', '210000', '辽宁省');
INSERT INTO `area` VALUES ('210100', '210000', '2', '210100', '沈阳市');
INSERT INTO `area` VALUES ('210200', '210000', '2', '210200', '大连市');
INSERT INTO `area` VALUES ('210300', '210000', '2', '210300', '鞍山市');
INSERT INTO `area` VALUES ('210400', '210000', '2', '210400', '抚顺市');
INSERT INTO `area` VALUES ('210500', '210000', '2', '210500', '本溪市');
INSERT INTO `area` VALUES ('210600', '210000', '2', '210600', '丹东市');
INSERT INTO `area` VALUES ('210700', '210000', '2', '210700', '锦州市');
INSERT INTO `area` VALUES ('210800', '210000', '2', '210800', '营口市');
INSERT INTO `area` VALUES ('210900', '210000', '2', '210900', '阜新市');
INSERT INTO `area` VALUES ('211000', '210000', '2', '211000', '辽阳市');
INSERT INTO `area` VALUES ('211100', '210000', '2', '211100', '盘锦市');
INSERT INTO `area` VALUES ('211200', '210000', '2', '211200', '铁岭市');
INSERT INTO `area` VALUES ('211300', '210000', '2', '211300', '朝阳市');
INSERT INTO `area` VALUES ('211400', '210000', '2', '211400', '葫芦岛市');
INSERT INTO `area` VALUES ('220000', '0', '1', '220000', '吉林省');
INSERT INTO `area` VALUES ('220100', '220000', '2', '220100', '长春市');
INSERT INTO `area` VALUES ('220200', '220000', '2', '220200', '吉林市');
INSERT INTO `area` VALUES ('220300', '220000', '2', '220300', '四平市');
INSERT INTO `area` VALUES ('220400', '220000', '2', '220400', '辽源市');
INSERT INTO `area` VALUES ('220500', '220000', '2', '220500', '通化市');
INSERT INTO `area` VALUES ('220600', '220000', '2', '220600', '白山市');
INSERT INTO `area` VALUES ('220700', '220000', '2', '220700', '松原市');
INSERT INTO `area` VALUES ('220800', '220000', '2', '220800', '白城市');
INSERT INTO `area` VALUES ('222400', '220000', '2', '222400', '延边朝鲜族自治州');
INSERT INTO `area` VALUES ('230000', '0', '1', '230000', '黑龙江省');
INSERT INTO `area` VALUES ('230100', '230000', '2', '230100', '哈尔滨市');
INSERT INTO `area` VALUES ('230200', '230000', '2', '230200', '齐齐哈尔市');
INSERT INTO `area` VALUES ('230300', '230000', '2', '230300', '鸡西市');
INSERT INTO `area` VALUES ('230400', '230000', '2', '230400', '鹤岗市');
INSERT INTO `area` VALUES ('230500', '230000', '2', '230500', '双鸭山市');
INSERT INTO `area` VALUES ('230600', '230000', '2', '230600', '大庆市');
INSERT INTO `area` VALUES ('230700', '230000', '2', '230700', '伊春市');
INSERT INTO `area` VALUES ('230800', '230000', '2', '230800', '佳木斯市');
INSERT INTO `area` VALUES ('230900', '230000', '2', '230900', '七台河市');
INSERT INTO `area` VALUES ('231000', '230000', '2', '231000', '牡丹江市');
INSERT INTO `area` VALUES ('231100', '230000', '2', '231100', '黑河市');
INSERT INTO `area` VALUES ('231200', '230000', '2', '231200', '绥化市');
INSERT INTO `area` VALUES ('232700', '230000', '2', '232700', '大兴安岭地区');
INSERT INTO `area` VALUES ('310000', '0', '1', '310000', '上海');
INSERT INTO `area` VALUES ('310100', '310000', '2', '310100', '上海市');
INSERT INTO `area` VALUES ('320000', '0', '1', '320000', '江苏省');
INSERT INTO `area` VALUES ('320100', '320000', '2', '320100', '南京市');
INSERT INTO `area` VALUES ('320200', '320000', '2', '320200', '无锡市');
INSERT INTO `area` VALUES ('320300', '320000', '2', '320300', '徐州市');
INSERT INTO `area` VALUES ('320400', '320000', '2', '320400', '常州市');
INSERT INTO `area` VALUES ('320500', '320000', '2', '320500', '苏州市');
INSERT INTO `area` VALUES ('320600', '320000', '2', '320600', '南通市');
INSERT INTO `area` VALUES ('320700', '320000', '2', '320700', '连云港市');
INSERT INTO `area` VALUES ('320800', '320000', '2', '320800', '淮安市');
INSERT INTO `area` VALUES ('320900', '320000', '2', '320900', '盐城市');
INSERT INTO `area` VALUES ('321000', '320000', '2', '321000', '扬州市');
INSERT INTO `area` VALUES ('321100', '320000', '2', '321100', '镇江市');
INSERT INTO `area` VALUES ('321200', '320000', '2', '321200', '泰州市');
INSERT INTO `area` VALUES ('321300', '320000', '2', '321300', '宿迁市');
INSERT INTO `area` VALUES ('330000', '0', '1', '330000', '浙江省');
INSERT INTO `area` VALUES ('330100', '330000', '2', '330100', '杭州市');
INSERT INTO `area` VALUES ('330200', '330000', '2', '330200', '宁波市');
INSERT INTO `area` VALUES ('330300', '330000', '2', '330300', '温州市');
INSERT INTO `area` VALUES ('330400', '330000', '2', '330400', '嘉兴市');
INSERT INTO `area` VALUES ('330500', '330000', '2', '330500', '湖州市');
INSERT INTO `area` VALUES ('330600', '330000', '2', '330600', '绍兴市');
INSERT INTO `area` VALUES ('330700', '330000', '2', '330700', '金华市');
INSERT INTO `area` VALUES ('330800', '330000', '2', '330800', '衢州市');
INSERT INTO `area` VALUES ('330900', '330000', '2', '330900', '舟山市');
INSERT INTO `area` VALUES ('331000', '330000', '2', '331000', '台州市');
INSERT INTO `area` VALUES ('331100', '330000', '2', '331100', '丽水市');
INSERT INTO `area` VALUES ('340000', '0', '1', '340000', '安徽省');
INSERT INTO `area` VALUES ('340100', '340000', '2', '340100', '合肥市');
INSERT INTO `area` VALUES ('340200', '340000', '2', '340200', '芜湖市');
INSERT INTO `area` VALUES ('340300', '340000', '2', '340300', '蚌埠市');
INSERT INTO `area` VALUES ('340400', '340000', '2', '340400', '淮南市');
INSERT INTO `area` VALUES ('340500', '340000', '2', '340500', '马鞍山市');
INSERT INTO `area` VALUES ('340600', '340000', '2', '340600', '淮北市');
INSERT INTO `area` VALUES ('340700', '340000', '2', '340700', '铜陵市');
INSERT INTO `area` VALUES ('340800', '340000', '2', '340800', '安庆市');
INSERT INTO `area` VALUES ('341000', '340000', '2', '341000', '黄山市');
INSERT INTO `area` VALUES ('341100', '340000', '2', '341100', '滁州市');
INSERT INTO `area` VALUES ('341200', '340000', '2', '341200', '阜阳市');
INSERT INTO `area` VALUES ('341300', '340000', '2', '341300', '宿州市');
INSERT INTO `area` VALUES ('341500', '340000', '2', '341500', '六安市');
INSERT INTO `area` VALUES ('341600', '340000', '2', '341600', '亳州市');
INSERT INTO `area` VALUES ('341700', '340000', '2', '341700', '池州市');
INSERT INTO `area` VALUES ('341800', '340000', '2', '341800', '宣城市');
INSERT INTO `area` VALUES ('350000', '0', '1', '350000', '福建省');
INSERT INTO `area` VALUES ('350100', '350000', '2', '350100', '福州市');
INSERT INTO `area` VALUES ('350200', '350000', '2', '350200', '厦门市');
INSERT INTO `area` VALUES ('350300', '350000', '2', '350300', '莆田市');
INSERT INTO `area` VALUES ('350400', '350000', '2', '350400', '三明市');
INSERT INTO `area` VALUES ('350500', '350000', '2', '350500', '泉州市');
INSERT INTO `area` VALUES ('350600', '350000', '2', '350600', '漳州市');
INSERT INTO `area` VALUES ('350700', '350000', '2', '350700', '南平市');
INSERT INTO `area` VALUES ('350800', '350000', '2', '350800', '龙岩市');
INSERT INTO `area` VALUES ('350900', '350000', '2', '350900', '宁德市');
INSERT INTO `area` VALUES ('360000', '0', '1', '360000', '江西省');
INSERT INTO `area` VALUES ('360100', '360000', '2', '360100', '南昌市');
INSERT INTO `area` VALUES ('360200', '360000', '2', '360200', '景德镇市');
INSERT INTO `area` VALUES ('360300', '360000', '2', '360300', '萍乡市');
INSERT INTO `area` VALUES ('360400', '360000', '2', '360400', '九江市');
INSERT INTO `area` VALUES ('360500', '360000', '2', '360500', '新余市');
INSERT INTO `area` VALUES ('360600', '360000', '2', '360600', '鹰潭市');
INSERT INTO `area` VALUES ('360700', '360000', '2', '360700', '赣州市');
INSERT INTO `area` VALUES ('360800', '360000', '2', '360800', '吉安市');
INSERT INTO `area` VALUES ('360900', '360000', '2', '360900', '宜春市');
INSERT INTO `area` VALUES ('361000', '360000', '2', '361000', '抚州市');
INSERT INTO `area` VALUES ('361100', '360000', '2', '361100', '上饶市');
INSERT INTO `area` VALUES ('370000', '0', '1', '370000', '山东省');
INSERT INTO `area` VALUES ('370100', '370000', '2', '370100', '济南市');
INSERT INTO `area` VALUES ('370200', '370000', '2', '370200', '青岛市');
INSERT INTO `area` VALUES ('370300', '370000', '2', '370300', '淄博市');
INSERT INTO `area` VALUES ('370400', '370000', '2', '370400', '枣庄市');
INSERT INTO `area` VALUES ('370500', '370000', '2', '370500', '东营市');
INSERT INTO `area` VALUES ('370600', '370000', '2', '370600', '烟台市');
INSERT INTO `area` VALUES ('370700', '370000', '2', '370700', '潍坊市');
INSERT INTO `area` VALUES ('370800', '370000', '2', '370800', '济宁市');
INSERT INTO `area` VALUES ('370900', '370000', '2', '370900', '泰安市');
INSERT INTO `area` VALUES ('371000', '370000', '2', '371000', '威海市');
INSERT INTO `area` VALUES ('371100', '370000', '2', '371100', '日照市');
INSERT INTO `area` VALUES ('371200', '370000', '2', '371200', '莱芜市');
INSERT INTO `area` VALUES ('371300', '370000', '2', '371300', '临沂市');
INSERT INTO `area` VALUES ('371400', '370000', '2', '371400', '德州市');
INSERT INTO `area` VALUES ('371500', '370000', '2', '371500', '聊城市');
INSERT INTO `area` VALUES ('371600', '370000', '2', '371600', '滨州市');
INSERT INTO `area` VALUES ('371700', '370000', '2', '371700', '菏泽市');
INSERT INTO `area` VALUES ('410000', '0', '1', '410000', '河南省');
INSERT INTO `area` VALUES ('410100', '410000', '2', '410100', '郑州市');
INSERT INTO `area` VALUES ('410200', '410000', '2', '410200', '开封市');
INSERT INTO `area` VALUES ('410300', '410000', '2', '410300', '洛阳市');
INSERT INTO `area` VALUES ('410400', '410000', '2', '410400', '平顶山市');
INSERT INTO `area` VALUES ('410500', '410000', '2', '410500', '安阳市');
INSERT INTO `area` VALUES ('410600', '410000', '2', '410600', '鹤壁市');
INSERT INTO `area` VALUES ('410700', '410000', '2', '410700', '新乡市');
INSERT INTO `area` VALUES ('410800', '410000', '2', '410800', '焦作市');
INSERT INTO `area` VALUES ('420000', '0', '1', '420000', '湖北省');
INSERT INTO `area` VALUES ('420100', '420000', '2', '420100', '武汉市');

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `classificationid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `inserttime` text NOT NULL,
  `content` text CHARACTER SET utf8,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '1', '标题一', 'ycj', '2018-01-01', '<p style=\"text-align: center;\">新闻内容</p><p style=\"text-align: center;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 夏萍萍</p><p style=\"margin-top: 10px; margin-right: 10px; margin-bottom: 10px; padding: 0px; line-height: 22px; text-indent: -5px; word-wrap: break-word; word-break: break-all; clear: both;\">【作者】&nbsp;<a class=\"KnowledgeNetLink\" target=\"_blank\" href=\"http://www.cnki.net/kcms/detail/search.aspx?dbcode=CJFQ&sfield=au&skey=%e8%96%9b%e5%8d%a0%e7%86%ac&code=07254896;24091936;25318018;25318019;\" style=\"margin: 0px; padding: 0px; color: rgb(0, 43, 130); cursor: pointer; text-decoration: none;\">薛占熬</a>；&nbsp;<a class=\"KnowledgeNetLink\" target=\"_blank\" href=\"http://www.cnki.net/kcms/detail/search.aspx?dbcode=CJFQ&sfield=au&skey=%e6%9d%9c%e6%b5%a9%e7%bf%a0&code=07254896;24091936;25318018;25318019;\" style=\"margin: 0px; padding: 0px; color: rgb(0, 43, 130); cursor: pointer; text-decoration: none;\">杜浩翠</a>；&nbsp;<a class=\"KnowledgeNetLink\" target=\"_blank\" href=\"http://www.cnki.net/kcms/detail/search.aspx?dbcode=CJFQ&sfield=au&skey=%e5%b0%b9%e6%98%8a%e5%96%86&code=07254896;24091936;25318018;25318019;\" style=\"margin: 0px; padding: 0px; color: rgb(0, 43, 130); cursor: pointer; text-decoration: none;\">尹昊喆</a>；&nbsp;<a class=\"KnowledgeNetLink\" target=\"_blank\" href=\"http://www.cnki.net/kcms/detail/search.aspx?dbcode=CJFQ&sfield=au&skey=%e8%82%96%e8%bf%90%e8%8a%b1&code=07254896;24091936;25318018;25318019;\" style=\"margin: 0px; padding: 0px; color: rgb(0, 43, 130); cursor: pointer; text-decoration: none;\">肖运花</a>；</p><p style=\"margin-top: 10px; margin-right: 10px; margin-bottom: 10px; padding: 0px; line-height: 22px; text-indent: -5px; word-wrap: break-word; word-break: break-all; clear: both;\">【Author】 XUE Zhan-ao DU Hao-cui YIN Hao-zhe XIAO Yun-hua(College of Computer and Information Technology,Henan Normal University,Xinxiang 453007,China)</p><p style=\"margin-top: 10px; margin-right: 10px; margin-bottom: 10px; padding: 0px; line-height: 22px; text-indent: -5px; word-wrap: break-word; word-break: break-all; clear: both;\">【机构】&nbsp;<a class=\"KnowledgeNetLink\" target=\"_blank\" href=\"http://www.cnki.net/kcms/detail/search.aspx?dbcode=CJFQ&sfield=inst&skey=%e6%b2%b3%e5%8d%97%e5%b8%88%e8%8c%83%e5%a4%a7%e5%ad%a6%e8%ae%a1%e7%ae%97%e6%9c%ba%e4%b8%8e%e4%bf%a1%e6%81%af%e6%8a%80%e6%9c%af%e5%ad%a6%e9%99%a2&code=0109057;\" style=\"margin: 0px; padding: 0px; color: rgb(0, 43, 130); cursor: pointer; text-decoration: none;\">河南师范大学计算机与信息技术学院</a>；</p><p style=\"margin-top: 10px; margin-right: 10px; margin-bottom: 10px; padding: 0px; line-height: 22px; text-indent: -5px; word-wrap: break-word; word-break: break-all; clear: both;\">【摘要】&nbsp;<span style=\"margin: 0px; padding: 0px;\">区间集是一个新的重要的研究方向,在近似推理、模糊控制等领域中有着广泛的应用。在区间集上,重新定义了区间蕴涵,构造了格蕴涵代数,讨论了格蕴涵代数的一系列性质。同时在区间集上也重新定义了可换FI-代数和MV-代数,证明了格蕴涵代数、FI-代数和MV-代数3种不同的代数系统是等价的。&nbsp;</span><span style=\"margin: 0px; padding: 0px;\"></span><br/></p><p>【关键词】&nbsp;<span style=\"margin: 0px; padding: 0px;\"><a class=\"KnowledgeNetLink\" target=\"_blank\" href=\"http://www.cnki.net/kcms/detail/search.aspx?dbcode=CJFQ&sfield=kw&skey=%e5%8c%ba%e9%97%b4%e9%9b%86\" style=\"margin: 0px; padding: 0px; color: rgb(0, 43, 130); cursor: pointer; text-decoration: none;\">区间集</a>；&nbsp;<a class=\"KnowledgeNetLink\" target=\"_blank\" href=\"http://www.cnki.net/kcms/detail/search.aspx?dbcode=CJFQ&sfield=kw&skey=%e6%a0%bc%e8%95%b4%e6%b6%b5%e4%bb%a3%e6%95%b0\" style=\"margin: 0px; padding: 0px; color: rgb(0, 43, 130); cursor: pointer; text-decoration: none;\">格蕴涵代数</a>；&nbsp;<a class=\"KnowledgeNetLink\" target=\"_blank\" href=\"http://www.cnki.net/kcms/detail/search.aspx?dbcode=CJFQ&sfield=kw&skey=%e5%8f%af%e6%8d%a2FI-%e4%bb%a3%e6%95%b0\" style=\"margin: 0px; padding: 0px; color: rgb(0, 43, 130); cursor: pointer; text-decoration: none;\">可换FI-代数</a>；&nbsp;<a class=\"KnowledgeNetLink\" target=\"_blank\" href=\"http://www.cnki.net/kcms/detail/search.aspx?dbcode=CJFQ&sfield=kw&skey=MV-%e4%bb%a3%e6%95%b0\" style=\"margin: 0px; padding: 0px; color: rgb(0, 43, 130); cursor: pointer; text-decoration: none;\">MV-代数</a>；&nbsp;</span><br/></p><p>【基金】 河南省重点科技攻关项目(No.092102210149);河南省教育厅自然科学研究计划项目(No.2009B520015)资助</p><p>【所属期刊栏目】 人工智能 （2010年12期）</p><p style=\"text-align: left;\"><br/></p>');
INSERT INTO `article` VALUES ('2', '2', '的', '的', '0000-00-00', '<p>的</p>');
INSERT INTO `article` VALUES ('7', '2', '得到', '电放费', '0000-00-00', '<p>观复嘟嘟高耗能</p>');
INSERT INTO `article` VALUES ('8', '2', 'DDF', '方法更好地', '0000-00-00', '<p>共和国发达的广泛地</p>');
INSERT INTO `article` VALUES ('12', '2', '测试', '测试', 'Thu Jan 10 16:12:05 CST 2019', '<p>测试</p>');
INSERT INTO `article` VALUES ('13', '2', '测试文章', '测试', 'Sun Jan 20 11:24:02 CST 2019', '<h3 class=\"t\" style=\"margin: 0px 0px 1px; padding: 0px; list-style: none; font-weight: 400; font-size: medium; line-height: 1.54;\"><a href=\"http://www.baidu.com/link?url=zFJeR0z78KHAxAC7UqWnIb3Imhv8H-ZzHmxBCgwYf9nl36W5Cu9b_ssLr5C5kLQ_\" target=\"_blank\">百度新闻——全球最大的中文新闻平台</a></h3><p><a class=\"c-img6\" href=\"http://www.baidu.com/link?url=zFJeR0z78KHAxAC7UqWnIb3Imhv8H-ZzHmxBCgwYf9nl36W5Cu9b_ssLr5C5kLQ_\" target=\"_blank\" style=\"width: 121px; background-image: initial; background-position: center center; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; text-decoration-line: none; display: block; overflow: hidden; height: 75px;\"><img class=\"c-img c-img6\" src=\"/ueditor/jsp/upload/image/20190120/1547954640831079941.jpg\"/></a></p><p>百度新闻是包含海量资讯的新闻服务平台,真实反映每时每刻的新闻热点。您可以搜索新闻事件、热点话题、人物动态、产品资讯等,快速了解它们的最新进展。</p><p><a target=\"_blank\" href=\"http://www.baidu.com/link?url=zFJeR0z78KHAxAC7UqWnIb3Imhv8H-ZzHmxBCgwYf9nl36W5Cu9b_ssLr5C5kLQ_\" class=\"c-showurl\" style=\"color: green; text-decoration-line: none;\">https://news.baidu.com/&nbsp;</a></p><p><span class=\"c-icon c-icon-triangle-down-g\" style=\"background: url(&quot;https://ss1.bdstatic.com/5eN1bjq8AAUYm2zgoY3K/r/www/cache/static/protocol/https/global/img/icons_5859e57.png&quot;) -744px -144px no-repeat; display: inline-block; width: 14px; height: 14px; vertical-align: text-bottom; overflow: hidden; cursor: pointer;\"></span></p><p><span class=\"c-icons-outer\" style=\"overflow: hidden; display: inline-block; vertical-align: bottom;\"><span class=\"c-icons-inner\" style=\"margin-left: -4px;\"><span class=\"c-vline\" style=\"display: inline-block; margin: 0px 3px; border-left: 1px solid rgb(221, 221, 221); width: 0px; height: 12px;\"></span><span class=\"c-trust-as vstar \"><a href=\"https://www.baidu.com/s?wd=%E5%8C%97%E4%BA%AC%E7%99%BE%E5%BA%A6%E7%BD%91%E8%AE%AF%E7%A7%91%E6%8A%80%E6%9C%89%E9%99%90%E5%85%AC%E5%8F%B8@v&vmp_ec=c54a1c235b4525832d124b5f2s23cHt29dca4cd7039Uu79Y6ZYp75mMuFlXdd5fcJ7X5e13e5796b77&vmp_ectm=1547087678&from=vs&product=v&rsv_dl=0_left_v_3\" class=\"c-icon c-icon-v c-icon-v3\" target=\"_blank\" style=\"background: url(&quot;https://ss1.bdstatic.com/5eN1bjq8AAUYm2zgoY3K/r/www/cache/static/protocol/https/global/img/icons_5859e57.png&quot;) -936px -192px no-repeat; display: inline-block; width: 19px; height: 14px; vertical-align: text-bottom; overflow: hidden; border: 1px solid transparent; cursor: pointer;\"></a></span></span></span>&nbsp;-&nbsp;<a href=\"http://cache.baiducontent.com/c?m=9f65cb4a8c8507ed19fa950d100b8b315c1597634b87834e29938448e435061e5a72a6e667741f13a2b66b1104b83f5cfd8037&p=8d72d415d9c040a901f5c7710f51cd&newp=9a7a8d16d9c111a05bec92391c0d97231610db2151d6d7106b82c825d7331b001c3bbfb423261603d7cf7e6307a94d5eeff33c703d0123a3dda5c91d9fb4c57479&user=baidu&fm=sc&query=%CA%D7%D2%B3&qid=8d70399f00014fd9&p1=6\" target=\"_blank\" class=\"m\" style=\"color: rgb(102, 0, 102);\">百度快照</a><span class=\"c-pingjia\">&nbsp;-&nbsp;<a href=\"https://www.baidu.com/tools?url=http%3A%2F%2Fwww.baidu.com%2Flink%3Furl%3DzFJeR0z78KHAxAC7UqWnIb3Imhv8H-ZzHmxBCgwYf9nl36W5Cu9b_ssLr5C5kLQ_&jump=https%3A%2F%2Fkoubei.baidu.com%2Fp%2Fsentry%3Ftitle%3D%01%E7%99%BE%E5%BA%A6%01%E6%96%B0%E9%97%BB%01%E2%80%94%01%E2%80%94%01%E5%85%A8%E7%90%83%01%E6%9C%80%01%E5%A4%A7%01%E7%9A%84%01%E4%B8%AD%E6%96%87%01%E6%96%B0%E9%97%BB%01%E5%B9%B3%E5%8F%B0%01%26q%3D%E9%A6%96%E9%A1%B5%26from%3Dps_pc4&key=surl\" target=\"_blank\" class=\"m\" style=\"color: rgb(102, 0, 102);\">289条评价</a></span></p><h3 class=\"t\" style=\"margin: 0px 0px 1px; padding: 0px; list-style: none; font-weight: 400; font-size: medium; line-height: 1.54;\"><a class=\"favurl\" href=\"http://www.baidu.com/link?url=dEQIHq-RiszKg_8cDGDDM-4_0VgUmq6YwKtS7MFvzKcd4NGgi-qJH2oiV-YmGPET\" target=\"_blank\" style=\"background-repeat: no-repeat; background-position: 0px 1px; padding-left: 20px; background-image: url(&quot;https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=603445237,2207823722&amp;fm=58&quot;);\">有道<span style=\"color: rgb(204, 0, 0);\">首页</span></a></h3><p>网易旗下利用大数据技术提供移动互联网应用的子公司,过去8年,先后推出有道词典、有道翻译官、有道云笔记、惠惠网、有道推广、有道精品课、有道口语大师等系列产品,总...</p><p><a target=\"_blank\" href=\"http://www.baidu.com/link?url=dEQIHq-RiszKg_8cDGDDM-4_0VgUmq6YwKtS7MFvzKcd4NGgi-qJH2oiV-YmGPET\" class=\"c-showurl\" style=\"color: green; text-decoration-line: none;\">dict.youdao.com/&nbsp;</a></p><p><span class=\"c-icon c-icon-triangle-down-g\" style=\"background: url(&quot;https://ss1.bdstatic.com/5eN1bjq8AAUYm2zgoY3K/r/www/cache/static/protocol/https/global/img/icons_5859e57.png&quot;) -744px -144px no-repeat; display: inline-block; width: 14px; height: 14px; vertical-align: text-bottom; overflow: hidden; cursor: pointer;\"></span></p><p><span class=\"c-icons-outer\" style=\"overflow: hidden; display: inline-block; vertical-align: bottom;\"><span class=\"c-icons-inner\" style=\"margin-left: -4px;\"></span></span>&nbsp;-&nbsp;<a href=\"http://cache.baiducontent.com/c?m=9d78d513d9d430dc4f9b91697b16c0161840c72362d88a5339968449e07946171c37a5ac27555b5994932f3a16af3e0db7af2b&p=85769a479d934eac58e68f3c4a4bcf&newp=c266d41a85cc43ff57ee947559059f231610db2151d4d11e6b82c825d7331b001c3bbfb423261602d0c27c6304a4425ceefa317732032ba3dda5c91d9fb4c57479&user=baidu&fm=sc&query=%CA%D7%D2%B3&qid=8d70399f00014fd9&p1=7\" target=\"_blank\" class=\"m\" style=\"color: rgb(102, 0, 102);\">百度快照</a><span class=\"c-pingjia\">&nbsp;-&nbsp;<a href=\"https://www.baidu.com/tools?url=http%3A%2F%2Fwww.baidu.com%2Flink%3Furl%3DdEQIHq-RiszKg_8cDGDDM-4_0VgUmq6YwKtS7MFvzKcd4NGgi-qJH2oiV-YmGPET&jump=https%3A%2F%2Fkoubei.baidu.com%2Fp%2Fsentry%3Ftitle%3D%01%E6%9C%89%E9%81%93%02%E9%A6%96%E9%A1%B5%03%26q%3D%E9%A6%96%E9%A1%B5%26from%3Dps_pc4&key=surl\" target=\"_blank\" class=\"m\" style=\"color: rgb(102, 0, 102);\">702条评价</a></span></p><h3 class=\"t\" style=\"margin: 0px 0px 1px; padding: 0px; list-style: none; font-weight: 400; font-size: medium; line-height: 1.54;\"><a href=\"http://www.baidu.com/link?url=gbMuwQBT7CC_A4-16aZjs__im56TFATLnDIJLkdR6ZS\" target=\"_blank\">中国平安保险集团提供专业的保险、银行、投资、贷款、理财服务</a></h3><p><a class=\"c-img6\" href=\"http://www.baidu.com/link?url=gbMuwQBT7CC_A4-16aZjs__im56TFATLnDIJLkdR6ZS\" target=\"_blank\" style=\"width: 121px; background-image: initial; background-position: center center; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; text-decoration-line: none; display: block; overflow: hidden; height: 75px;\"><img class=\"c-img c-img6\" src=\"/ueditor/jsp/upload/image/20190120/1547954640838023748.jpg\"/></a></p><p>中国平安是国内金融牌照最齐全的金融服务集团,业务有车险、意外保险、重疾险、小额贷款、信用贷款、投资理财产品、平安普惠、平安信用卡、平安保险、平安银行等。</p><p><a target=\"_blank\" href=\"http://www.baidu.com/link?url=gbMuwQBT7CC_A4-16aZjs__im56TFATLnDIJLkdR6ZS\" class=\"c-showurl\" style=\"color: green; text-decoration-line: none;\">www.pingan.com/&nbsp;</a></p><p><span class=\"c-icon c-icon-triangle-down-g\" style=\"background: url(&quot;https://ss1.bdstatic.com/5eN1bjq8AAUYm2zgoY3K/r/www/cache/static/protocol/https/global/img/icons_5859e57.png&quot;) -744px -144px no-repeat; display: inline-block; width: 14px; height: 14px; vertical-align: text-bottom; overflow: hidden; cursor: pointer;\"></span></p><p><span class=\"c-icons-outer\" style=\"overflow: hidden; display: inline-block; vertical-align: bottom;\"><span class=\"c-icons-inner\" style=\"margin-left: -4px;\"></span></span>&nbsp;-&nbsp;<a href=\"http://cache.baiducontent.com/c?m=9d78d513d9d430dc4f9b91697b16c0161840c72362d88a5339968449e07946040223f4bb50604b588696207001d81801b5ed&p=8b2a9715d9c547f746bbc9227f05&newp=8e769a47949614ff57eb9238500d92695c0fc13423938b5712d2955cc53f36051026a2e07a7e1f00d7c3786701af4356e0f73377320826b59dc39c0cb0fac56a20df7b623249d3&user=baidu&fm=sc&query=%CA%D7%D2%B3&qid=8d70399f00014fd9&p1=8\" target=\"_blank\" class=\"m\" style=\"color: rgb(102, 0, 102);\">百度快照</a><span class=\"c-pingjia\">&nbsp;-&nbsp;<a href=\"https://www.baidu.com/tools?url=http%3A%2F%2Fwww.baidu.com%2Flink%3Furl%3DgbMuwQBT7CC_A4-16aZjs__im56TFATLnDIJLkdR6ZS&jump=https%3A%2F%2Fkoubei.baidu.com%2Fp%2Fsentry%3Ftitle%3D%01%E4%B8%AD%E5%9B%BD%01%E5%B9%B3%E5%AE%89%01%E4%BF%9D%E9%99%A9%01%E9%9B%86%E5%9B%A2%01%E6%8F%90%E4%BE%9B%01%E4%B8%93%E4%B8%9A%01%E7%9A%84%01%E4%BF%9D%E9%99%A9%01%E3%80%81%01%E9%93%B6%E8%A1%8C%01%E3%80%81%01%E6%8A%95%E8%B5%84%01%E3%80%81%01%E8%B4%B7%E6%AC%BE%01%E3%80%81%01%E7%90%86%E8%B4%A2%01%E6%9C%8D%E5%8A%A1%01%26q%3D%E9%A6%96%E9%A1%B5%26from%3Dps_pc4&key=surl\" target=\"_blank\" class=\"m\" style=\"color: rgb(102, 0, 102);\">1604条评价</a></span></p><h3 class=\"t\" style=\"margin: 0px 0px 1px; padding: 0px; list-style: none; font-weight: 400; font-size: medium; line-height: 1.54;\"><a href=\"http://www.baidu.com/link?url=EedkkqK4BQ1VaURwVJGUHe2tInISc088P2ASGhgIZ9_iWaIvdk1Of0-clNczzSt7-n011jWU-78xvUypxFPntK\" target=\"_blank\">娱乐八卦_论坛_天涯社区</a></h3><p><span class=\" newTimeFactor_before_abs m\" style=\"color: rgb(102, 102, 102);\">2019年1月12日&nbsp;-&nbsp;</span>颜狗的春天(5),八卦闲聊,花痴吐槽,推书追剧,开心最好 颜狗的春天 16880716 609604 01-12 02:23 剩女剩男剧增,生育率堪忧…… qq群33163670 1154 65 0...</p><p><a target=\"_blank\" href=\"http://www.baidu.com/link?url=EedkkqK4BQ1VaURwVJGUHe2tInISc088P2ASGhgIZ9_iWaIvdk1Of0-clNczzSt7-n011jWU-78xvUypxFPntK\" class=\"c-showurl\" style=\"color: green; text-decoration-line: none;\">bbs.tianya.cn/list-fun...&nbsp;</a></p><p><span class=\"c-icon c-icon-triangle-down-g\" style=\"background: url(&quot;https://ss1.bdstatic.com/5eN1bjq8AAUYm2zgoY3K/r/www/cache/static/protocol/https/global/img/icons_5859e57.png&quot;) -744px -144px no-repeat; display: inline-block; width: 14px; height: 14px; vertical-align: text-bottom; overflow: hidden; cursor: pointer;\"></span></p><p><span class=\"c-icons-outer\" style=\"overflow: hidden; display: inline-block; vertical-align: bottom;\"><span class=\"c-icons-inner\" style=\"margin-left: -4px;\"></span></span>&nbsp;-&nbsp;<a href=\"http://cache.baiducontent.com/c?m=9d78d513d9d430dc4f9b91697b16c0161840c72362d88a5339968449e07946111727f4bb50644b578f8e2f7001d81800f7ae6d33711420c1cf8fd41181efcf3f2ffe2423706bc71b548c47&p=8b2a9715d9c041a400f3c2235164c4&newp=8e769a47949614ff57ee94754b4bcc231610db2151d7db1e6b82c825d7331b001c3bbfb423261603d3ce776700ad4b5deef63179300323a3dda5c91d9fb4c57479ca7261&user=baidu&fm=sc&query=%CA%D7%D2%B3&qid=8d70399f00014fd9&p1=9\" target=\"_blank\" class=\"m\" style=\"color: rgb(102, 0, 102);\">百度快照</a></p><h3 class=\"t\" style=\"margin: 0px 0px 1px; padding: 0px; list-style: none; font-weight: 400; font-size: medium; line-height: 1.54;\"><a href=\"http://www.baidu.com/link?url=00iZliVAvUkre1baXsI5MQ0_bNNLGLKr6Q58hlDV0bov7-Dm42ayPgqeW8h65tTs\" target=\"_blank\">可在北京市公安局消防局官网 -&nbsp;<span style=\"color: rgb(204, 0, 0);\">首页</span></a></h3><p><a target=\"_blank\" href=\"http://www.baidu.com/link?url=00iZliVAvUkre1baXsI5MQ0_bNNLGLKr6Q58hlDV0bov7-Dm42ayPgqeW8h65tTs\" class=\"c-showurl\" style=\"color: green; text-decoration-line: none;\">xfj.beijing.gov.cn/&nbsp;</a></p><p><span class=\"c-icon c-icon-triangle-down-g\" style=\"background: url(&quot;https://ss1.bdstatic.com/5eN1bjq8AAUYm2zgoY3K/r/www/cache/static/protocol/https/global/img/icons_5859e57.png&quot;) -744px -144px no-repeat; display: inline-block; width: 14px; height: 14px; vertical-align: text-bottom; overflow: hidden; cursor: pointer;\"></span></p><p><span class=\"c-icons-outer\" style=\"overflow: hidden; display: inline-block; vertical-align: bottom;\"><span class=\"c-icons-inner\" style=\"margin-left: -4px;\"></span></span></p><p class=\"f13\" style=\"margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; color: rgb(102, 102, 102);\">由于该网站的robots.txt文件存在限制指令（限制搜索引擎抓取），系统无法提供该页面的内容描述&nbsp;-&nbsp;<a href=\"http://zhanzhang.baidu.com/robots/index?sitename=http%3A%2F%2Fwww.baidu.com%2Flink%3Furl%3D00iZliVAvUkre1baXsI5MQ0_bNNLGLKr6Q58hlDV0bov7-Dm42ayPgqeW8h65tTs\" target=\"_blank\" style=\"color: rgb(102, 102, 102);\">了解详情</a></p><p><br/></p>');
INSERT INTO `article` VALUES ('11', '1', 'setAttr方法', 'setAttr方法', 'Sat Dec 22 21:58:30 CST 2018', '<p style=\"box-sizing: border-box; font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Helvetica Neue&quot;, Arial, 宋体, sans-serif; margin-top: 0px; margin-bottom: 12px; padding: 0px; overflow-wrap: break-word; color: rgb(34, 34, 34); white-space: normal; background-color: rgb(252, 252, 252);\">setAttr(String, Object)转调了HttpServletRequest.setAttribute(String, Object)，该方法可以将各种数据传递给View并在View中显示出来。</p><p style=\"box-sizing: border-box; font-family: &quot;Microsoft YaHei&quot;, 微软雅黑, &quot;Helvetica Neue&quot;, Arial, 宋体, sans-serif; margin-top: 0px; margin-bottom: 12px; padding: 0px; overflow-wrap: break-word; color: rgb(34, 34, 34); white-space: normal; background-color: rgb(252, 252, 252);\">通过查看 jfinal 源码 Controller 可知 setAttr(String, Object) 方法在底层仅仅转调了底层的 HttpServletRequest 方法：</p><p><img src=\"/ueditor/jsp/upload/image/20181222/1545487104213099083.png\" title=\"1545487104213099083.png\" alt=\"image.png\"/></p><p><img src=\"http://localhost:8787/ueditor/jsp/upload/image/20181222/1545487104213099083.png\" title=\"1545487104213099083.png\" alt=\"image.png\"/></p><p><br/></p><p style=\"line-height: 16px;\"><img src=\"http://localhost:8787/Public/Theme/Bootstrap/js/UEditor/dialogs/attachment/fileTypeImages/icon_doc.gif\"/><a style=\"font-size:12px; color:#0066cc;\" href=\"/ueditor/jsp/upload/file/20181224/1545621532107020082.doc\" title=\"附件3：华东交通大学研究生第二学年学业奖学金申请表 - 副本.doc\">附件3：华东交通大学研究生第二学年学业奖学金申请表 - 副本.doc</a></p><p><br/></p>');

-- ----------------------------
-- Table structure for backup
-- ----------------------------
DROP TABLE IF EXISTS `backup`;
CREATE TABLE `backup` (
  `id` int(11) NOT NULL,
  `databasename` varchar(50) NOT NULL,
  `backupname` varchar(50) NOT NULL,
  `backupsize` varchar(50) DEFAULT NULL,
  `backuptime` datetime DEFAULT NULL,
  `backuppersonnel` varchar(50) DEFAULT NULL,
  `instructions` varchar(1024) DEFAULT NULL,
  `absolutepath` varchar(1024) DEFAULT NULL,
  `relativepath` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of backup
-- ----------------------------

-- ----------------------------
-- Table structure for classification
-- ----------------------------
DROP TABLE IF EXISTS `classification`;
CREATE TABLE `classification` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `classificationname` varchar(50) NOT NULL,
  `describe` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of classification
-- ----------------------------
INSERT INTO `classification` VALUES ('1', '平台介绍', '<p><span style=\"box-sizing: border-box; line-height: 60px; font-size: 25px;\">Diana轻量级开发框架</span></p><p><span class=\"glyphicon glyphicon-th-list\" style=\"box-sizing: border-box; position: relative; top: 1px; display: inline-block; font-family: &quot;Glyphicons Halflings&quot;; line-height: 1; -webkit-font-smoothing: antialiased; margin-right: 5px;\"></span>框架简介</p><p style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; color: rgb(119, 119, 119);\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Diana轻量级开发框架的思想是基于MVC框架，但去除MVC框架的系统结构和实现的复杂性。通过使用单入口模式，利用反射机制实现了模型(model)－视图(view)－控制器(controller)的逻辑、数据、界面显示的分离，使得框架加载性能相对于传统MVC框架较为高效。前台设计了两种页面风格(基于MVVM框架Knockout的ACE前端，基于Bootstrap开发的扁平化前端)。后台ORM采用SQL Sugar使系统与数据库的操作更加灵活稳定。Diana轻量级开发框架有强大的权限管理，并且集成工作流引擎组件，支持可视化操作，使业务流程灵活可控。框架本身是一个可二次开发的开发平台，开发者既能通过在本框架上完成大部分的基础开发工作，也可以根据框架预留接口进行再次开发，本框架结构清晰、性能高、速度快、扩展性强、界面简单。</p><p><span class=\"glyphicon glyphicon-th-list\" style=\"box-sizing: border-box; position: relative; top: 1px; display: inline-block; font-family: &quot;Glyphicons Halflings&quot;; line-height: 1; -webkit-font-smoothing: antialiased; margin-right: 5px;\"></span><br/></p>');
INSERT INTO `classification` VALUES ('2', '使用说明', '');
INSERT INTO `classification` VALUES ('3', '测试分类', '<h3 class=\"t\" style=\"margin: 0px 0px 1px; padding: 0px; list-style: none; font-weight: 400; font-size: medium; line-height: 1.54;\"><a href=\"https://www.baidu.com/link?url=6irWswBba-kxf8dsZFtl2xAohCW_7NxCll_B_rzYQzy&wd=&eqid=8d70399f00014fd9000000065c43e8d3\" target=\"_blank\">腾讯<span style=\"color: rgb(204, 0, 0);\">首页</span></a></h3><p><a class=\"c-img6\" href=\"http://www.baidu.com/link?url=6irWswBba-kxf8dsZFtl2xAohCW_7NxCll_B_rzYQzy\" target=\"_blank\" style=\"width: 121px; background-image: initial; background-position: center center; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; text-decoration-line: none; display: block; overflow: hidden; height: 75px;\"><img class=\"c-img c-img6\" src=\"/ueditor/jsp/upload/image/20190120/1547954558743044066.jpg\"/></a></p><p>腾讯网从2003年创立至今,已经成为集新闻信息,区域垂直生活服务、社会化媒体资讯和产品为一体的互联网媒体平台。腾讯网下设新闻、科技、财经、娱乐、体育、汽车、时尚...</p><p><a target=\"_blank\" href=\"http://www.baidu.com/link?url=6irWswBba-kxf8dsZFtl2xAohCW_7NxCll_B_rzYQzy\" class=\"c-showurl\" style=\"color: green; text-decoration-line: none;\">https://www.qq.com/&nbsp;</a></p><p><span class=\"c-icon c-icon-triangle-down-g\" style=\"background: url(&quot;https://ss1.bdstatic.com/5eN1bjq8AAUYm2zgoY3K/r/www/cache/static/protocol/https/global/img/icons_5859e57.png&quot;) -744px -144px no-repeat; display: inline-block; width: 14px; height: 14px; vertical-align: text-bottom; overflow: hidden; cursor: pointer;\"></span></p><p><span class=\"c-icons-outer\" style=\"overflow: hidden; display: inline-block; vertical-align: bottom;\"><span class=\"c-icons-inner\" style=\"margin-left: -4px;\"><span class=\"c-vline\" style=\"display: inline-block; margin: 0px 3px; border-left: 1px solid rgb(221, 221, 221); width: 0px; height: 12px;\"></span><span class=\"c-trust-as vstar \"><a href=\"https://www.baidu.com/s?wd=%E6%B7%B1%E5%9C%B3%E5%B8%82%E8%85%BE%E8%AE%AF%E8%AE%A1%E7%AE%97%E6%9C%BA%E7%B3%BB%E7%BB%9F%E6%9C%89%E9%99%90%E5%85%AC%E5%8F%B8@v&vmp_ec=8c1d589ac9e80f152f7e53dd2=52SXs00dcc5255bc810j25cJfaxXcy13da3d2db3f2b159&vmp_ectm=1547864489&from=vs&product=v&rsv_dl=0_left_v_3\" class=\"c-icon c-icon-v c-icon-v3\" target=\"_blank\" style=\"background: url(&quot;https://ss1.bdstatic.com/5eN1bjq8AAUYm2zgoY3K/r/www/cache/static/protocol/https/global/img/icons_5859e57.png&quot;) -936px -192px no-repeat; display: inline-block; width: 19px; height: 14px; vertical-align: text-bottom; overflow: hidden; border: 1px solid transparent; cursor: pointer;\"></a></span></span></span>&nbsp;-&nbsp;<a href=\"http://cache.baiducontent.com/c?m=9d78d513d9d430dc4f9b91697b16c0161840c72362d88a533996d25f9217465c0223a6ac27555347c4c50b365cf054&p=9f6ac54ad5c259fc57efc23f530d&newp=8b2a9729ce8c5bb908e2977f5b4c92695c02dc3051d6db01298ffe0cc4241a1a1a3aecbb24241502d9c478610abb0f31aba7747d605f76db8387925c&user=baidu&fm=sc&query=%CA%D7%D2%B3&qid=8d70399f00014fd9&p1=2\" target=\"_blank\" class=\"m\" style=\"color: rgb(102, 0, 102);\">百度快照</a><span class=\"c-pingjia\">&nbsp;-&nbsp;<a href=\"https://www.baidu.com/tools?url=http%3A%2F%2Fwww.baidu.com%2Flink%3Furl%3D6irWswBba-kxf8dsZFtl2xAohCW_7NxCll_B_rzYQzy&jump=https%3A%2F%2Fkoubei.baidu.com%2Fp%2Fsentry%3Ftitle%3D%01%E8%85%BE%E8%AE%AF%02%E9%A6%96%E9%A1%B5%03%26q%3D%E9%A6%96%E9%A1%B5%26from%3Dps_pc4&key=surl\" target=\"_blank\" class=\"m\" style=\"color: rgb(102, 0, 102);\">142条评价</a></span></p><p><span class=\"c-icon c-icon-bear-circle c-gap-right-small\" style=\"margin-right: 6px; background: url(&quot;https://ss1.bdstatic.com/5eN1bjq8AAUYm2zgoY3K/r/www/cache/static/protocol/https/global/img/icons_5859e57.png&quot;) 0px -216px no-repeat; display: inline-block; width: 18px; height: 18px; vertical-align: text-bottom; overflow: hidden; margin-bottom: -4px;\"></span><span class=\"c-gray\" style=\"color: rgb(102, 102, 102); font-size: 13px;\">为您推荐：</span><a class=\"\" href=\"https://www.baidu.com/s?tn=baiduhome_pg&rsv_idx=2&wd=%E8%85%BE%E8%AE%AF%E5%AE%98%E6%96%B9%E7%BD%91%E7%AB%99%E5%B9%B3%E5%8F%B0&rsv_crq=6&bs=%E9%A6%96%E9%A1%B5\" title=\"腾讯官方网站平台\" target=\"_blank\" style=\"font-size: 13px;\">腾讯官方网站平台</a><a class=\"c-gap-left-large\" href=\"https://www.baidu.com/s?tn=baiduhome_pg&rsv_idx=2&wd=qq%E7%BD%91%E9%A1%B5%E7%99%BB%E5%BD%95QQ%E5%8F%B7&rsv_crq=6&bs=%E9%A6%96%E9%A1%B5\" title=\"qq网页登录QQ号\" target=\"_blank\" style=\"margin-left: 16px; font-size: 13px;\">qq网页登录QQ号</a><a class=\"c-gap-left-large\" href=\"https://www.baidu.com/s?tn=baiduhome_pg&rsv_idx=2&wd=%E8%85%BE&rsv_crq=6&bs=%E9%A6%96%E9%A1%B5\" title=\"腾\" target=\"_blank\" style=\"margin-left: 16px; font-size: 13px;\">腾</a><a class=\"c-gap-left-large\" href=\"https://www.baidu.com/s?tn=baiduhome_pg&rsv_idx=2&wd=qq%E5%AE%98%E7%BD%91%E7%99%BB%E5%BD%95%E4%B8%AA%E4%BA%BA%E4%B8%AD%E5%BF%83&rsv_crq=6&bs=%E9%A6%96%E9%A1%B5\" title=\"qq官网登录个人中心\" target=\"_blank\" style=\"margin-left: 16px; font-size: 13px;\">qq官网登录个人中心</a><a class=\"c-gap-left-large\" href=\"https://www.baidu.com/s?tn=baiduhome_pg&rsv_idx=2&wd=%E6%96%B0%E6%B5%AA&rsv_crq=6&bs=%E9%A6%96%E9%A1%B5\" title=\"新浪\" target=\"_blank\" style=\"margin-left: 16px; font-size: 13px;\">新浪</a><a style=\"font-size: 13px; height: 0px; display: inline-block;\"></a><a class=\"c-gap-left-large\" href=\"https://www.baidu.com/s?tn=baiduhome_pg&rsv_idx=2&wd=QQ%E6%B3%A8%E5%86%8C%E5%AE%98%E7%BD%91&rsv_crq=6&bs=%E9%A6%96%E9%A1%B5\" title=\"QQ注册官网\" target=\"_blank\" style=\"margin-left: 88px; font-size: 13px;\">QQ注册官网</a><a class=\"c-gap-left-large\" href=\"https://www.baidu.com/s?tn=baiduhome_pg&rsv_idx=2&wd=%E6%89%8B%E6%9C%BAQQ%E7%99%BB%E5%BD%95&rsv_crq=6&bs=%E9%A6%96%E9%A1%B5\" title=\"手机QQ登录\" target=\"_blank\" style=\"margin-left: 16px; font-size: 13px;\">手机QQ登录</a><a class=\"c-gap-left-large\" href=\"https://www.baidu.com/s?tn=baiduhome_pg&rsv_idx=2&wd=%E8%85%BE%E8%AE%AF%E6%B8%B8%E6%88%8F%E5%AE%98%E7%BD%91%E9%A6%96%E9%A1%B5&rsv_crq=6&bs=%E9%A6%96%E9%A1%B5\" title=\"腾讯游戏官网首页\" target=\"_blank\" style=\"margin-left: 16px; font-size: 13px;\">腾讯游戏官网首页</a><a class=\"c-gap-left-large\" href=\"https://www.baidu.com/s?tn=baiduhome_pg&rsv_idx=2&wd=QQ%E5%AE%A2%E6%9C%8D%E4%BA%BA%E5%B7%A5%E7%94%B5%E8%AF%9D&rsv_crq=6&bs=%E9%A6%96%E9%A1%B5\" title=\"QQ客服人工电话\" target=\"_blank\" style=\"margin-left: 16px; font-size: 13px;\">QQ客服人工电话</a><a class=\"c-gap-left-large\" href=\"https://www.baidu.com/s?tn=baiduhome_pg&rsv_idx=2&wd=%E5%BE%AE%E4%BF%A1&rsv_crq=6&bs=%E9%A6%96%E9%A1%B5\" title=\"微信\" target=\"_blank\" style=\"margin-left: 16px; font-size: 13px;\">微信</a></p><h3 class=\"t\" style=\"margin: 0px 0px 1px; padding: 0px; list-style: none; font-weight: 400; font-size: medium; line-height: 1.54;\"><a href=\"http://www.baidu.com/link?url=2mSWa7la8vY8fHawF3c-3W9kCU9WMcUheUzR9jLYUUgbfUrjhzNx9CeVd-4KHfsF\" target=\"_blank\">新浪<span style=\"color: rgb(204, 0, 0);\">首页</span></a></h3><p><a class=\"c-img6\" href=\"http://www.baidu.com/link?url=2mSWa7la8vY8fHawF3c-3W9kCU9WMcUheUzR9jLYUUgbfUrjhzNx9CeVd-4KHfsF\" target=\"_blank\" style=\"width: 121px; background-image: initial; background-position: center center; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; text-decoration-line: none; display: block; overflow: hidden; height: 75px;\"><img src=\"/ueditor/jsp/upload/image/20190121/1548035766627050038.png\" title=\"1548035766627050038.png\" alt=\"image.png\"/></a></p><p>新浪网为全球用户24小时提供全面及时的中文资讯，内容覆盖国内外突发新闻事件、体坛赛事、娱乐时尚、产业资讯、实用信息等，设有新闻、体育、娱乐、财经、科技 ...</p><p><a target=\"_blank\" href=\"http://www.baidu.com/link?url=2mSWa7la8vY8fHawF3c-3W9kCU9WMcUheUzR9jLYUUgbfUrjhzNx9CeVd-4KHfsF\" class=\"c-showurl\" style=\"color: green; text-decoration-line: none;\">https://www.sina.com.cn/&nbsp;</a></p><p><span class=\"c-icon c-icon-triangle-down-g\" style=\"background: url(&quot;https://ss1.bdstatic.com/5eN1bjq8AAUYm2zgoY3K/r/www/cache/static/protocol/https/global/img/icons_5859e57.png&quot;) -744px -144px no-repeat; display: inline-block; width: 14px; height: 14px; vertical-align: text-bottom; overflow: hidden; cursor: pointer;\"></span></p><p><span class=\"c-icons-outer\" style=\"overflow: hidden; display: inline-block; vertical-align: bottom;\"><span class=\"c-icons-inner\" style=\"margin-left: -4px;\"></span></span>&nbsp;-&nbsp;<a href=\"http://cache.baiducontent.com/c?m=9f65cb4a8c8507ed19fa950d100b92235c4380147d8c8c4668d4e419ce3b4c413037bfa633674d4485ca6b1672b83f59fd8636654702&p=9777c54ad7c508f101a2c7710f53&newp=ce66ca5e85cc43f608e29578554192695c16ed623ac3864e1290c408d23f061d4866e0be23281605d6c0797347c2080ba8ff612e615a&user=baidu&fm=sc&query=%CA%D7%D2%B3&qid=8d70399f00014fd9&p1=3\" target=\"_blank\" class=\"m\" style=\"color: rgb(102, 0, 102);\">百度快照</a><span class=\"c-pingjia\">&nbsp;-&nbsp;<a href=\"https://www.baidu.com/tools?url=http%3A%2F%2Fwww.baidu.com%2Flink%3Furl%3D2mSWa7la8vY8fHawF3c-3W9kCU9WMcUheUzR9jLYUUgbfUrjhzNx9CeVd-4KHfsF&jump=https%3A%2F%2Fkoubei.baidu.com%2Fp%2Fsentry%3Ftitle%3D%01%E6%96%B0%E6%B5%AA%02%E9%A6%96%E9%A1%B5%03%26q%3D%E9%A6%96%E9%A1%B5%26from%3Dps_pc4&key=surl\" target=\"_blank\" class=\"m\" style=\"color: rgb(102, 0, 102);\">1495条评价</a></span></p><h3 class=\"t\" style=\"margin: 0px 0px 1px; padding: 0px; list-style: none; font-weight: 400; font-size: medium; line-height: 1.54;\"><a class=\"favurl\" href=\"http://www.baidu.com/link?url=V6VsI3JJgQduRmOwKck4FaS1zSCe8wjLEL40v1nWIL3\" target=\"_blank\" style=\"background-repeat: no-repeat; background-position: 0px 1px; padding-left: 20px; background-image: url(&quot;https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=1316938036,100450004&amp;fm=58&quot;);\">娱乐频道<span style=\"color: rgb(204, 0, 0);\">首页</span>&nbsp;- 网易娱乐_有态度的娱乐门户</a></h3><p><a class=\"c-img6\" href=\"http://www.baidu.com/link?url=V6VsI3JJgQduRmOwKck4FaS1zSCe8wjLEL40v1nWIL3\" target=\"_blank\" style=\"width: 121px; background-image: initial; background-position: center center; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; text-decoration-line: none; display: block; overflow: hidden; height: 75px;\"><img class=\"c-img c-img6\" src=\"/ueditor/jsp/upload/image/20190120/1547954558787049053.jpg\"/></a></p><p>网易娱乐是最全面最专业的娱乐资讯平台,提供娱乐八卦新闻和专题报道,集明星、女星、电影、电视、音乐、视频等娱乐资讯。</p><p><a target=\"_blank\" href=\"http://www.baidu.com/link?url=V6VsI3JJgQduRmOwKck4FaS1zSCe8wjLEL40v1nWIL3\" class=\"c-showurl\" style=\"color: green; text-decoration-line: none;\">ent.163.com/&nbsp;</a></p><p><span class=\"c-icon c-icon-triangle-down-g\" style=\"background: url(&quot;https://ss1.bdstatic.com/5eN1bjq8AAUYm2zgoY3K/r/www/cache/static/protocol/https/global/img/icons_5859e57.png&quot;) -744px -144px no-repeat; display: inline-block; width: 14px; height: 14px; vertical-align: text-bottom; overflow: hidden; cursor: pointer;\"></span></p><p><span class=\"c-icons-outer\" style=\"overflow: hidden; display: inline-block; vertical-align: bottom;\"><span class=\"c-icons-inner\" style=\"margin-left: -4px;\"></span></span>&nbsp;-&nbsp;<a href=\"http://cache.baiducontent.com/c?m=9d78d513d9d430dc4f9b91697b16c0161840c72362d88a5339968449e07946161b20f4bb50211405c4c50b365cf054&p=9f6ac54ad5c345b70be296284c48cc&newp=8b2a9729ce8c5bb908e2977e09408d231610db2151d3d401298ffe0cc4241a1a1a3aecbf23241402d3c577640bad485be9f63077350434f1f689df08d2ecce7e4390682e66&user=baidu&fm=sc&query=%CA%D7%D2%B3&qid=8d70399f00014fd9&p1=4\" target=\"_blank\" class=\"m\" style=\"color: rgb(102, 0, 102);\">百度快照</a><span class=\"c-pingjia\">&nbsp;-&nbsp;<a href=\"https://www.baidu.com/tools?url=http%3A%2F%2Fwww.baidu.com%2Flink%3Furl%3DV6VsI3JJgQduRmOwKck4FaS1zSCe8wjLEL40v1nWIL3&jump=https%3A%2F%2Fkoubei.baidu.com%2Fp%2Fsentry%3Ftitle%3D%01%E5%A8%B1%E4%B9%90%01%E9%A2%91%E9%81%93%02%E9%A6%96%E9%A1%B5%03%20-%20%01%E7%BD%91%E6%98%93%01%E5%A8%B1%E4%B9%90%01_%01%E6%9C%89%01%E6%80%81%E5%BA%A6%01%E7%9A%84%01%E5%A8%B1%E4%B9%90%01%E9%97%A8%E6%88%B7%01%26q%3D%E9%A6%96%E9%A1%B5%26from%3Dps_pc4&key=surl\" target=\"_blank\" class=\"m\" style=\"color: rgb(102, 0, 102);\">100条评价</a></span></p><h3 class=\"t\" style=\"margin: 0px 0px 1px; padding: 0px; list-style: none; font-weight: 400; font-size: medium; line-height: 1.54;\"><a href=\"http://www.baidu.com/link?url=KTC_pYICHM09s-YSCZk_rRDNJUlPNhue_hi7q3e1S15rpnyUti5Q6p1Cgc5TEBex\" target=\"_blank\">北京圣博润高新技术股份有限公司 -&nbsp;<span style=\"color: rgb(204, 0, 0);\">首页</span></a></h3><p><span style=\"color: rgb(204, 0, 0);\">首页</span>&nbsp;安全产品 安全服务 解决方案 服务支持 合作伙伴 关于SBR 在线技术咨询 在线培训咨询 全国咨询电话 400-966-2332 800-810-2332 关注圣博润官方微信企业...</p><p><a target=\"_blank\" href=\"http://www.baidu.com/link?url=KTC_pYICHM09s-YSCZk_rRDNJUlPNhue_hi7q3e1S15rpnyUti5Q6p1Cgc5TEBex\" class=\"c-showurl\" style=\"color: green; text-decoration-line: none;\">www.sbr-info.com/&nbsp;</a></p><p><span class=\"c-icon c-icon-triangle-down-g\" style=\"background: url(&quot;https://ss1.bdstatic.com/5eN1bjq8AAUYm2zgoY3K/r/www/cache/static/protocol/https/global/img/icons_5859e57.png&quot;) -744px -144px no-repeat; display: inline-block; width: 14px; height: 14px; vertical-align: text-bottom; overflow: hidden; cursor: pointer;\"></span></p><p><span class=\"c-icons-outer\" style=\"overflow: hidden; display: inline-block; vertical-align: bottom;\"><span class=\"c-icons-inner\" style=\"margin-left: -4px;\"></span></span>&nbsp;-&nbsp;<a href=\"http://cache.baiducontent.com/c?m=9d78d513d9d430dc4f9b91697b16c0161840c72362d88a5339968449e07946040223f4bb50634044c4c50a3c5dfb144bea87672f681e&p=9f6ac54ad0c559fc57efc23f530d&newp=8b2a9729ce8c5bb908e292785b4c92695c16ed653ac3864e1290c408d23f061d4866e0be23281605d6c0797347c2080ba8ff612e616f38f881de&user=baidu&fm=sc&query=%CA%D7%D2%B3&qid=8d70399f00014fd9&p1=5\" target=\"_blank\" class=\"m\" style=\"color: rgb(102, 0, 102);\">百度快照</a><span class=\"c-pingjia\">&nbsp;-&nbsp;<a href=\"https://www.baidu.com/tools?url=http%3A%2F%2Fwww.baidu.com%2Flink%3Furl%3DKTC_pYICHM09s-YSCZk_rRDNJUlPNhue_hi7q3e1S15rpnyUti5Q6p1Cgc5TEBex&jump=https%3A%2F%2Fkoubei.baidu.com%2Fp%2Fsentry%3Ftitle%3D%01%E5%8C%97%E4%BA%AC%01%E5%9C%A3%01%E5%8D%9A%01%E6%B6%A6%01%E9%AB%98%E6%96%B0%01%E6%8A%80%E6%9C%AF%01%E8%82%A1%E4%BB%BD%01%E6%9C%89%E9%99%90%01%E5%85%AC%E5%8F%B8%01%20-%20%02%E9%A6%96%E9%A1%B5%03%26q%3D%E9%A6%96%E9%A1%B5%26from%3Dps_pc1&key=surl\" target=\"_blank\" class=\"m\" style=\"color: rgb(102, 0, 102);\">评价</a></span></p><p><br/></p>');

-- ----------------------------
-- Table structure for group
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(50) NOT NULL,
  `groupcode` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=155 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of group
-- ----------------------------
INSERT INTO `group` VALUES ('4', '管理部', '14');
INSERT INTO `group` VALUES ('7', '人事部555', '666');
INSERT INTO `group` VALUES ('8', '技术部666', '99');
INSERT INTO `group` VALUES ('9', '生产部', '344');
INSERT INTO `group` VALUES ('12', '人事部', '15');
INSERT INTO `group` VALUES ('13', '技术部', '2');
INSERT INTO `group` VALUES ('14', '生产部', '3');
INSERT INTO `group` VALUES ('81', '管理部lll2', '4');
INSERT INTO `group` VALUES ('135', '管理部lll2', '4');
INSERT INTO `group` VALUES ('136', '管理部lll2', '4');
INSERT INTO `group` VALUES ('137', '管理部lll2', '4');
INSERT INTO `group` VALUES ('138', '管理部lll2', '4');
INSERT INTO `group` VALUES ('139', '管理部lll2', '4');
INSERT INTO `group` VALUES ('140', '技术部666', '99');
INSERT INTO `group` VALUES ('154', 'GROUPYCJTEST', '856212');
INSERT INTO `group` VALUES ('142', '技术部666', '99');
INSERT INTO `group` VALUES ('144', '技术部666', '99');
INSERT INTO `group` VALUES ('146', '技术部66', '99');
INSERT INTO `group` VALUES ('152', 'groupTest3', '1');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` varchar(50) NOT NULL,
  `ParentId` varchar(50) DEFAULT NULL,
  `EnCode` varchar(50) DEFAULT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Icon` varchar(50) DEFAULT NULL,
  `UrlAddress` varchar(500) DEFAULT NULL,
  `OpenTarget` varchar(50) DEFAULT NULL,
  `IsMenu` bit(1) NOT NULL,
  `IsExpand` bit(1) NOT NULL,
  `IsPublic` bit(1) NOT NULL,
  `SortCode` int(11) DEFAULT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `CreationTime` datetime NOT NULL,
  `CreatUserId` varchar(50) DEFAULT NULL,
  `LastModifyTime` datetime DEFAULT NULL,
  `LastModifyUserId` varchar(50) DEFAULT NULL,
  `IsEnabled` bit(1) NOT NULL,
  `IsDeleted` bit(1) NOT NULL,
  `DeleteTime` datetime DEFAULT NULL,
  `DeleteUserId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '73FD1267-79BA-4E23-A152-744AF73117E9', 'NULL', '数据备份', 'NULL', '/SystemSecurity/DbBackup/Index', 'iframe', '', '', '', '1', 'NULL', '0000-00-00 00:00:00', 'NULL', '0000-00-00 00:00:00', '9f2ec0797d0f4fe290ab8b09a8302aba', '', '', '0000-00-00 00:00:00', 'NULL');
INSERT INTO `menu` VALUES ('2', 'NULL', 'NULL', '系统管理', 'fa fa-gears', 'NULL', 'expand', '', '', '', '2', 'NULL', '0000-00-00 00:00:00', 'NULL', '0000-00-00 00:00:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '', '', '0000-00-00 00:00:00', 'NULL');
INSERT INTO `menu` VALUES ('3', 'NULL', 'NULL', '系统安全', 'fa fa-desktop', 'NULL', 'expand', '', '', '', '1', 'NULL', '0000-00-00 00:00:00', 'NULL', '0000-00-00 00:00:00', '9f2ec0797d0f4fe290ab8b09a8302aba', '', '', '0000-00-00 00:00:00', 'NULL');
INSERT INTO `menu` VALUES ('4', 'NULL', 'NULL', 'Wiki管理', 'fa fa-gears', 'NULL', 'expand', '', '', '', '2', 'NULL', '0000-00-00 00:00:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '0000-00-00 00:00:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '', '', '0000-00-00 00:00:00', 'NULL');
INSERT INTO `menu` VALUES ('5', 'e7e1cfb2856d492faeaadc8e2962ac76', 'NULL', '文档管理', 'NULL', '/WikiManage/WikiDocument/Index', 'iframe', '', '', '', '1', 'NULL', '0000-00-00 00:00:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '0000-00-00 00:00:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '', '', '0000-00-00 00:00:00', 'NULL');
INSERT INTO `menu` VALUES ('6', '73FD1267-79BA-4E23-A152-744AF73117E9', 'NULL', '区域管理', 'NULL', '/SystemManage/Area/Index', 'iframe', '', '', '', '2', 'NULL', '0000-00-00 00:00:00', 'NULL', '0000-00-00 00:00:00', 'NULL', '', '', '0000-00-00 00:00:00', 'NULL');
INSERT INTO `menu` VALUES ('7', '462027E0-0848-41DD-BCC3-025DCAE65555', 'NULL', '系统菜单', 'NULL', '/SystemManage/Module/Index', 'iframe', '', '', '', '7', '测试', '0000-00-00 00:00:00', 'NULL', '0000-00-00 00:00:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '', '', '0000-00-00 00:00:00', 'NULL');
INSERT INTO `menu` VALUES ('8', '462027E0-0848-41DD-BCC3-025DCAE65555', 'NULL', '用户管理', 'NULL', '/SystemManage/User/Index', 'iframe', '', '', '', '4', 'NULL', '0000-00-00 00:00:00', 'NULL', '0000-00-00 00:00:00', 'NULL', '', '', '0000-00-00 00:00:00', 'NULL');
INSERT INTO `menu` VALUES ('9', '462027E0-0848-41DD-BCC3-025DCAE65555', 'NULL', '数据字典', 'NULL', '/SystemManage/PropertyMapping/Index', 'iframe', '', '', '', '1', 'NULL', '0000-00-00 00:00:00', 'NULL', '0000-00-00 00:00:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '', '', '0000-00-00 00:00:00', 'NULL');
INSERT INTO `menu` VALUES ('10', '462027E0-0848-41DD-BCC3-025DCAE65555', 'NULL', '角色管理', 'NULL', '/SystemManage/role/Index', 'iframe', '', '', '', '2', '&nbsp;', '0000-00-00 00:00:00', 'NULL', '0000-00-00 00:00:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '', '', '0000-00-00 00:00:00', 'NULL');
INSERT INTO `menu` VALUES ('11', 'e7e1cfb2856d492faeaadc8e2962ac76', 'NULL', '菜单管理', 'NULL', '/WikiManage/WikiMenu/Index', 'iframe', '', '', '', '2', 'NULL', '0000-00-00 00:00:00', '9f2ec079-7d0f-4fe2-90ab-8b09a8302aba', '0000-00-00 00:00:00', 'NULL', '', '', '0000-00-00 00:00:00', 'NULL');
INSERT INTO `menu` VALUES ('F298F868-B689-4982-8C8B-9268CBF0308D', '462027E0-0848-41DD-BCC3-025DCAE65555', 'NULL', '用户组管理', 'NULL', '/SystemManage/Group/Index', 'iframe', '', '', '', '3', 'NULL', '0000-00-00 00:00:00', 'NULL', '0000-00-00 00:00:00', 'NULL', '', '', '0000-00-00 00:00:00', 'NULL');
INSERT INTO `menu` VALUES ('96EE855E-8CD2-47FC-A51D-127C131C9FB9', '73FD1267-79BA-4E23-A152-744AF73117E9', 'NULL', '资源管理', 'NULL', '/SystemManage/Resource/Index', 'iframe', '', '', '', '3', 'NULL', '0000-00-00 00:00:00', 'NULL', '0000-00-00 00:00:00', 'NULL', '', '', '0000-00-00 00:00:00', 'NULL');

-- ----------------------------
-- Table structure for migrationhistory
-- ----------------------------
DROP TABLE IF EXISTS `migrationhistory`;
CREATE TABLE `migrationhistory` (
  `migrationid` varchar(255) NOT NULL,
  `model` varbinary(255) NOT NULL,
  `productversion` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of migrationhistory
-- ----------------------------

-- ----------------------------
-- Table structure for propertymapping
-- ----------------------------
DROP TABLE IF EXISTS `propertymapping`;
CREATE TABLE `propertymapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `propertyname` varchar(50) NOT NULL,
  `propertyvalue` varchar(50) NOT NULL,
  `propertymeaning` varchar(50) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of propertymapping
-- ----------------------------
INSERT INTO `propertymapping` VALUES ('1', 'test1', '1', '1', '1', '0');
INSERT INTO `propertymapping` VALUES ('2', 'cll', '2', '2', '2', '1');
INSERT INTO `propertymapping` VALUES ('3', 'test2', '1', '1', '1', '1');
INSERT INTO `propertymapping` VALUES ('40', 'rrrrrr', '1', '1', '222', '2');
INSERT INTO `propertymapping` VALUES ('41', 'test111', '1', '1', '1', '1');
INSERT INTO `propertymapping` VALUES ('42', 'test111', '1', '1', '1', '1');
INSERT INTO `propertymapping` VALUES ('43', 'test111', '1', '1', '1', '1');
INSERT INTO `propertymapping` VALUES ('47', 'test2', '1', '1', '1', '1');
INSERT INTO `propertymapping` VALUES ('46', 'test111', '1', '1', '1', '1');
INSERT INTO `propertymapping` VALUES ('48', 'rrrrrr', '1', '1', '222', '2');
INSERT INTO `propertymapping` VALUES ('49', 'cll', '2', '2', '2', '1');
INSERT INTO `propertymapping` VALUES ('50', 'test1', '1', '1', '1', '0');
INSERT INTO `propertymapping` VALUES ('51', 'test2', '1', '1', '1', '1');
INSERT INTO `propertymapping` VALUES ('52', 'rrrrrr', '1', '1', '222', '2');
INSERT INTO `propertymapping` VALUES ('53', 'test111', '1', '1', '1', '1');
INSERT INTO `propertymapping` VALUES ('54', 'test2', '1', '1', '1', '1');
INSERT INTO `propertymapping` VALUES ('55', 'test111', '1', '1', '1', '1');
INSERT INTO `propertymapping` VALUES ('56', 'cll', '2', '2', '2', '1');
INSERT INTO `propertymapping` VALUES ('57', 'rrrrrr', '1', '1', '222', '2');
INSERT INTO `propertymapping` VALUES ('58', 'test111', '1', '1', '1', '1');
INSERT INTO `propertymapping` VALUES ('59', 'rrrrrr', '1', '1', '222', '2');
INSERT INTO `propertymapping` VALUES ('60', 'test111', '1', '1', '1', '1');
INSERT INTO `propertymapping` VALUES ('62', '20190121', '2233', '22', '22', '1');
INSERT INTO `propertymapping` VALUES ('64', 'ggg', 'gggg', null, null, null);

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resourcename` varchar(50) NOT NULL,
  `resourcetype` int(11) NOT NULL,
  `resourceurl` varchar(1024) DEFAULT NULL,
  `resourcescript` varchar(1024) DEFAULT NULL,
  `resourceowner` varchar(1024) DEFAULT NULL,
  `resourcelevel` int(11) DEFAULT NULL,
  `resourceleftico` varchar(50) DEFAULT NULL,
  `resourcerightico` varchar(50) DEFAULT NULL,
  `resourceclass` varchar(50) DEFAULT NULL,
  `resourcenumber` int(11) DEFAULT NULL,
  `ordernum` int(11) DEFAULT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `controlername` text,
  `resourceAcescript` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES ('1', '系统管理', '1', null, '1', '0', '1', 'fa fa-gears', 'fa arrow', null, '0', '0', null, null, null);
INSERT INTO `resource` VALUES ('3', '工作流', '1', null, '1', '0', '1', 'fa fa-bar-chart-o', 'fa arrow', '', '0', '0', '', null, null);
INSERT INTO `resource` VALUES ('5', '用户管理', '1', 'index.ashx?ctrl=user', '1', '1', '2', null, null, null, null, null, null, 'user', null);
INSERT INTO `resource` VALUES ('7', '角色管理', '1', 'index.ashx?ctrl=role', '1', '1', '2', null, null, null, null, null, null, 'role', null);
INSERT INTO `resource` VALUES ('8', '动作管理', '1', 'index.ashx?ctrl=action', '1', '1', '2', null, null, null, null, null, null, 'action', null);
INSERT INTO `resource` VALUES ('9', '资源管理', '1', 'index.ashx?ctrl=resource', '1', '1', '2', null, null, null, null, null, null, 'resource', null);
INSERT INTO `resource` VALUES ('10', '分组管理', '1', 'index.ashx?ctrl=group', '1', '1', '2', null, null, null, null, null, null, 'group', null);
INSERT INTO `resource` VALUES ('11', '数据字典', '1', 'index.ashx?ctrl=propertymapping', '1', '1', '2', null, null, null, null, null, null, 'propertymapping', null);
INSERT INTO `resource` VALUES ('12', '区域管理', '1', 'index.ashx?ctrl=area', '1', '1', '2', null, null, null, null, null, null, 'area', null);
INSERT INTO `resource` VALUES ('13', '数据库备份', '1', 'index.ashx?ctrl=backup', '1', '2', '2', null, null, null, null, null, null, 'backup', null);
INSERT INTO `resource` VALUES ('14', '工作流管理', '1', 'index.ashx?ctrl=workflow', '1', '3', '2', '', '', '', '0', '0', '', 'workflow', null);
INSERT INTO `resource` VALUES ('17', '节点动作', '1', 'index.ashx?ctrl=workflownodeaction', '1', '3', '2', '', '', '', '0', '0', '', 'workflownodeaction', null);
INSERT INTO `resource` VALUES ('19', '操作者管理', '1', 'index.ashx?ctrl=workflownodeoperator', '1', '3', '2', '', '', '', '0', '0', '', 'workflownodeoperator', null);
INSERT INTO `resource` VALUES ('27', '工作流节点', '1', 'index.ashx?ctrl=workflownode', '1', '3', '2', null, null, null, '0', '0', null, 'workflownode', null);
INSERT INTO `resource` VALUES ('35', '文章管理', '1', null, '1', '0', '1', 'fa fa-gears', 'fa arrow', '', '0', '0', '', null, null);
INSERT INTO `resource` VALUES ('36', '文章', '1', 'index.ashx?ctrl=article', '1', '35', '2', null, null, null, null, null, null, 'article', null);
INSERT INTO `resource` VALUES ('37', '新增用户', '3', null, 'btn_add()', '5', '3', 'fa fa-plus', 'fa fa-plus', 'btn btn-primary dropdown-text', null, '1', null, 'user', 'click:Add');
INSERT INTO `resource` VALUES ('38', '修改用户', '3', null, 'btn_edit()', '5', '3', 'fa fa-pencil-square-o', '', 'fa fa-pencil-square-o', null, '1', '', 'user', 'click:Edit,attr:{disabled:!DataTable.SelectedModel()}');
INSERT INTO `resource` VALUES ('39', '删除用户', '3', null, 'btn_delete()', '5', '3', 'fa fa-trash-o', null, 'fa fa-trash-o', null, '1', null, 'user', 'click:Delete,attr:{disabled:!DataTable.SelectedModel()}');
INSERT INTO `resource` VALUES ('40', '查看用户', '3', null, 'btn_details()', '5', '3', 'fa fa-pencil-square-o', null, 'fa fa-search-plus', null, '1', null, 'user', 'click:Detail,attr:{disabled:!DataTable.SelectedModel()}');
INSERT INTO `resource` VALUES ('41', '密码重置', '3', null, 'btn_revisepassword()', '5', '3', 'fa fa-pencil-square-o', null, 'fa fa-key', null, '1', null, 'user', 'click:OpenRevisePasswordDialog,attr:{disabled:!DataTable.SelectedModel()}');
INSERT INTO `resource` VALUES ('42', '新增角色', '3', null, 'btn_add()', '7', '3', 'fa fa-plus', 'fa fa-plus', 'btn btn-primary dropdown-text', null, '1', null, 'role', 'click:Add');
INSERT INTO `resource` VALUES ('43', '修改角色', '3', null, 'btn_edit()', '7', '3', 'fa fa-pencil-square-o', null, 'fa fa-pencil-square-o', null, '1', null, 'role', 'click:Edit,attr:{disabled:!DataTable.SelectedModel()}');
INSERT INTO `resource` VALUES ('44', '删除角色', '3', null, 'btn_delete()', '7', '3', 'fa fa-trash-o', null, 'fa fa-trash-o', null, '1', null, 'role', 'click:Delete,attr:{disabled:!DataTable.SelectedModel()}');
INSERT INTO `resource` VALUES ('45', '查看角色', '3', null, 'btn_details()', '7', '3', 'fa fa-pencil-square-o', null, 'fa fa-search-plus', null, '1', null, 'role', 'click:Detail,attr:{disabled:!DataTable.SelectedModel()}');
INSERT INTO `resource` VALUES ('46', '新增资源', '3', null, 'btn_add()', '9', '3', 'fa fa-plus', 'fa fa-plus', 'btn btn-primary dropdown-text', null, '1', null, 'resource', 'click:Add');
INSERT INTO `resource` VALUES ('47', '修改资源', '3', null, 'btn_edit()', '9', '3', 'fa fa-pencil-square-o', null, 'fa fa-pencil-square-o', null, '1', null, 'resource', 'click:Edit,attr:{disabled:!DataTable.SelectedModel()}');
INSERT INTO `resource` VALUES ('48', '删除资源', '3', null, 'btn_delete()', '9', '3', 'fa fa-trash-o', null, 'fa fa-trash-o', null, '1', null, 'resource', 'click:Delete,attr:{disabled:!DataTable.SelectedModel()}');
INSERT INTO `resource` VALUES ('49', '查看资源', '3', null, 'btn_details()', '9', '3', 'fa fa-pencil-square-o', null, 'fa fa-search-plus', null, '1', null, 'resource', 'click:Detail,attr:{disabled:!DataTable.SelectedModel()}');
INSERT INTO `resource` VALUES ('50', '新增分组', '3', null, 'btn_add()', '10', '3', 'fa fa-plus', 'fa fa-plus', 'btn btn-primary dropdown-text', null, '1', null, 'group', 'click:Add');
INSERT INTO `resource` VALUES ('51', '修改分组', '3', null, 'btn_edit()', '10', '3', 'fa fa-pencil-square-o', null, 'fa fa-pencil-square-o', null, '1', null, 'group', 'click:Edit,attr:{disabled:!DataTable.SelectedModel()}');
INSERT INTO `resource` VALUES ('52', '删除分组', '3', null, 'btn_delete()', '10', '3', 'fa fa-trash-o', null, 'fa fa-trash-o', null, '1', null, 'group', 'click:Delete,attr:{disabled:!DataTable.SelectedModel()}');
INSERT INTO `resource` VALUES ('53', '查看分组', '3', null, 'btn_details()', '10', '3', 'fa fa-pencil-square-o', null, 'fa fa-search-plus', null, '1', null, 'group', 'click:Detail,attr:{disabled:!DataTable.SelectedModel()}');
INSERT INTO `resource` VALUES ('54', '新增字典', '3', null, 'btn_add()', '11', '3', 'fa fa-plus', 'fa fa-plus', 'btn btn-primary dropdown-text', null, '1', null, 'propertymapping', 'click:Add');
INSERT INTO `resource` VALUES ('55', '修改字典', '3', null, 'btn_edit()', '11', '3', 'fa fa-pencil-square-o', null, 'fa fa-pencil-square-o', null, '1', null, 'propertymapping', 'click:Edit,attr:{disabled:!DataTable.SelectedModel()}');
INSERT INTO `resource` VALUES ('56', '删除字典', '3', null, 'btn_delete()', '11', '3', 'fa fa-trash-o', null, 'fa fa-trash-o', null, '1', null, 'propertymapping', 'click:Delete,attr:{disabled:!DataTable.SelectedModel()}');
INSERT INTO `resource` VALUES ('57', '查看字典', '3', null, 'btn_details()', '11', '3', 'fa fa-pencil-square-o', null, 'fa fa-search-plus', null, '1', null, 'propertymapping', 'click:Detail,attr:{disabled:!DataTable.SelectedModel()}');
INSERT INTO `resource` VALUES ('58', '新增区域', '3', null, 'btn_add()', '12', '3', 'fa fa-plus', 'fa fa-plus', 'btn btn-primary dropdown-text', null, '1', null, 'area', 'click:Add');
INSERT INTO `resource` VALUES ('59', '修改区域', '3', null, 'btn_edit()', '12', '3', 'fa fa-pencil-square-o', null, 'fa fa-pencil-square-o', null, '1', null, 'area', 'click:Edit,attr:{disabled:!DataTable.SelectedModel()}');
INSERT INTO `resource` VALUES ('60', '删除区域', '3', null, 'btn_delete()', '12', '3', 'fa fa-trash-o', null, 'fa fa-trash-o', null, '1', null, 'area', 'click:Delete,attr:{disabled:!DataTable.SelectedModel()}');
INSERT INTO `resource` VALUES ('61', '查看区域', '3', null, 'btn_details()', '12', '3', 'fa fa-pencil-square-o', null, 'fa fa-search-plus', null, '1', null, 'area', 'click:Detail,attr:{disabled:!DataTable.SelectedModel()}');
INSERT INTO `resource` VALUES ('62', '新增工作流', '3', null, 'btn_add()', '14', '3', 'fa fa-plus', 'fa fa-plus', 'btn btn-primary dropdown-text', null, '1', null, 'workflow', null);
INSERT INTO `resource` VALUES ('63', '修改工作流', '3', null, 'btn_edit()', '14', '3', 'fa fa-pencil-square-o', null, 'fa fa-pencil-square-o', null, '1', null, 'workflow', null);
INSERT INTO `resource` VALUES ('64', '删除工作流', '3', null, 'btn_delete()', '14', '3', 'fa fa-trash-o', null, 'fa fa-trash-o', null, '1', null, 'workflow', null);
INSERT INTO `resource` VALUES ('65', '查看工作流', '3', null, 'btn_details()', '14', '3', 'fa fa-pencil-square-o', null, 'fa fa-search-plus', null, '1', null, 'workflow', null);
INSERT INTO `resource` VALUES ('66', '新增节点动作', '3', null, 'btn_add()', '17', '3', 'fa fa-plus', 'fa fa-plus', 'btn btn-primary dropdown-text', null, '1', null, 'workflownodeaction', null);
INSERT INTO `resource` VALUES ('67', '修改节点动作', '3', null, 'btn_edit()', '17', '3', 'fa fa-pencil-square-o', null, 'fa fa-pencil-square-o', null, '1', null, 'workflownodeaction', null);
INSERT INTO `resource` VALUES ('68', '删除节点动作', '3', null, 'btn_delete()', '17', '3', 'fa fa-trash-o', null, 'fa fa-trash-o', null, '1', null, 'workflownodeaction', null);
INSERT INTO `resource` VALUES ('69', '查看节点动作', '3', null, 'btn_details()', '17', '3', 'fa fa-pencil-square-o', null, 'fa fa-search-plus', null, '1', null, 'workflownodeaction', null);
INSERT INTO `resource` VALUES ('70', '新增节点', '3', null, 'btn_add()', '27', '3', 'fa fa-plus', 'fa fa-plus', 'btn btn-primary dropdown-text', null, '1', null, 'workflownode', null);
INSERT INTO `resource` VALUES ('71', '修改节点', '3', null, 'btn_edit()', '27', '3', 'fa fa-pencil-square-o', null, 'fa fa-pencil-square-o', null, '1', null, 'workflownode', null);
INSERT INTO `resource` VALUES ('72', '删除节点', '3', null, 'btn_delete()', '27', '3', 'fa fa-trash-o', null, 'fa fa-trash-o', null, '1', null, 'workflownode', null);
INSERT INTO `resource` VALUES ('73', '查看节点', '3', null, 'btn_details()', '27', '3', 'fa fa-pencil-square-o', null, 'fa fa-search-plus', null, '1', null, 'workflownode', null);
INSERT INTO `resource` VALUES ('74', '新增节点操作者', '3', null, 'btn_add()', '19', '3', 'fa fa-plus', 'fa fa-plus', 'btn btn-primary dropdown-text', null, '1', null, 'workflownodeoperator', null);
INSERT INTO `resource` VALUES ('75', '修改节点操作者', '3', null, 'btn_edit()', '19', '3', 'fa fa-pencil-square-o', null, 'fa fa-pencil-square-o', null, '1', null, 'workflownodeoperator', null);
INSERT INTO `resource` VALUES ('76', '删除节点操作者', '3', null, 'btn_delete()', '19', '3', 'fa fa-trash-o', null, 'fa fa-trash-o', null, '1', null, 'workflownodeoperator', null);
INSERT INTO `resource` VALUES ('77', '查看节点操作者', '3', null, 'btn_details()', '19', '3', 'fa fa-pencil-square-o', null, 'fa fa-search-plus', null, '1', null, 'workflownodeoperator', null);
INSERT INTO `resource` VALUES ('79', '新增动作', '3', null, 'btn_add()', '8', '3', 'fa fa-plus', null, 'btn btn-primary dropdown-text', null, '1', null, 'action', 'click:Add');
INSERT INTO `resource` VALUES ('80', '修改动作', '3', null, 'btn_edit()', '8', '3', 'fa fa-pencil-square-o', null, 'fa fa-pencil-square-o', null, '1', null, 'action', 'click:Edit,attr:{disabled:!DataTable.SelectedModel()}');
INSERT INTO `resource` VALUES ('81', '删除动作', '3', null, 'btn_delete()', '8', '3', 'fa fa-trash-o', null, 'fa fa-trash-o', null, '1', null, 'action', 'click:Delete,attr:{disabled:!DataTable.SelectedModel()}');
INSERT INTO `resource` VALUES ('82', '查看详情', '3', null, 'btn_details()', '8', '3', 'fa fa-pencil-square-o', null, 'fa fa-search-plus', null, '1', null, 'action', 'click:Detail,attr:{disabled:!DataTable.SelectedModel()}');
INSERT INTO `resource` VALUES ('84', '工作流流程设计', '3', null, 'btn_processdesign()', '14', '3', 'fa fa-pencil-square-o', null, 'fa fa-pencil-square-o', null, '1', null, 'workflow', null);
INSERT INTO `resource` VALUES ('89', 'Restest', '1', '/resource/menu', null, '0', '1', null, null, null, null, '111', 'desc', null, null);
INSERT INTO `resource` VALUES ('94', 'RestestAdd', '1', '/resource/menu/add', null, '0', '2', null, null, null, null, null, null, null, null);
INSERT INTO `resource` VALUES ('95', 'RestestAdd', '1', '/resource/menu/add', null, '0', '2', null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(50) NOT NULL,
  `rolecode` int(11) NOT NULL,
  `roleexpiretime` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=150 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('144', 'vvvv', '3', '2019-01-02');
INSERT INTO `role` VALUES ('149', 'test090122', '20190122', '2019-02-08');
INSERT INTO `role` VALUES ('121', '测试', '312', '2018-03-04 00:00:00');
INSERT INTO `role` VALUES ('140', '管理员1', '91', '2018-03-04 00:00:00');
INSERT INTO `role` VALUES ('135', '8888', '8888', '2019-01-24');
INSERT INTO `role` VALUES ('41', '理', '91', '2018-12-31');
INSERT INTO `role` VALUES ('101', '管理员', '91', '0000-00-00 00:00:00');
INSERT INTO `role` VALUES ('102', '黄金会员', '10', '2019-01-08');
INSERT INTO `role` VALUES ('103', '白金会员', '20', '0000-00-00 00:00:00');
INSERT INTO `role` VALUES ('105', '普通会员', '16', '0000-00-00 00:00:00');
INSERT INTO `role` VALUES ('112', '系统管理员', '8', '2019-01-23');
INSERT INTO `role` VALUES ('113', '教师', '16', '2019-01-31');
INSERT INTO `role` VALUES ('114', '学生', '32', '2019-01-15');
INSERT INTO `role` VALUES ('122', '新增', '32', '2018-04-06 00:00:00');

-- ----------------------------
-- Table structure for role_action
-- ----------------------------
DROP TABLE IF EXISTS `role_action`;
CREATE TABLE `role_action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleid` int(11) NOT NULL,
  `actionid` int(11) NOT NULL,
  `controlername` varchar(50) NOT NULL,
  `actionscode` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=543 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of role_action
-- ----------------------------
INSERT INTO `role_action` VALUES ('269', '1', '79', 'Role', '0');
INSERT INTO `role_action` VALUES ('268', '1', '78', 'Role', '0');
INSERT INTO `role_action` VALUES ('267', '1', '76', 'Role', '0');
INSERT INTO `role_action` VALUES ('266', '1', '75', 'Role', '0');
INSERT INTO `role_action` VALUES ('265', '1', '73', 'Role', '0');
INSERT INTO `role_action` VALUES ('264', '39', '79', 'Role', '0');
INSERT INTO `role_action` VALUES ('263', '39', '78', 'Role', '0');
INSERT INTO `role_action` VALUES ('262', '39', '76', 'Role', '0');
INSERT INTO `role_action` VALUES ('261', '39', '75', 'Role', '0');
INSERT INTO `role_action` VALUES ('260', '39', '73', 'Role', '0');
INSERT INTO `role_action` VALUES ('396', '112', '85', 'Role', '0');
INSERT INTO `role_action` VALUES ('395', '112', '84', 'Role', '0');
INSERT INTO `role_action` VALUES ('394', '112', '83', 'Role', '0');
INSERT INTO `role_action` VALUES ('393', '112', '81', 'Role', '0');
INSERT INTO `role_action` VALUES ('392', '112', '80', 'Role', '0');
INSERT INTO `role_action` VALUES ('279', '131', '85', 'Role', '0');
INSERT INTO `role_action` VALUES ('278', '131', '84', 'Role', '0');
INSERT INTO `role_action` VALUES ('277', '131', '83', 'Role', '0');
INSERT INTO `role_action` VALUES ('276', '131', '81', 'Role', '0');
INSERT INTO `role_action` VALUES ('275', '131', '80', 'Role', '0');
INSERT INTO `role_action` VALUES ('289', '122', '85', 'Role', '0');
INSERT INTO `role_action` VALUES ('288', '122', '84', 'Role', '0');
INSERT INTO `role_action` VALUES ('287', '122', '83', 'Role', '0');
INSERT INTO `role_action` VALUES ('286', '122', '81', 'Role', '0');
INSERT INTO `role_action` VALUES ('285', '122', '80', 'Role', '0');
INSERT INTO `role_action` VALUES ('325', '132', '208', 'Role', '0');
INSERT INTO `role_action` VALUES ('324', '132', '85', 'Role', '0');
INSERT INTO `role_action` VALUES ('323', '132', '84', 'Role', '0');
INSERT INTO `role_action` VALUES ('322', '132', '83', 'Role', '0');
INSERT INTO `role_action` VALUES ('321', '132', '81', 'Role', '0');
INSERT INTO `role_action` VALUES ('320', '132', '80', 'Role', '0');
INSERT INTO `role_action` VALUES ('319', '132', '206', 'Role', '0');
INSERT INTO `role_action` VALUES ('318', '132', '79', 'Role', '0');
INSERT INTO `role_action` VALUES ('317', '132', '78', 'Role', '0');
INSERT INTO `role_action` VALUES ('316', '132', '76', 'Role', '0');
INSERT INTO `role_action` VALUES ('315', '132', '75', 'Role', '0');
INSERT INTO `role_action` VALUES ('314', '132', '73', 'Role', '0');
INSERT INTO `role_action` VALUES ('326', '133', '73', 'Role', '0');
INSERT INTO `role_action` VALUES ('327', '133', '75', 'Role', '0');
INSERT INTO `role_action` VALUES ('328', '133', '76', 'Role', '0');
INSERT INTO `role_action` VALUES ('329', '133', '78', 'Role', '0');
INSERT INTO `role_action` VALUES ('330', '133', '79', 'Role', '0');
INSERT INTO `role_action` VALUES ('331', '133', '206', 'Role', '0');
INSERT INTO `role_action` VALUES ('343', '134', '208', 'Role', '0');
INSERT INTO `role_action` VALUES ('342', '134', '85', 'Role', '0');
INSERT INTO `role_action` VALUES ('341', '134', '84', 'Role', '0');
INSERT INTO `role_action` VALUES ('340', '134', '83', 'Role', '0');
INSERT INTO `role_action` VALUES ('339', '134', '81', 'Role', '0');
INSERT INTO `role_action` VALUES ('338', '134', '80', 'Role', '0');
INSERT INTO `role_action` VALUES ('419', '135', '208', 'Role', '0');
INSERT INTO `role_action` VALUES ('418', '135', '85', 'Role', '0');
INSERT INTO `role_action` VALUES ('417', '135', '84', 'Role', '0');
INSERT INTO `role_action` VALUES ('416', '135', '83', 'Role', '0');
INSERT INTO `role_action` VALUES ('415', '135', '81', 'Role', '0');
INSERT INTO `role_action` VALUES ('414', '135', '80', 'Role', '0');
INSERT INTO `role_action` VALUES ('356', '136', '73', 'Role', '0');
INSERT INTO `role_action` VALUES ('357', '136', '75', 'Role', '0');
INSERT INTO `role_action` VALUES ('358', '136', '76', 'Role', '0');
INSERT INTO `role_action` VALUES ('359', '136', '78', 'Role', '0');
INSERT INTO `role_action` VALUES ('360', '136', '79', 'Role', '0');
INSERT INTO `role_action` VALUES ('361', '136', '206', 'Role', '0');
INSERT INTO `role_action` VALUES ('385', '113', '206', 'Role', '0');
INSERT INTO `role_action` VALUES ('384', '113', '79', 'Role', '0');
INSERT INTO `role_action` VALUES ('383', '113', '78', 'Role', '0');
INSERT INTO `role_action` VALUES ('382', '113', '76', 'Role', '0');
INSERT INTO `role_action` VALUES ('381', '113', '75', 'Role', '0');
INSERT INTO `role_action` VALUES ('380', '113', '73', 'Role', '0');
INSERT INTO `role_action` VALUES ('368', '137', '80', 'Role', '0');
INSERT INTO `role_action` VALUES ('369', '137', '81', 'Role', '0');
INSERT INTO `role_action` VALUES ('370', '137', '83', 'Role', '0');
INSERT INTO `role_action` VALUES ('371', '137', '84', 'Role', '0');
INSERT INTO `role_action` VALUES ('372', '137', '85', 'Role', '0');
INSERT INTO `role_action` VALUES ('373', '137', '208', 'Role', '0');
INSERT INTO `role_action` VALUES ('386', '41', '73', 'Role', '0');
INSERT INTO `role_action` VALUES ('387', '41', '75', 'Role', '0');
INSERT INTO `role_action` VALUES ('388', '41', '76', 'Role', '0');
INSERT INTO `role_action` VALUES ('389', '41', '78', 'Role', '0');
INSERT INTO `role_action` VALUES ('390', '41', '79', 'Role', '0');
INSERT INTO `role_action` VALUES ('391', '41', '206', 'Role', '0');
INSERT INTO `role_action` VALUES ('397', '112', '106', 'Role', '0');
INSERT INTO `role_action` VALUES ('398', '112', '107', 'Role', '0');
INSERT INTO `role_action` VALUES ('399', '112', '108', 'Role', '0');
INSERT INTO `role_action` VALUES ('400', '112', '109', 'Role', '0');
INSERT INTO `role_action` VALUES ('401', '112', '110', 'Role', '0');
INSERT INTO `role_action` VALUES ('402', '102', '80', 'Role', '0');
INSERT INTO `role_action` VALUES ('403', '102', '81', 'Role', '0');
INSERT INTO `role_action` VALUES ('404', '102', '83', 'Role', '0');
INSERT INTO `role_action` VALUES ('405', '102', '84', 'Role', '0');
INSERT INTO `role_action` VALUES ('406', '101', '85', 'Role', '0');
INSERT INTO `role_action` VALUES ('407', '101', '208', 'Role', '0');
INSERT INTO `role_action` VALUES ('449', '140', '208', 'Role', '0');
INSERT INTO `role_action` VALUES ('448', '140', '85', 'Role', '0');
INSERT INTO `role_action` VALUES ('447', '140', '84', 'Role', '0');
INSERT INTO `role_action` VALUES ('446', '140', '83', 'Role', '0');
INSERT INTO `role_action` VALUES ('445', '140', '81', 'Role', '0');
INSERT INTO `role_action` VALUES ('444', '140', '80', 'Role', '0');
INSERT INTO `role_action` VALUES ('420', '143', '73', 'Role', '0');
INSERT INTO `role_action` VALUES ('421', '143', '75', 'Role', '0');
INSERT INTO `role_action` VALUES ('422', '143', '76', 'Role', '0');
INSERT INTO `role_action` VALUES ('423', '143', '78', 'Role', '0');
INSERT INTO `role_action` VALUES ('424', '143', '79', 'Role', '0');
INSERT INTO `role_action` VALUES ('425', '143', '206', 'Role', '0');
INSERT INTO `role_action` VALUES ('443', '140', '206', 'Role', '0');
INSERT INTO `role_action` VALUES ('442', '140', '79', 'Role', '0');
INSERT INTO `role_action` VALUES ('441', '140', '78', 'Role', '0');
INSERT INTO `role_action` VALUES ('440', '140', '76', 'Role', '0');
INSERT INTO `role_action` VALUES ('439', '140', '75', 'Role', '0');
INSERT INTO `role_action` VALUES ('438', '140', '73', 'Role', '0');
INSERT INTO `role_action` VALUES ('520', '144', '208', 'Role', '0');
INSERT INTO `role_action` VALUES ('519', '144', '85', 'Role', '0');
INSERT INTO `role_action` VALUES ('518', '144', '84', 'Role', '0');
INSERT INTO `role_action` VALUES ('517', '144', '83', 'Role', '0');
INSERT INTO `role_action` VALUES ('516', '144', '81', 'Role', '0');
INSERT INTO `role_action` VALUES ('515', '144', '80', 'Role', '0');
INSERT INTO `role_action` VALUES ('514', '144', '206', 'Role', '0');
INSERT INTO `role_action` VALUES ('513', '144', '79', 'Role', '0');
INSERT INTO `role_action` VALUES ('512', '144', '78', 'Role', '0');
INSERT INTO `role_action` VALUES ('511', '144', '76', 'Role', '0');
INSERT INTO `role_action` VALUES ('510', '144', '75', 'Role', '0');
INSERT INTO `role_action` VALUES ('509', '144', '73', 'Role', '0');
INSERT INTO `role_action` VALUES ('479', '147', '208', 'Role', '0');
INSERT INTO `role_action` VALUES ('478', '147', '85', 'Role', '0');
INSERT INTO `role_action` VALUES ('477', '147', '84', 'Role', '0');
INSERT INTO `role_action` VALUES ('476', '147', '83', 'Role', '0');
INSERT INTO `role_action` VALUES ('475', '147', '81', 'Role', '0');
INSERT INTO `role_action` VALUES ('474', '147', '80', 'Role', '0');
INSERT INTO `role_action` VALUES ('480', '148', '73', 'Role', '0');
INSERT INTO `role_action` VALUES ('481', '148', '75', 'Role', '0');
INSERT INTO `role_action` VALUES ('482', '148', '76', 'Role', '0');
INSERT INTO `role_action` VALUES ('483', '148', '78', 'Role', '0');
INSERT INTO `role_action` VALUES ('484', '148', '79', 'Role', '0');
INSERT INTO `role_action` VALUES ('485', '148', '206', 'Role', '0');
INSERT INTO `role_action` VALUES ('486', '148', '80', 'Role', '0');
INSERT INTO `role_action` VALUES ('487', '148', '81', 'Role', '0');
INSERT INTO `role_action` VALUES ('488', '148', '83', 'Role', '0');
INSERT INTO `role_action` VALUES ('489', '148', '84', 'Role', '0');
INSERT INTO `role_action` VALUES ('490', '148', '85', 'Role', '0');
INSERT INTO `role_action` VALUES ('491', '148', '208', 'Role', '0');
INSERT INTO `role_action` VALUES ('542', '149', '204', 'Role', '0');
INSERT INTO `role_action` VALUES ('541', '149', '102', 'Role', '0');
INSERT INTO `role_action` VALUES ('540', '149', '101', 'Role', '0');
INSERT INTO `role_action` VALUES ('539', '149', '93', 'Role', '0');
INSERT INTO `role_action` VALUES ('538', '149', '89', 'Role', '0');
INSERT INTO `role_action` VALUES ('537', '149', '81', 'Role', '0');
INSERT INTO `role_action` VALUES ('536', '149', '80', 'Role', '0');
INSERT INTO `role_action` VALUES ('535', '149', '206', 'Role', '0');
INSERT INTO `role_action` VALUES ('534', '149', '76', 'Role', '0');
INSERT INTO `role_action` VALUES ('533', '149', '75', 'Role', '0');
INSERT INTO `role_action` VALUES ('532', '149', '73', 'Role', '0');

-- ----------------------------
-- Table structure for role_resource
-- ----------------------------
DROP TABLE IF EXISTS `role_resource`;
CREATE TABLE `role_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleid` int(11) NOT NULL,
  `resourceid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=676 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of role_resource
-- ----------------------------
INSERT INTO `role_resource` VALUES ('366', '1', '40');
INSERT INTO `role_resource` VALUES ('365', '1', '39');
INSERT INTO `role_resource` VALUES ('364', '1', '38');
INSERT INTO `role_resource` VALUES ('363', '1', '37');
INSERT INTO `role_resource` VALUES ('362', '1', '5');
INSERT INTO `role_resource` VALUES ('361', '1', '1');
INSERT INTO `role_resource` VALUES ('360', '39', '45');
INSERT INTO `role_resource` VALUES ('359', '39', '44');
INSERT INTO `role_resource` VALUES ('358', '39', '43');
INSERT INTO `role_resource` VALUES ('357', '39', '42');
INSERT INTO `role_resource` VALUES ('356', '39', '7');
INSERT INTO `role_resource` VALUES ('355', '39', '1');
INSERT INTO `role_resource` VALUES ('527', '112', '41');
INSERT INTO `role_resource` VALUES ('526', '112', '40');
INSERT INTO `role_resource` VALUES ('525', '112', '39');
INSERT INTO `role_resource` VALUES ('524', '112', '38');
INSERT INTO `role_resource` VALUES ('523', '112', '37');
INSERT INTO `role_resource` VALUES ('522', '112', '5');
INSERT INTO `role_resource` VALUES ('521', '112', '1');
INSERT INTO `role_resource` VALUES ('367', '1', '41');
INSERT INTO `role_resource` VALUES ('381', '131', '41');
INSERT INTO `role_resource` VALUES ('380', '131', '40');
INSERT INTO `role_resource` VALUES ('379', '131', '39');
INSERT INTO `role_resource` VALUES ('378', '131', '38');
INSERT INTO `role_resource` VALUES ('377', '131', '37');
INSERT INTO `role_resource` VALUES ('376', '131', '5');
INSERT INTO `role_resource` VALUES ('375', '131', '1');
INSERT INTO `role_resource` VALUES ('382', '131', '7');
INSERT INTO `role_resource` VALUES ('383', '131', '42');
INSERT INTO `role_resource` VALUES ('384', '131', '43');
INSERT INTO `role_resource` VALUES ('385', '131', '44');
INSERT INTO `role_resource` VALUES ('386', '131', '45');
INSERT INTO `role_resource` VALUES ('436', '133', '40');
INSERT INTO `role_resource` VALUES ('399', '122', '45');
INSERT INTO `role_resource` VALUES ('398', '122', '44');
INSERT INTO `role_resource` VALUES ('397', '122', '43');
INSERT INTO `role_resource` VALUES ('396', '122', '42');
INSERT INTO `role_resource` VALUES ('395', '122', '7');
INSERT INTO `role_resource` VALUES ('394', '122', '1');
INSERT INTO `role_resource` VALUES ('435', '133', '39');
INSERT INTO `role_resource` VALUES ('434', '133', '38');
INSERT INTO `role_resource` VALUES ('433', '133', '37');
INSERT INTO `role_resource` VALUES ('432', '133', '5');
INSERT INTO `role_resource` VALUES ('431', '133', '1');
INSERT INTO `role_resource` VALUES ('430', '132', '45');
INSERT INTO `role_resource` VALUES ('429', '132', '44');
INSERT INTO `role_resource` VALUES ('428', '132', '43');
INSERT INTO `role_resource` VALUES ('427', '132', '42');
INSERT INTO `role_resource` VALUES ('426', '132', '7');
INSERT INTO `role_resource` VALUES ('425', '132', '1');
INSERT INTO `role_resource` VALUES ('437', '133', '41');
INSERT INTO `role_resource` VALUES ('553', '135', '45');
INSERT INTO `role_resource` VALUES ('552', '135', '44');
INSERT INTO `role_resource` VALUES ('551', '135', '43');
INSERT INTO `role_resource` VALUES ('550', '135', '42');
INSERT INTO `role_resource` VALUES ('549', '135', '7');
INSERT INTO `role_resource` VALUES ('548', '135', '41');
INSERT INTO `role_resource` VALUES ('455', '134', '45');
INSERT INTO `role_resource` VALUES ('454', '134', '44');
INSERT INTO `role_resource` VALUES ('453', '134', '43');
INSERT INTO `role_resource` VALUES ('452', '134', '42');
INSERT INTO `role_resource` VALUES ('451', '134', '7');
INSERT INTO `role_resource` VALUES ('450', '134', '1');
INSERT INTO `role_resource` VALUES ('547', '135', '40');
INSERT INTO `role_resource` VALUES ('546', '135', '39');
INSERT INTO `role_resource` VALUES ('545', '135', '38');
INSERT INTO `role_resource` VALUES ('544', '135', '37');
INSERT INTO `role_resource` VALUES ('543', '135', '5');
INSERT INTO `role_resource` VALUES ('542', '135', '1');
INSERT INTO `role_resource` VALUES ('475', '136', '1');
INSERT INTO `role_resource` VALUES ('476', '136', '5');
INSERT INTO `role_resource` VALUES ('477', '136', '37');
INSERT INTO `role_resource` VALUES ('478', '136', '38');
INSERT INTO `role_resource` VALUES ('479', '136', '39');
INSERT INTO `role_resource` VALUES ('480', '136', '40');
INSERT INTO `role_resource` VALUES ('481', '136', '41');
INSERT INTO `role_resource` VALUES ('513', '113', '41');
INSERT INTO `role_resource` VALUES ('512', '113', '40');
INSERT INTO `role_resource` VALUES ('511', '113', '39');
INSERT INTO `role_resource` VALUES ('510', '113', '38');
INSERT INTO `role_resource` VALUES ('509', '113', '37');
INSERT INTO `role_resource` VALUES ('508', '113', '5');
INSERT INTO `role_resource` VALUES ('507', '113', '1');
INSERT INTO `role_resource` VALUES ('489', '137', '1');
INSERT INTO `role_resource` VALUES ('490', '137', '7');
INSERT INTO `role_resource` VALUES ('491', '137', '42');
INSERT INTO `role_resource` VALUES ('492', '137', '43');
INSERT INTO `role_resource` VALUES ('493', '137', '44');
INSERT INTO `role_resource` VALUES ('494', '137', '45');
INSERT INTO `role_resource` VALUES ('514', '41', '1');
INSERT INTO `role_resource` VALUES ('515', '41', '5');
INSERT INTO `role_resource` VALUES ('516', '41', '37');
INSERT INTO `role_resource` VALUES ('517', '41', '38');
INSERT INTO `role_resource` VALUES ('518', '41', '39');
INSERT INTO `role_resource` VALUES ('519', '41', '40');
INSERT INTO `role_resource` VALUES ('520', '41', '41');
INSERT INTO `role_resource` VALUES ('528', '102', '35');
INSERT INTO `role_resource` VALUES ('529', '102', '5');
INSERT INTO `role_resource` VALUES ('530', '102', '37');
INSERT INTO `role_resource` VALUES ('531', '102', '38');
INSERT INTO `role_resource` VALUES ('532', '101', '39');
INSERT INTO `role_resource` VALUES ('533', '101', '40');
INSERT INTO `role_resource` VALUES ('534', '102', '41');
INSERT INTO `role_resource` VALUES ('573', '140', '45');
INSERT INTO `role_resource` VALUES ('572', '140', '44');
INSERT INTO `role_resource` VALUES ('571', '140', '43');
INSERT INTO `role_resource` VALUES ('570', '140', '42');
INSERT INTO `role_resource` VALUES ('569', '140', '7');
INSERT INTO `role_resource` VALUES ('568', '140', '1');
INSERT INTO `role_resource` VALUES ('554', '143', '1');
INSERT INTO `role_resource` VALUES ('555', '143', '5');
INSERT INTO `role_resource` VALUES ('556', '143', '37');
INSERT INTO `role_resource` VALUES ('557', '143', '38');
INSERT INTO `role_resource` VALUES ('558', '143', '39');
INSERT INTO `role_resource` VALUES ('559', '143', '40');
INSERT INTO `role_resource` VALUES ('560', '143', '41');
INSERT INTO `role_resource` VALUES ('675', '149', '94');
INSERT INTO `role_resource` VALUES ('674', '149', '50');
INSERT INTO `role_resource` VALUES ('673', '149', '10');
INSERT INTO `role_resource` VALUES ('672', '149', '79');
INSERT INTO `role_resource` VALUES ('671', '149', '8');
INSERT INTO `role_resource` VALUES ('670', '149', '37');
INSERT INTO `role_resource` VALUES ('669', '149', '5');
INSERT INTO `role_resource` VALUES ('668', '149', '1');
INSERT INTO `role_resource` VALUES ('636', '148', '45');
INSERT INTO `role_resource` VALUES ('635', '148', '44');
INSERT INTO `role_resource` VALUES ('634', '148', '43');
INSERT INTO `role_resource` VALUES ('633', '148', '42');
INSERT INTO `role_resource` VALUES ('632', '148', '7');
INSERT INTO `role_resource` VALUES ('631', '148', '1');
INSERT INTO `role_resource` VALUES ('630', '147', '45');
INSERT INTO `role_resource` VALUES ('629', '147', '44');
INSERT INTO `role_resource` VALUES ('628', '147', '43');
INSERT INTO `role_resource` VALUES ('627', '147', '42');
INSERT INTO `role_resource` VALUES ('626', '147', '7');
INSERT INTO `role_resource` VALUES ('625', '147', '1');
INSERT INTO `role_resource` VALUES ('659', '144', '41');
INSERT INTO `role_resource` VALUES ('658', '144', '40');
INSERT INTO `role_resource` VALUES ('657', '144', '39');
INSERT INTO `role_resource` VALUES ('656', '144', '38');
INSERT INTO `role_resource` VALUES ('655', '144', '37');
INSERT INTO `role_resource` VALUES ('654', '144', '5');
INSERT INTO `role_resource` VALUES ('653', '144', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `password` varchar(128) NOT NULL,
  `rolelist` varchar(50) DEFAULT NULL,
  `grouplist` varchar(50) DEFAULT NULL,
  `pubkey` varchar(512) DEFAULT NULL,
  `prikey` varchar(512) DEFAULT NULL,
  `photo` char(50) DEFAULT NULL,
  `verifyresult` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=239 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('222', 'zq88777', 'password', '1,25,28,121', '4,7', null, null, null, null);
INSERT INTO `user` VALUES ('170', 'xpp', 'password', '管理员1,3332,ww,', '管理部,人事部555,', null, null, null, null);
INSERT INTO `user` VALUES ('177', '3323', 'password', '1,25,26', '4,7', null, null, null, null);
INSERT INTO `user` VALUES ('223', 'xx', 'password', '管理员1,3332,33,测试,', '管理部,人事部555,', null, null, null, null);
INSERT INTO `user` VALUES ('217', 'testMe', 'password', '1,25,26', '4,7,8,9', null, null, null, null);
INSERT INTO `user` VALUES ('214', 'Submit', 'password', '1,25,26', '4,7,8,9', null, null, null, null);
INSERT INTO `user` VALUES ('213', '3232', 'password', '1,25,26,28,32,34,35,37,38,39,41,43,101,102,103,104', '4,7,8,9,12,13,14,81', null, null, null, null);
INSERT INTO `user` VALUES ('212', 'Submit', 'password', '1,25,26', '4,7,8,9', null, null, null, null);
INSERT INTO `user` VALUES ('197', 'test197', 'password', '管理员1,3332,ww,', '管理部,人事部555,技术部666,生产部,', null, null, null, null);
INSERT INTO `user` VALUES ('201', 'Submit', 'password', '1,25,26', '4,7,8,9', null, null, null, null);
INSERT INTO `user` VALUES ('202', 'Submit', 'password', '1,25,26', '4,7,8,9', null, null, null, null);
INSERT INTO `user` VALUES ('203', 'Submit', 'password', '1,25,26', '4,7,8,9', null, null, null, null);
INSERT INTO `user` VALUES ('206', 'Submit', 'password', '1,25,26', '4,7,8,9', null, null, null, null);
INSERT INTO `user` VALUES ('208', '342', 'password', '25,26', '9,12', null, null, null, null);
INSERT INTO `user` VALUES ('225', 'rtryryr', 'password', '管理员1,3332,33,测试,', '管理部,人事部555,', null, null, null, null);
INSERT INTO `user` VALUES ('234', 'user2', 'password', '121,135', '4,7', null, null, null, null);
INSERT INTO `user` VALUES ('235', 'admin', 'password', '测试,8888,管理员1,', '技术部666,人事部555,管理部,', null, null, null, null);

-- ----------------------------
-- Table structure for user_group
-- ----------------------------
DROP TABLE IF EXISTS `user_group`;
CREATE TABLE `user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1621 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of user_group
-- ----------------------------
INSERT INTO `user_group` VALUES ('8', '87', '12');
INSERT INTO `user_group` VALUES ('9', '87', '15');
INSERT INTO `user_group` VALUES ('10', '77', '13');
INSERT INTO `user_group` VALUES ('15', '3', '8');
INSERT INTO `user_group` VALUES ('16', '93', '3');
INSERT INTO `user_group` VALUES ('17', '93', '4');
INSERT INTO `user_group` VALUES ('21', '1', '7');
INSERT INTO `user_group` VALUES ('24', '77', '13');
INSERT INTO `user_group` VALUES ('27', '3', '9');
INSERT INTO `user_group` VALUES ('28', '95', '3');
INSERT INTO `user_group` VALUES ('29', '95', '4');
INSERT INTO `user_group` VALUES ('30', '96', '8');
INSERT INTO `user_group` VALUES ('31', '96', '9');
INSERT INTO `user_group` VALUES ('32', '99', '4');
INSERT INTO `user_group` VALUES ('33', '99', '7');
INSERT INTO `user_group` VALUES ('34', '99', '8');
INSERT INTO `user_group` VALUES ('35', '100', '3');
INSERT INTO `user_group` VALUES ('36', '101', '6');
INSERT INTO `user_group` VALUES ('1567', '229', '7');
INSERT INTO `user_group` VALUES ('1562', '226', '4');
INSERT INTO `user_group` VALUES ('1484', '217', '9');
INSERT INTO `user_group` VALUES ('1482', '217', '7');
INSERT INTO `user_group` VALUES ('1480', '0', '7');
INSERT INTO `user_group` VALUES ('1478', '217', '8');
INSERT INTO `user_group` VALUES ('1476', '217', '4');
INSERT INTO `user_group` VALUES ('1474', '217', '0');
INSERT INTO `user_group` VALUES ('1472', '0', '4');
INSERT INTO `user_group` VALUES ('1570', '231', '4');
INSERT INTO `user_group` VALUES ('1569', '229', '7');
INSERT INTO `user_group` VALUES ('1458', '212', '9');
INSERT INTO `user_group` VALUES ('1456', '212', '7');
INSERT INTO `user_group` VALUES ('1454', '209', '13');
INSERT INTO `user_group` VALUES ('1452', '208', '12');
INSERT INTO `user_group` VALUES ('1450', '193', '9');
INSERT INTO `user_group` VALUES ('1448', '193', '7');
INSERT INTO `user_group` VALUES ('1446', '193', '9');
INSERT INTO `user_group` VALUES ('1444', '193', '7');
INSERT INTO `user_group` VALUES ('1442', '193', '9');
INSERT INTO `user_group` VALUES ('1440', '193', '7');
INSERT INTO `user_group` VALUES ('1438', '193', '9');
INSERT INTO `user_group` VALUES ('1436', '193', '7');
INSERT INTO `user_group` VALUES ('1434', '193', '9');
INSERT INTO `user_group` VALUES ('1432', '193', '7');
INSERT INTO `user_group` VALUES ('1430', '193', '9');
INSERT INTO `user_group` VALUES ('1428', '193', '7');
INSERT INTO `user_group` VALUES ('1426', '193', '9');
INSERT INTO `user_group` VALUES ('1424', '193', '7');
INSERT INTO `user_group` VALUES ('1566', '229', '4');
INSERT INTO `user_group` VALUES ('1561', '226', '7');
INSERT INTO `user_group` VALUES ('1418', '195', '8');
INSERT INTO `user_group` VALUES ('1416', '195', '4');
INSERT INTO `user_group` VALUES ('1414', '195', '7');
INSERT INTO `user_group` VALUES ('1412', '193', '9');
INSERT INTO `user_group` VALUES ('1410', '193', '7');
INSERT INTO `user_group` VALUES ('1408', '193', '9');
INSERT INTO `user_group` VALUES ('1406', '193', '7');
INSERT INTO `user_group` VALUES ('1404', '180', '12');
INSERT INTO `user_group` VALUES ('1402', '180', '8');
INSERT INTO `user_group` VALUES ('1400', '180', '4');
INSERT INTO `user_group` VALUES ('124', '166', '113');
INSERT INTO `user_group` VALUES ('125', '166', '4');
INSERT INTO `user_group` VALUES ('126', '166', '7');
INSERT INTO `user_group` VALUES ('127', '166', '8');
INSERT INTO `user_group` VALUES ('128', '166', '9');
INSERT INTO `user_group` VALUES ('129', '166', '12');
INSERT INTO `user_group` VALUES ('130', '166', '13');
INSERT INTO `user_group` VALUES ('131', '166', '14');
INSERT INTO `user_group` VALUES ('132', '166', '17');
INSERT INTO `user_group` VALUES ('133', '166', '18');
INSERT INTO `user_group` VALUES ('134', '166', '19');
INSERT INTO `user_group` VALUES ('135', '166', '22');
INSERT INTO `user_group` VALUES ('136', '166', '23');
INSERT INTO `user_group` VALUES ('137', '166', '24');
INSERT INTO `user_group` VALUES ('138', '166', '27');
INSERT INTO `user_group` VALUES ('139', '166', '28');
INSERT INTO `user_group` VALUES ('140', '166', '29');
INSERT INTO `user_group` VALUES ('141', '166', '32');
INSERT INTO `user_group` VALUES ('142', '166', '33');
INSERT INTO `user_group` VALUES ('143', '166', '34');
INSERT INTO `user_group` VALUES ('144', '166', '35');
INSERT INTO `user_group` VALUES ('145', '166', '36');
INSERT INTO `user_group` VALUES ('146', '166', '37');
INSERT INTO `user_group` VALUES ('147', '166', '38');
INSERT INTO `user_group` VALUES ('148', '166', '39');
INSERT INTO `user_group` VALUES ('149', '166', '40');
INSERT INTO `user_group` VALUES ('150', '166', '41');
INSERT INTO `user_group` VALUES ('151', '166', '42');
INSERT INTO `user_group` VALUES ('152', '166', '43');
INSERT INTO `user_group` VALUES ('153', '166', '44');
INSERT INTO `user_group` VALUES ('154', '166', '45');
INSERT INTO `user_group` VALUES ('155', '166', '46');
INSERT INTO `user_group` VALUES ('156', '166', '47');
INSERT INTO `user_group` VALUES ('157', '166', '48');
INSERT INTO `user_group` VALUES ('158', '166', '49');
INSERT INTO `user_group` VALUES ('159', '166', '50');
INSERT INTO `user_group` VALUES ('160', '166', '51');
INSERT INTO `user_group` VALUES ('161', '166', '52');
INSERT INTO `user_group` VALUES ('162', '166', '53');
INSERT INTO `user_group` VALUES ('163', '166', '54');
INSERT INTO `user_group` VALUES ('164', '166', '55');
INSERT INTO `user_group` VALUES ('165', '166', '56');
INSERT INTO `user_group` VALUES ('166', '166', '57');
INSERT INTO `user_group` VALUES ('167', '166', '58');
INSERT INTO `user_group` VALUES ('168', '166', '59');
INSERT INTO `user_group` VALUES ('169', '166', '60');
INSERT INTO `user_group` VALUES ('170', '166', '61');
INSERT INTO `user_group` VALUES ('171', '166', '62');
INSERT INTO `user_group` VALUES ('172', '166', '63');
INSERT INTO `user_group` VALUES ('173', '166', '64');
INSERT INTO `user_group` VALUES ('174', '166', '65');
INSERT INTO `user_group` VALUES ('175', '166', '66');
INSERT INTO `user_group` VALUES ('176', '166', '67');
INSERT INTO `user_group` VALUES ('177', '166', '68');
INSERT INTO `user_group` VALUES ('178', '166', '69');
INSERT INTO `user_group` VALUES ('179', '166', '70');
INSERT INTO `user_group` VALUES ('180', '166', '71');
INSERT INTO `user_group` VALUES ('181', '166', '72');
INSERT INTO `user_group` VALUES ('182', '166', '73');
INSERT INTO `user_group` VALUES ('183', '166', '74');
INSERT INTO `user_group` VALUES ('184', '166', '75');
INSERT INTO `user_group` VALUES ('185', '166', '76');
INSERT INTO `user_group` VALUES ('186', '166', '77');
INSERT INTO `user_group` VALUES ('187', '166', '78');
INSERT INTO `user_group` VALUES ('188', '166', '79');
INSERT INTO `user_group` VALUES ('189', '166', '80');
INSERT INTO `user_group` VALUES ('190', '166', '81');
INSERT INTO `user_group` VALUES ('191', '166', '90');
INSERT INTO `user_group` VALUES ('192', '166', '91');
INSERT INTO `user_group` VALUES ('193', '166', '92');
INSERT INTO `user_group` VALUES ('194', '166', '93');
INSERT INTO `user_group` VALUES ('195', '166', '98');
INSERT INTO `user_group` VALUES ('196', '166', '99');
INSERT INTO `user_group` VALUES ('197', '166', '100');
INSERT INTO `user_group` VALUES ('198', '166', '101');
INSERT INTO `user_group` VALUES ('199', '166', '102');
INSERT INTO `user_group` VALUES ('200', '166', '103');
INSERT INTO `user_group` VALUES ('201', '166', '104');
INSERT INTO `user_group` VALUES ('202', '166', '105');
INSERT INTO `user_group` VALUES ('203', '166', '107');
INSERT INTO `user_group` VALUES ('204', '166', '108');
INSERT INTO `user_group` VALUES ('205', '166', '109');
INSERT INTO `user_group` VALUES ('206', '166', '110');
INSERT INTO `user_group` VALUES ('207', '166', '111');
INSERT INTO `user_group` VALUES ('208', '166', '112');
INSERT INTO `user_group` VALUES ('209', '167', '113');
INSERT INTO `user_group` VALUES ('210', '167', '4');
INSERT INTO `user_group` VALUES ('211', '167', '7');
INSERT INTO `user_group` VALUES ('212', '167', '8');
INSERT INTO `user_group` VALUES ('213', '167', '9');
INSERT INTO `user_group` VALUES ('214', '167', '12');
INSERT INTO `user_group` VALUES ('215', '167', '13');
INSERT INTO `user_group` VALUES ('216', '167', '14');
INSERT INTO `user_group` VALUES ('217', '167', '17');
INSERT INTO `user_group` VALUES ('218', '167', '18');
INSERT INTO `user_group` VALUES ('219', '167', '19');
INSERT INTO `user_group` VALUES ('220', '167', '22');
INSERT INTO `user_group` VALUES ('221', '167', '23');
INSERT INTO `user_group` VALUES ('222', '167', '24');
INSERT INTO `user_group` VALUES ('223', '167', '27');
INSERT INTO `user_group` VALUES ('224', '167', '28');
INSERT INTO `user_group` VALUES ('225', '167', '29');
INSERT INTO `user_group` VALUES ('226', '167', '32');
INSERT INTO `user_group` VALUES ('227', '167', '33');
INSERT INTO `user_group` VALUES ('228', '167', '34');
INSERT INTO `user_group` VALUES ('229', '167', '35');
INSERT INTO `user_group` VALUES ('230', '167', '36');
INSERT INTO `user_group` VALUES ('231', '167', '37');
INSERT INTO `user_group` VALUES ('232', '167', '38');
INSERT INTO `user_group` VALUES ('233', '167', '39');
INSERT INTO `user_group` VALUES ('234', '167', '40');
INSERT INTO `user_group` VALUES ('235', '167', '41');
INSERT INTO `user_group` VALUES ('236', '167', '42');
INSERT INTO `user_group` VALUES ('237', '167', '43');
INSERT INTO `user_group` VALUES ('238', '167', '44');
INSERT INTO `user_group` VALUES ('239', '167', '45');
INSERT INTO `user_group` VALUES ('240', '167', '46');
INSERT INTO `user_group` VALUES ('241', '167', '47');
INSERT INTO `user_group` VALUES ('242', '167', '48');
INSERT INTO `user_group` VALUES ('243', '167', '49');
INSERT INTO `user_group` VALUES ('244', '167', '50');
INSERT INTO `user_group` VALUES ('245', '167', '51');
INSERT INTO `user_group` VALUES ('246', '167', '52');
INSERT INTO `user_group` VALUES ('247', '167', '53');
INSERT INTO `user_group` VALUES ('248', '167', '54');
INSERT INTO `user_group` VALUES ('249', '167', '55');
INSERT INTO `user_group` VALUES ('250', '167', '56');
INSERT INTO `user_group` VALUES ('251', '167', '57');
INSERT INTO `user_group` VALUES ('252', '167', '58');
INSERT INTO `user_group` VALUES ('253', '167', '59');
INSERT INTO `user_group` VALUES ('254', '167', '60');
INSERT INTO `user_group` VALUES ('255', '167', '61');
INSERT INTO `user_group` VALUES ('256', '167', '62');
INSERT INTO `user_group` VALUES ('257', '167', '63');
INSERT INTO `user_group` VALUES ('258', '167', '64');
INSERT INTO `user_group` VALUES ('259', '167', '65');
INSERT INTO `user_group` VALUES ('260', '167', '66');
INSERT INTO `user_group` VALUES ('261', '167', '67');
INSERT INTO `user_group` VALUES ('262', '167', '68');
INSERT INTO `user_group` VALUES ('263', '167', '69');
INSERT INTO `user_group` VALUES ('264', '167', '70');
INSERT INTO `user_group` VALUES ('265', '167', '71');
INSERT INTO `user_group` VALUES ('266', '167', '72');
INSERT INTO `user_group` VALUES ('267', '167', '73');
INSERT INTO `user_group` VALUES ('268', '167', '74');
INSERT INTO `user_group` VALUES ('269', '167', '75');
INSERT INTO `user_group` VALUES ('270', '167', '76');
INSERT INTO `user_group` VALUES ('271', '167', '77');
INSERT INTO `user_group` VALUES ('272', '167', '78');
INSERT INTO `user_group` VALUES ('273', '167', '79');
INSERT INTO `user_group` VALUES ('274', '167', '80');
INSERT INTO `user_group` VALUES ('275', '167', '81');
INSERT INTO `user_group` VALUES ('276', '167', '90');
INSERT INTO `user_group` VALUES ('277', '167', '91');
INSERT INTO `user_group` VALUES ('278', '167', '92');
INSERT INTO `user_group` VALUES ('279', '167', '93');
INSERT INTO `user_group` VALUES ('280', '167', '98');
INSERT INTO `user_group` VALUES ('281', '167', '99');
INSERT INTO `user_group` VALUES ('282', '167', '100');
INSERT INTO `user_group` VALUES ('283', '167', '101');
INSERT INTO `user_group` VALUES ('284', '167', '102');
INSERT INTO `user_group` VALUES ('285', '167', '103');
INSERT INTO `user_group` VALUES ('286', '167', '104');
INSERT INTO `user_group` VALUES ('287', '167', '105');
INSERT INTO `user_group` VALUES ('288', '167', '107');
INSERT INTO `user_group` VALUES ('289', '167', '108');
INSERT INTO `user_group` VALUES ('290', '167', '109');
INSERT INTO `user_group` VALUES ('291', '167', '110');
INSERT INTO `user_group` VALUES ('292', '167', '111');
INSERT INTO `user_group` VALUES ('293', '167', '112');
INSERT INTO `user_group` VALUES ('294', '168', '113');
INSERT INTO `user_group` VALUES ('295', '168', '4');
INSERT INTO `user_group` VALUES ('296', '168', '7');
INSERT INTO `user_group` VALUES ('297', '168', '8');
INSERT INTO `user_group` VALUES ('298', '168', '9');
INSERT INTO `user_group` VALUES ('299', '168', '12');
INSERT INTO `user_group` VALUES ('300', '168', '13');
INSERT INTO `user_group` VALUES ('301', '168', '14');
INSERT INTO `user_group` VALUES ('302', '168', '17');
INSERT INTO `user_group` VALUES ('303', '168', '18');
INSERT INTO `user_group` VALUES ('304', '168', '19');
INSERT INTO `user_group` VALUES ('305', '168', '22');
INSERT INTO `user_group` VALUES ('306', '168', '23');
INSERT INTO `user_group` VALUES ('307', '168', '24');
INSERT INTO `user_group` VALUES ('308', '168', '27');
INSERT INTO `user_group` VALUES ('309', '168', '28');
INSERT INTO `user_group` VALUES ('310', '168', '29');
INSERT INTO `user_group` VALUES ('311', '168', '32');
INSERT INTO `user_group` VALUES ('312', '168', '33');
INSERT INTO `user_group` VALUES ('313', '168', '34');
INSERT INTO `user_group` VALUES ('314', '168', '35');
INSERT INTO `user_group` VALUES ('315', '168', '36');
INSERT INTO `user_group` VALUES ('316', '168', '37');
INSERT INTO `user_group` VALUES ('317', '168', '38');
INSERT INTO `user_group` VALUES ('318', '168', '39');
INSERT INTO `user_group` VALUES ('319', '168', '40');
INSERT INTO `user_group` VALUES ('320', '168', '41');
INSERT INTO `user_group` VALUES ('321', '168', '42');
INSERT INTO `user_group` VALUES ('322', '168', '43');
INSERT INTO `user_group` VALUES ('323', '168', '44');
INSERT INTO `user_group` VALUES ('324', '168', '45');
INSERT INTO `user_group` VALUES ('325', '168', '46');
INSERT INTO `user_group` VALUES ('326', '168', '47');
INSERT INTO `user_group` VALUES ('327', '168', '48');
INSERT INTO `user_group` VALUES ('328', '168', '49');
INSERT INTO `user_group` VALUES ('329', '168', '50');
INSERT INTO `user_group` VALUES ('330', '168', '51');
INSERT INTO `user_group` VALUES ('331', '168', '52');
INSERT INTO `user_group` VALUES ('332', '168', '53');
INSERT INTO `user_group` VALUES ('333', '168', '54');
INSERT INTO `user_group` VALUES ('334', '168', '55');
INSERT INTO `user_group` VALUES ('335', '168', '56');
INSERT INTO `user_group` VALUES ('336', '168', '57');
INSERT INTO `user_group` VALUES ('337', '168', '58');
INSERT INTO `user_group` VALUES ('338', '168', '59');
INSERT INTO `user_group` VALUES ('339', '168', '60');
INSERT INTO `user_group` VALUES ('340', '168', '61');
INSERT INTO `user_group` VALUES ('341', '168', '62');
INSERT INTO `user_group` VALUES ('342', '168', '63');
INSERT INTO `user_group` VALUES ('343', '168', '64');
INSERT INTO `user_group` VALUES ('344', '168', '65');
INSERT INTO `user_group` VALUES ('345', '168', '66');
INSERT INTO `user_group` VALUES ('346', '168', '67');
INSERT INTO `user_group` VALUES ('347', '168', '68');
INSERT INTO `user_group` VALUES ('348', '168', '69');
INSERT INTO `user_group` VALUES ('349', '168', '70');
INSERT INTO `user_group` VALUES ('350', '168', '71');
INSERT INTO `user_group` VALUES ('351', '168', '72');
INSERT INTO `user_group` VALUES ('352', '168', '73');
INSERT INTO `user_group` VALUES ('353', '168', '74');
INSERT INTO `user_group` VALUES ('354', '168', '75');
INSERT INTO `user_group` VALUES ('355', '168', '76');
INSERT INTO `user_group` VALUES ('356', '168', '77');
INSERT INTO `user_group` VALUES ('357', '168', '78');
INSERT INTO `user_group` VALUES ('358', '168', '79');
INSERT INTO `user_group` VALUES ('359', '168', '80');
INSERT INTO `user_group` VALUES ('360', '168', '81');
INSERT INTO `user_group` VALUES ('361', '168', '90');
INSERT INTO `user_group` VALUES ('362', '168', '91');
INSERT INTO `user_group` VALUES ('363', '168', '92');
INSERT INTO `user_group` VALUES ('364', '168', '93');
INSERT INTO `user_group` VALUES ('365', '168', '98');
INSERT INTO `user_group` VALUES ('366', '168', '99');
INSERT INTO `user_group` VALUES ('367', '168', '100');
INSERT INTO `user_group` VALUES ('368', '168', '101');
INSERT INTO `user_group` VALUES ('369', '168', '102');
INSERT INTO `user_group` VALUES ('370', '168', '103');
INSERT INTO `user_group` VALUES ('371', '168', '104');
INSERT INTO `user_group` VALUES ('372', '168', '105');
INSERT INTO `user_group` VALUES ('373', '168', '107');
INSERT INTO `user_group` VALUES ('374', '168', '108');
INSERT INTO `user_group` VALUES ('375', '168', '109');
INSERT INTO `user_group` VALUES ('376', '168', '110');
INSERT INTO `user_group` VALUES ('377', '168', '111');
INSERT INTO `user_group` VALUES ('378', '168', '112');
INSERT INTO `user_group` VALUES ('379', '169', '113');
INSERT INTO `user_group` VALUES ('380', '169', '4');
INSERT INTO `user_group` VALUES ('381', '169', '7');
INSERT INTO `user_group` VALUES ('382', '169', '8');
INSERT INTO `user_group` VALUES ('383', '169', '9');
INSERT INTO `user_group` VALUES ('384', '169', '12');
INSERT INTO `user_group` VALUES ('385', '169', '13');
INSERT INTO `user_group` VALUES ('386', '169', '14');
INSERT INTO `user_group` VALUES ('387', '169', '17');
INSERT INTO `user_group` VALUES ('388', '169', '18');
INSERT INTO `user_group` VALUES ('389', '169', '19');
INSERT INTO `user_group` VALUES ('390', '169', '22');
INSERT INTO `user_group` VALUES ('391', '169', '23');
INSERT INTO `user_group` VALUES ('392', '169', '24');
INSERT INTO `user_group` VALUES ('393', '169', '27');
INSERT INTO `user_group` VALUES ('394', '169', '28');
INSERT INTO `user_group` VALUES ('395', '169', '29');
INSERT INTO `user_group` VALUES ('396', '169', '32');
INSERT INTO `user_group` VALUES ('397', '169', '33');
INSERT INTO `user_group` VALUES ('398', '169', '34');
INSERT INTO `user_group` VALUES ('399', '169', '35');
INSERT INTO `user_group` VALUES ('400', '169', '36');
INSERT INTO `user_group` VALUES ('401', '169', '37');
INSERT INTO `user_group` VALUES ('402', '169', '38');
INSERT INTO `user_group` VALUES ('403', '169', '39');
INSERT INTO `user_group` VALUES ('404', '169', '40');
INSERT INTO `user_group` VALUES ('405', '169', '41');
INSERT INTO `user_group` VALUES ('406', '169', '42');
INSERT INTO `user_group` VALUES ('407', '169', '43');
INSERT INTO `user_group` VALUES ('408', '169', '44');
INSERT INTO `user_group` VALUES ('409', '169', '45');
INSERT INTO `user_group` VALUES ('410', '169', '46');
INSERT INTO `user_group` VALUES ('411', '169', '47');
INSERT INTO `user_group` VALUES ('412', '169', '48');
INSERT INTO `user_group` VALUES ('413', '169', '49');
INSERT INTO `user_group` VALUES ('414', '169', '50');
INSERT INTO `user_group` VALUES ('415', '169', '51');
INSERT INTO `user_group` VALUES ('416', '169', '52');
INSERT INTO `user_group` VALUES ('417', '169', '53');
INSERT INTO `user_group` VALUES ('418', '169', '54');
INSERT INTO `user_group` VALUES ('419', '169', '55');
INSERT INTO `user_group` VALUES ('420', '169', '56');
INSERT INTO `user_group` VALUES ('421', '169', '57');
INSERT INTO `user_group` VALUES ('422', '169', '58');
INSERT INTO `user_group` VALUES ('423', '169', '59');
INSERT INTO `user_group` VALUES ('424', '169', '60');
INSERT INTO `user_group` VALUES ('425', '169', '61');
INSERT INTO `user_group` VALUES ('426', '169', '62');
INSERT INTO `user_group` VALUES ('427', '169', '63');
INSERT INTO `user_group` VALUES ('428', '169', '64');
INSERT INTO `user_group` VALUES ('429', '169', '65');
INSERT INTO `user_group` VALUES ('430', '169', '66');
INSERT INTO `user_group` VALUES ('431', '169', '67');
INSERT INTO `user_group` VALUES ('432', '169', '68');
INSERT INTO `user_group` VALUES ('433', '169', '69');
INSERT INTO `user_group` VALUES ('434', '169', '70');
INSERT INTO `user_group` VALUES ('435', '169', '71');
INSERT INTO `user_group` VALUES ('436', '169', '72');
INSERT INTO `user_group` VALUES ('437', '169', '73');
INSERT INTO `user_group` VALUES ('438', '169', '74');
INSERT INTO `user_group` VALUES ('439', '169', '75');
INSERT INTO `user_group` VALUES ('440', '169', '76');
INSERT INTO `user_group` VALUES ('441', '169', '77');
INSERT INTO `user_group` VALUES ('442', '169', '78');
INSERT INTO `user_group` VALUES ('443', '169', '79');
INSERT INTO `user_group` VALUES ('444', '169', '80');
INSERT INTO `user_group` VALUES ('445', '169', '81');
INSERT INTO `user_group` VALUES ('446', '169', '90');
INSERT INTO `user_group` VALUES ('447', '169', '91');
INSERT INTO `user_group` VALUES ('448', '169', '92');
INSERT INTO `user_group` VALUES ('449', '169', '93');
INSERT INTO `user_group` VALUES ('450', '169', '98');
INSERT INTO `user_group` VALUES ('451', '169', '99');
INSERT INTO `user_group` VALUES ('452', '169', '100');
INSERT INTO `user_group` VALUES ('453', '169', '101');
INSERT INTO `user_group` VALUES ('454', '169', '102');
INSERT INTO `user_group` VALUES ('455', '169', '103');
INSERT INTO `user_group` VALUES ('456', '169', '104');
INSERT INTO `user_group` VALUES ('457', '169', '105');
INSERT INTO `user_group` VALUES ('458', '169', '107');
INSERT INTO `user_group` VALUES ('459', '169', '108');
INSERT INTO `user_group` VALUES ('460', '169', '109');
INSERT INTO `user_group` VALUES ('461', '169', '110');
INSERT INTO `user_group` VALUES ('462', '169', '111');
INSERT INTO `user_group` VALUES ('463', '169', '112');
INSERT INTO `user_group` VALUES ('464', '170', '113');
INSERT INTO `user_group` VALUES ('472', '170', '17');
INSERT INTO `user_group` VALUES ('473', '170', '18');
INSERT INTO `user_group` VALUES ('474', '170', '19');
INSERT INTO `user_group` VALUES ('475', '170', '22');
INSERT INTO `user_group` VALUES ('476', '170', '23');
INSERT INTO `user_group` VALUES ('477', '170', '24');
INSERT INTO `user_group` VALUES ('478', '170', '27');
INSERT INTO `user_group` VALUES ('479', '170', '28');
INSERT INTO `user_group` VALUES ('480', '170', '29');
INSERT INTO `user_group` VALUES ('481', '170', '32');
INSERT INTO `user_group` VALUES ('482', '170', '33');
INSERT INTO `user_group` VALUES ('483', '170', '34');
INSERT INTO `user_group` VALUES ('484', '170', '35');
INSERT INTO `user_group` VALUES ('485', '170', '36');
INSERT INTO `user_group` VALUES ('486', '170', '37');
INSERT INTO `user_group` VALUES ('487', '170', '38');
INSERT INTO `user_group` VALUES ('488', '170', '39');
INSERT INTO `user_group` VALUES ('489', '170', '40');
INSERT INTO `user_group` VALUES ('490', '170', '41');
INSERT INTO `user_group` VALUES ('491', '170', '42');
INSERT INTO `user_group` VALUES ('492', '170', '43');
INSERT INTO `user_group` VALUES ('493', '170', '44');
INSERT INTO `user_group` VALUES ('494', '170', '45');
INSERT INTO `user_group` VALUES ('495', '170', '46');
INSERT INTO `user_group` VALUES ('496', '170', '47');
INSERT INTO `user_group` VALUES ('497', '170', '48');
INSERT INTO `user_group` VALUES ('498', '170', '49');
INSERT INTO `user_group` VALUES ('499', '170', '50');
INSERT INTO `user_group` VALUES ('500', '170', '51');
INSERT INTO `user_group` VALUES ('501', '170', '52');
INSERT INTO `user_group` VALUES ('502', '170', '53');
INSERT INTO `user_group` VALUES ('503', '170', '54');
INSERT INTO `user_group` VALUES ('504', '170', '55');
INSERT INTO `user_group` VALUES ('505', '170', '56');
INSERT INTO `user_group` VALUES ('506', '170', '57');
INSERT INTO `user_group` VALUES ('507', '170', '58');
INSERT INTO `user_group` VALUES ('508', '170', '59');
INSERT INTO `user_group` VALUES ('509', '170', '60');
INSERT INTO `user_group` VALUES ('510', '170', '61');
INSERT INTO `user_group` VALUES ('511', '170', '62');
INSERT INTO `user_group` VALUES ('512', '170', '63');
INSERT INTO `user_group` VALUES ('513', '170', '64');
INSERT INTO `user_group` VALUES ('514', '170', '65');
INSERT INTO `user_group` VALUES ('515', '170', '66');
INSERT INTO `user_group` VALUES ('516', '170', '67');
INSERT INTO `user_group` VALUES ('517', '170', '68');
INSERT INTO `user_group` VALUES ('518', '170', '69');
INSERT INTO `user_group` VALUES ('519', '170', '70');
INSERT INTO `user_group` VALUES ('520', '170', '71');
INSERT INTO `user_group` VALUES ('521', '170', '72');
INSERT INTO `user_group` VALUES ('522', '170', '73');
INSERT INTO `user_group` VALUES ('523', '170', '74');
INSERT INTO `user_group` VALUES ('524', '170', '75');
INSERT INTO `user_group` VALUES ('525', '170', '76');
INSERT INTO `user_group` VALUES ('526', '170', '77');
INSERT INTO `user_group` VALUES ('527', '170', '78');
INSERT INTO `user_group` VALUES ('528', '170', '79');
INSERT INTO `user_group` VALUES ('529', '170', '80');
INSERT INTO `user_group` VALUES ('531', '170', '90');
INSERT INTO `user_group` VALUES ('532', '170', '91');
INSERT INTO `user_group` VALUES ('533', '170', '92');
INSERT INTO `user_group` VALUES ('534', '170', '93');
INSERT INTO `user_group` VALUES ('535', '170', '98');
INSERT INTO `user_group` VALUES ('536', '170', '99');
INSERT INTO `user_group` VALUES ('537', '170', '100');
INSERT INTO `user_group` VALUES ('538', '170', '101');
INSERT INTO `user_group` VALUES ('539', '170', '102');
INSERT INTO `user_group` VALUES ('540', '170', '103');
INSERT INTO `user_group` VALUES ('541', '170', '104');
INSERT INTO `user_group` VALUES ('542', '170', '105');
INSERT INTO `user_group` VALUES ('543', '170', '107');
INSERT INTO `user_group` VALUES ('544', '170', '108');
INSERT INTO `user_group` VALUES ('545', '170', '109');
INSERT INTO `user_group` VALUES ('546', '170', '110');
INSERT INTO `user_group` VALUES ('547', '170', '111');
INSERT INTO `user_group` VALUES ('548', '170', '112');
INSERT INTO `user_group` VALUES ('549', '171', '113');
INSERT INTO `user_group` VALUES ('550', '171', '4');
INSERT INTO `user_group` VALUES ('551', '171', '7');
INSERT INTO `user_group` VALUES ('552', '171', '8');
INSERT INTO `user_group` VALUES ('553', '171', '9');
INSERT INTO `user_group` VALUES ('554', '171', '12');
INSERT INTO `user_group` VALUES ('555', '171', '13');
INSERT INTO `user_group` VALUES ('556', '171', '14');
INSERT INTO `user_group` VALUES ('557', '171', '17');
INSERT INTO `user_group` VALUES ('558', '171', '18');
INSERT INTO `user_group` VALUES ('559', '171', '19');
INSERT INTO `user_group` VALUES ('560', '171', '22');
INSERT INTO `user_group` VALUES ('561', '171', '23');
INSERT INTO `user_group` VALUES ('562', '171', '24');
INSERT INTO `user_group` VALUES ('563', '171', '27');
INSERT INTO `user_group` VALUES ('564', '171', '28');
INSERT INTO `user_group` VALUES ('565', '171', '29');
INSERT INTO `user_group` VALUES ('566', '171', '32');
INSERT INTO `user_group` VALUES ('567', '171', '33');
INSERT INTO `user_group` VALUES ('568', '171', '34');
INSERT INTO `user_group` VALUES ('569', '171', '35');
INSERT INTO `user_group` VALUES ('570', '171', '36');
INSERT INTO `user_group` VALUES ('571', '171', '37');
INSERT INTO `user_group` VALUES ('572', '171', '38');
INSERT INTO `user_group` VALUES ('573', '171', '39');
INSERT INTO `user_group` VALUES ('574', '171', '40');
INSERT INTO `user_group` VALUES ('575', '171', '41');
INSERT INTO `user_group` VALUES ('576', '171', '42');
INSERT INTO `user_group` VALUES ('577', '171', '43');
INSERT INTO `user_group` VALUES ('578', '171', '44');
INSERT INTO `user_group` VALUES ('579', '171', '45');
INSERT INTO `user_group` VALUES ('580', '171', '46');
INSERT INTO `user_group` VALUES ('581', '171', '47');
INSERT INTO `user_group` VALUES ('582', '171', '48');
INSERT INTO `user_group` VALUES ('583', '171', '49');
INSERT INTO `user_group` VALUES ('584', '171', '50');
INSERT INTO `user_group` VALUES ('585', '171', '51');
INSERT INTO `user_group` VALUES ('586', '171', '52');
INSERT INTO `user_group` VALUES ('587', '171', '53');
INSERT INTO `user_group` VALUES ('588', '171', '54');
INSERT INTO `user_group` VALUES ('589', '171', '55');
INSERT INTO `user_group` VALUES ('590', '171', '56');
INSERT INTO `user_group` VALUES ('591', '171', '57');
INSERT INTO `user_group` VALUES ('592', '171', '58');
INSERT INTO `user_group` VALUES ('593', '171', '59');
INSERT INTO `user_group` VALUES ('594', '171', '60');
INSERT INTO `user_group` VALUES ('595', '171', '61');
INSERT INTO `user_group` VALUES ('596', '171', '62');
INSERT INTO `user_group` VALUES ('597', '171', '63');
INSERT INTO `user_group` VALUES ('598', '171', '64');
INSERT INTO `user_group` VALUES ('599', '171', '65');
INSERT INTO `user_group` VALUES ('600', '171', '66');
INSERT INTO `user_group` VALUES ('601', '171', '67');
INSERT INTO `user_group` VALUES ('602', '171', '68');
INSERT INTO `user_group` VALUES ('603', '171', '69');
INSERT INTO `user_group` VALUES ('604', '171', '70');
INSERT INTO `user_group` VALUES ('605', '171', '71');
INSERT INTO `user_group` VALUES ('606', '171', '72');
INSERT INTO `user_group` VALUES ('607', '171', '73');
INSERT INTO `user_group` VALUES ('608', '171', '74');
INSERT INTO `user_group` VALUES ('609', '171', '75');
INSERT INTO `user_group` VALUES ('610', '171', '76');
INSERT INTO `user_group` VALUES ('611', '171', '77');
INSERT INTO `user_group` VALUES ('612', '171', '78');
INSERT INTO `user_group` VALUES ('613', '171', '79');
INSERT INTO `user_group` VALUES ('614', '171', '80');
INSERT INTO `user_group` VALUES ('615', '171', '81');
INSERT INTO `user_group` VALUES ('616', '171', '90');
INSERT INTO `user_group` VALUES ('617', '171', '91');
INSERT INTO `user_group` VALUES ('618', '171', '92');
INSERT INTO `user_group` VALUES ('619', '171', '93');
INSERT INTO `user_group` VALUES ('620', '171', '98');
INSERT INTO `user_group` VALUES ('621', '171', '99');
INSERT INTO `user_group` VALUES ('622', '171', '100');
INSERT INTO `user_group` VALUES ('623', '171', '101');
INSERT INTO `user_group` VALUES ('624', '171', '102');
INSERT INTO `user_group` VALUES ('625', '171', '103');
INSERT INTO `user_group` VALUES ('626', '171', '104');
INSERT INTO `user_group` VALUES ('627', '171', '105');
INSERT INTO `user_group` VALUES ('628', '171', '107');
INSERT INTO `user_group` VALUES ('629', '171', '108');
INSERT INTO `user_group` VALUES ('630', '171', '109');
INSERT INTO `user_group` VALUES ('631', '171', '110');
INSERT INTO `user_group` VALUES ('632', '171', '111');
INSERT INTO `user_group` VALUES ('633', '171', '112');
INSERT INTO `user_group` VALUES ('634', '172', '113');
INSERT INTO `user_group` VALUES ('635', '172', '4');
INSERT INTO `user_group` VALUES ('636', '172', '7');
INSERT INTO `user_group` VALUES ('637', '172', '8');
INSERT INTO `user_group` VALUES ('638', '172', '9');
INSERT INTO `user_group` VALUES ('639', '172', '12');
INSERT INTO `user_group` VALUES ('640', '172', '13');
INSERT INTO `user_group` VALUES ('641', '172', '14');
INSERT INTO `user_group` VALUES ('642', '172', '17');
INSERT INTO `user_group` VALUES ('643', '172', '18');
INSERT INTO `user_group` VALUES ('644', '172', '19');
INSERT INTO `user_group` VALUES ('645', '172', '22');
INSERT INTO `user_group` VALUES ('646', '172', '23');
INSERT INTO `user_group` VALUES ('647', '172', '24');
INSERT INTO `user_group` VALUES ('648', '172', '27');
INSERT INTO `user_group` VALUES ('649', '172', '28');
INSERT INTO `user_group` VALUES ('650', '172', '29');
INSERT INTO `user_group` VALUES ('651', '172', '32');
INSERT INTO `user_group` VALUES ('652', '172', '33');
INSERT INTO `user_group` VALUES ('653', '172', '34');
INSERT INTO `user_group` VALUES ('654', '172', '35');
INSERT INTO `user_group` VALUES ('655', '172', '36');
INSERT INTO `user_group` VALUES ('656', '172', '37');
INSERT INTO `user_group` VALUES ('657', '172', '38');
INSERT INTO `user_group` VALUES ('658', '172', '39');
INSERT INTO `user_group` VALUES ('659', '172', '40');
INSERT INTO `user_group` VALUES ('660', '172', '41');
INSERT INTO `user_group` VALUES ('661', '172', '42');
INSERT INTO `user_group` VALUES ('662', '172', '43');
INSERT INTO `user_group` VALUES ('663', '172', '44');
INSERT INTO `user_group` VALUES ('664', '172', '45');
INSERT INTO `user_group` VALUES ('665', '172', '46');
INSERT INTO `user_group` VALUES ('666', '172', '47');
INSERT INTO `user_group` VALUES ('667', '172', '48');
INSERT INTO `user_group` VALUES ('668', '172', '49');
INSERT INTO `user_group` VALUES ('669', '172', '50');
INSERT INTO `user_group` VALUES ('670', '172', '51');
INSERT INTO `user_group` VALUES ('671', '172', '52');
INSERT INTO `user_group` VALUES ('672', '172', '53');
INSERT INTO `user_group` VALUES ('673', '172', '54');
INSERT INTO `user_group` VALUES ('674', '172', '55');
INSERT INTO `user_group` VALUES ('675', '172', '56');
INSERT INTO `user_group` VALUES ('676', '172', '57');
INSERT INTO `user_group` VALUES ('677', '172', '58');
INSERT INTO `user_group` VALUES ('678', '172', '59');
INSERT INTO `user_group` VALUES ('679', '172', '60');
INSERT INTO `user_group` VALUES ('680', '172', '61');
INSERT INTO `user_group` VALUES ('681', '172', '62');
INSERT INTO `user_group` VALUES ('682', '172', '63');
INSERT INTO `user_group` VALUES ('683', '172', '64');
INSERT INTO `user_group` VALUES ('684', '172', '65');
INSERT INTO `user_group` VALUES ('685', '172', '66');
INSERT INTO `user_group` VALUES ('686', '172', '67');
INSERT INTO `user_group` VALUES ('687', '172', '68');
INSERT INTO `user_group` VALUES ('688', '172', '69');
INSERT INTO `user_group` VALUES ('689', '172', '70');
INSERT INTO `user_group` VALUES ('690', '172', '71');
INSERT INTO `user_group` VALUES ('691', '172', '72');
INSERT INTO `user_group` VALUES ('692', '172', '73');
INSERT INTO `user_group` VALUES ('693', '172', '74');
INSERT INTO `user_group` VALUES ('694', '172', '75');
INSERT INTO `user_group` VALUES ('695', '172', '76');
INSERT INTO `user_group` VALUES ('696', '172', '77');
INSERT INTO `user_group` VALUES ('697', '172', '78');
INSERT INTO `user_group` VALUES ('698', '172', '79');
INSERT INTO `user_group` VALUES ('699', '172', '80');
INSERT INTO `user_group` VALUES ('700', '172', '81');
INSERT INTO `user_group` VALUES ('701', '172', '90');
INSERT INTO `user_group` VALUES ('702', '172', '91');
INSERT INTO `user_group` VALUES ('703', '172', '92');
INSERT INTO `user_group` VALUES ('704', '172', '93');
INSERT INTO `user_group` VALUES ('705', '172', '98');
INSERT INTO `user_group` VALUES ('706', '172', '99');
INSERT INTO `user_group` VALUES ('707', '172', '100');
INSERT INTO `user_group` VALUES ('708', '172', '101');
INSERT INTO `user_group` VALUES ('709', '172', '102');
INSERT INTO `user_group` VALUES ('710', '172', '103');
INSERT INTO `user_group` VALUES ('711', '172', '104');
INSERT INTO `user_group` VALUES ('712', '172', '105');
INSERT INTO `user_group` VALUES ('713', '172', '107');
INSERT INTO `user_group` VALUES ('714', '172', '108');
INSERT INTO `user_group` VALUES ('715', '172', '109');
INSERT INTO `user_group` VALUES ('716', '172', '110');
INSERT INTO `user_group` VALUES ('717', '172', '111');
INSERT INTO `user_group` VALUES ('718', '172', '112');
INSERT INTO `user_group` VALUES ('1560', '226', '4');
INSERT INTO `user_group` VALUES ('1563', '226', '7');
INSERT INTO `user_group` VALUES ('1483', '217', '8');
INSERT INTO `user_group` VALUES ('1481', '217', '4');
INSERT INTO `user_group` VALUES ('1479', '217', '9');
INSERT INTO `user_group` VALUES ('1477', '217', '7');
INSERT INTO `user_group` VALUES ('1475', '217', '0');
INSERT INTO `user_group` VALUES ('1471', '0', '0');
INSERT INTO `user_group` VALUES ('1461', '214', '8');
INSERT INTO `user_group` VALUES ('1459', '214', '4');
INSERT INTO `user_group` VALUES ('1457', '212', '8');
INSERT INTO `user_group` VALUES ('1455', '212', '4');
INSERT INTO `user_group` VALUES ('1453', '209', '12');
INSERT INTO `user_group` VALUES ('1451', '208', '9');
INSERT INTO `user_group` VALUES ('1449', '193', '8');
INSERT INTO `user_group` VALUES ('1447', '193', '4');
INSERT INTO `user_group` VALUES ('1445', '193', '8');
INSERT INTO `user_group` VALUES ('1443', '193', '4');
INSERT INTO `user_group` VALUES ('1441', '193', '8');
INSERT INTO `user_group` VALUES ('1439', '193', '4');
INSERT INTO `user_group` VALUES ('1437', '193', '8');
INSERT INTO `user_group` VALUES ('1435', '193', '4');
INSERT INTO `user_group` VALUES ('1433', '193', '8');
INSERT INTO `user_group` VALUES ('1431', '193', '4');
INSERT INTO `user_group` VALUES ('1429', '193', '8');
INSERT INTO `user_group` VALUES ('1427', '193', '4');
INSERT INTO `user_group` VALUES ('1425', '193', '8');
INSERT INTO `user_group` VALUES ('1423', '193', '4');
INSERT INTO `user_group` VALUES ('1565', '228', '7');
INSERT INTO `user_group` VALUES ('1564', '228', '4');
INSERT INTO `user_group` VALUES ('1417', '195', '7');
INSERT INTO `user_group` VALUES ('1415', '195', '8');
INSERT INTO `user_group` VALUES ('1413', '195', '4');
INSERT INTO `user_group` VALUES ('1411', '193', '8');
INSERT INTO `user_group` VALUES ('1409', '193', '4');
INSERT INTO `user_group` VALUES ('1407', '193', '8');
INSERT INTO `user_group` VALUES ('1405', '193', '4');
INSERT INTO `user_group` VALUES ('1403', '180', '9');
INSERT INTO `user_group` VALUES ('1401', '180', '7');
INSERT INTO `user_group` VALUES ('1399', '180', '113');
INSERT INTO `user_group` VALUES ('804', '166', '113');
INSERT INTO `user_group` VALUES ('805', '166', '4');
INSERT INTO `user_group` VALUES ('806', '166', '7');
INSERT INTO `user_group` VALUES ('807', '166', '8');
INSERT INTO `user_group` VALUES ('808', '166', '9');
INSERT INTO `user_group` VALUES ('809', '166', '12');
INSERT INTO `user_group` VALUES ('810', '166', '13');
INSERT INTO `user_group` VALUES ('811', '166', '14');
INSERT INTO `user_group` VALUES ('812', '166', '17');
INSERT INTO `user_group` VALUES ('813', '166', '18');
INSERT INTO `user_group` VALUES ('814', '166', '19');
INSERT INTO `user_group` VALUES ('815', '166', '22');
INSERT INTO `user_group` VALUES ('816', '166', '23');
INSERT INTO `user_group` VALUES ('817', '166', '24');
INSERT INTO `user_group` VALUES ('818', '166', '27');
INSERT INTO `user_group` VALUES ('819', '166', '28');
INSERT INTO `user_group` VALUES ('820', '166', '29');
INSERT INTO `user_group` VALUES ('821', '166', '32');
INSERT INTO `user_group` VALUES ('822', '166', '33');
INSERT INTO `user_group` VALUES ('823', '166', '34');
INSERT INTO `user_group` VALUES ('824', '166', '35');
INSERT INTO `user_group` VALUES ('825', '166', '36');
INSERT INTO `user_group` VALUES ('826', '166', '37');
INSERT INTO `user_group` VALUES ('827', '166', '38');
INSERT INTO `user_group` VALUES ('828', '166', '39');
INSERT INTO `user_group` VALUES ('829', '166', '40');
INSERT INTO `user_group` VALUES ('830', '166', '41');
INSERT INTO `user_group` VALUES ('831', '166', '42');
INSERT INTO `user_group` VALUES ('832', '166', '43');
INSERT INTO `user_group` VALUES ('833', '166', '44');
INSERT INTO `user_group` VALUES ('834', '166', '45');
INSERT INTO `user_group` VALUES ('835', '166', '46');
INSERT INTO `user_group` VALUES ('836', '166', '47');
INSERT INTO `user_group` VALUES ('837', '166', '48');
INSERT INTO `user_group` VALUES ('838', '166', '49');
INSERT INTO `user_group` VALUES ('839', '166', '50');
INSERT INTO `user_group` VALUES ('840', '166', '51');
INSERT INTO `user_group` VALUES ('841', '166', '52');
INSERT INTO `user_group` VALUES ('842', '166', '53');
INSERT INTO `user_group` VALUES ('843', '166', '54');
INSERT INTO `user_group` VALUES ('844', '166', '55');
INSERT INTO `user_group` VALUES ('845', '166', '56');
INSERT INTO `user_group` VALUES ('846', '166', '57');
INSERT INTO `user_group` VALUES ('847', '166', '58');
INSERT INTO `user_group` VALUES ('848', '166', '59');
INSERT INTO `user_group` VALUES ('849', '166', '60');
INSERT INTO `user_group` VALUES ('850', '166', '61');
INSERT INTO `user_group` VALUES ('851', '166', '62');
INSERT INTO `user_group` VALUES ('852', '166', '63');
INSERT INTO `user_group` VALUES ('853', '166', '64');
INSERT INTO `user_group` VALUES ('854', '166', '65');
INSERT INTO `user_group` VALUES ('855', '166', '66');
INSERT INTO `user_group` VALUES ('856', '166', '67');
INSERT INTO `user_group` VALUES ('857', '166', '68');
INSERT INTO `user_group` VALUES ('858', '166', '69');
INSERT INTO `user_group` VALUES ('859', '166', '70');
INSERT INTO `user_group` VALUES ('860', '166', '71');
INSERT INTO `user_group` VALUES ('861', '166', '72');
INSERT INTO `user_group` VALUES ('862', '166', '73');
INSERT INTO `user_group` VALUES ('863', '166', '74');
INSERT INTO `user_group` VALUES ('864', '166', '75');
INSERT INTO `user_group` VALUES ('865', '166', '76');
INSERT INTO `user_group` VALUES ('866', '166', '77');
INSERT INTO `user_group` VALUES ('867', '166', '78');
INSERT INTO `user_group` VALUES ('868', '166', '79');
INSERT INTO `user_group` VALUES ('869', '166', '80');
INSERT INTO `user_group` VALUES ('870', '166', '81');
INSERT INTO `user_group` VALUES ('871', '166', '90');
INSERT INTO `user_group` VALUES ('872', '166', '91');
INSERT INTO `user_group` VALUES ('873', '166', '92');
INSERT INTO `user_group` VALUES ('874', '166', '93');
INSERT INTO `user_group` VALUES ('875', '166', '98');
INSERT INTO `user_group` VALUES ('876', '166', '99');
INSERT INTO `user_group` VALUES ('877', '166', '100');
INSERT INTO `user_group` VALUES ('878', '166', '101');
INSERT INTO `user_group` VALUES ('879', '166', '102');
INSERT INTO `user_group` VALUES ('880', '166', '103');
INSERT INTO `user_group` VALUES ('881', '166', '104');
INSERT INTO `user_group` VALUES ('882', '166', '105');
INSERT INTO `user_group` VALUES ('883', '166', '107');
INSERT INTO `user_group` VALUES ('884', '166', '108');
INSERT INTO `user_group` VALUES ('885', '166', '109');
INSERT INTO `user_group` VALUES ('886', '166', '110');
INSERT INTO `user_group` VALUES ('887', '166', '111');
INSERT INTO `user_group` VALUES ('888', '166', '112');
INSERT INTO `user_group` VALUES ('889', '167', '113');
INSERT INTO `user_group` VALUES ('890', '167', '4');
INSERT INTO `user_group` VALUES ('891', '167', '7');
INSERT INTO `user_group` VALUES ('892', '167', '8');
INSERT INTO `user_group` VALUES ('893', '167', '9');
INSERT INTO `user_group` VALUES ('894', '167', '12');
INSERT INTO `user_group` VALUES ('895', '167', '13');
INSERT INTO `user_group` VALUES ('896', '167', '14');
INSERT INTO `user_group` VALUES ('897', '167', '17');
INSERT INTO `user_group` VALUES ('898', '167', '18');
INSERT INTO `user_group` VALUES ('899', '167', '19');
INSERT INTO `user_group` VALUES ('900', '167', '22');
INSERT INTO `user_group` VALUES ('901', '167', '23');
INSERT INTO `user_group` VALUES ('902', '167', '24');
INSERT INTO `user_group` VALUES ('903', '167', '27');
INSERT INTO `user_group` VALUES ('904', '167', '28');
INSERT INTO `user_group` VALUES ('905', '167', '29');
INSERT INTO `user_group` VALUES ('906', '167', '32');
INSERT INTO `user_group` VALUES ('907', '167', '33');
INSERT INTO `user_group` VALUES ('908', '167', '34');
INSERT INTO `user_group` VALUES ('909', '167', '35');
INSERT INTO `user_group` VALUES ('910', '167', '36');
INSERT INTO `user_group` VALUES ('911', '167', '37');
INSERT INTO `user_group` VALUES ('912', '167', '38');
INSERT INTO `user_group` VALUES ('913', '167', '39');
INSERT INTO `user_group` VALUES ('914', '167', '40');
INSERT INTO `user_group` VALUES ('915', '167', '41');
INSERT INTO `user_group` VALUES ('916', '167', '42');
INSERT INTO `user_group` VALUES ('917', '167', '43');
INSERT INTO `user_group` VALUES ('918', '167', '44');
INSERT INTO `user_group` VALUES ('919', '167', '45');
INSERT INTO `user_group` VALUES ('920', '167', '46');
INSERT INTO `user_group` VALUES ('921', '167', '47');
INSERT INTO `user_group` VALUES ('922', '167', '48');
INSERT INTO `user_group` VALUES ('923', '167', '49');
INSERT INTO `user_group` VALUES ('924', '167', '50');
INSERT INTO `user_group` VALUES ('925', '167', '51');
INSERT INTO `user_group` VALUES ('926', '167', '52');
INSERT INTO `user_group` VALUES ('927', '167', '53');
INSERT INTO `user_group` VALUES ('928', '167', '54');
INSERT INTO `user_group` VALUES ('929', '167', '55');
INSERT INTO `user_group` VALUES ('930', '167', '56');
INSERT INTO `user_group` VALUES ('931', '167', '57');
INSERT INTO `user_group` VALUES ('932', '167', '58');
INSERT INTO `user_group` VALUES ('933', '167', '59');
INSERT INTO `user_group` VALUES ('934', '167', '60');
INSERT INTO `user_group` VALUES ('935', '167', '61');
INSERT INTO `user_group` VALUES ('936', '167', '62');
INSERT INTO `user_group` VALUES ('937', '167', '63');
INSERT INTO `user_group` VALUES ('938', '167', '64');
INSERT INTO `user_group` VALUES ('939', '167', '65');
INSERT INTO `user_group` VALUES ('940', '167', '66');
INSERT INTO `user_group` VALUES ('941', '167', '67');
INSERT INTO `user_group` VALUES ('942', '167', '68');
INSERT INTO `user_group` VALUES ('943', '167', '69');
INSERT INTO `user_group` VALUES ('944', '167', '70');
INSERT INTO `user_group` VALUES ('945', '167', '71');
INSERT INTO `user_group` VALUES ('946', '167', '72');
INSERT INTO `user_group` VALUES ('947', '167', '73');
INSERT INTO `user_group` VALUES ('948', '167', '74');
INSERT INTO `user_group` VALUES ('949', '167', '75');
INSERT INTO `user_group` VALUES ('950', '167', '76');
INSERT INTO `user_group` VALUES ('951', '167', '77');
INSERT INTO `user_group` VALUES ('952', '167', '78');
INSERT INTO `user_group` VALUES ('953', '167', '79');
INSERT INTO `user_group` VALUES ('954', '167', '80');
INSERT INTO `user_group` VALUES ('955', '167', '81');
INSERT INTO `user_group` VALUES ('956', '167', '90');
INSERT INTO `user_group` VALUES ('957', '167', '91');
INSERT INTO `user_group` VALUES ('958', '167', '92');
INSERT INTO `user_group` VALUES ('959', '167', '93');
INSERT INTO `user_group` VALUES ('960', '167', '98');
INSERT INTO `user_group` VALUES ('961', '167', '99');
INSERT INTO `user_group` VALUES ('962', '167', '100');
INSERT INTO `user_group` VALUES ('963', '167', '101');
INSERT INTO `user_group` VALUES ('964', '167', '102');
INSERT INTO `user_group` VALUES ('965', '167', '103');
INSERT INTO `user_group` VALUES ('966', '167', '104');
INSERT INTO `user_group` VALUES ('967', '167', '105');
INSERT INTO `user_group` VALUES ('968', '167', '107');
INSERT INTO `user_group` VALUES ('969', '167', '108');
INSERT INTO `user_group` VALUES ('970', '167', '109');
INSERT INTO `user_group` VALUES ('971', '167', '110');
INSERT INTO `user_group` VALUES ('972', '167', '111');
INSERT INTO `user_group` VALUES ('973', '167', '112');
INSERT INTO `user_group` VALUES ('974', '168', '113');
INSERT INTO `user_group` VALUES ('975', '168', '4');
INSERT INTO `user_group` VALUES ('976', '168', '7');
INSERT INTO `user_group` VALUES ('977', '168', '8');
INSERT INTO `user_group` VALUES ('978', '168', '9');
INSERT INTO `user_group` VALUES ('979', '168', '12');
INSERT INTO `user_group` VALUES ('980', '168', '13');
INSERT INTO `user_group` VALUES ('981', '168', '14');
INSERT INTO `user_group` VALUES ('982', '168', '17');
INSERT INTO `user_group` VALUES ('983', '168', '18');
INSERT INTO `user_group` VALUES ('984', '168', '19');
INSERT INTO `user_group` VALUES ('985', '168', '22');
INSERT INTO `user_group` VALUES ('986', '168', '23');
INSERT INTO `user_group` VALUES ('987', '168', '24');
INSERT INTO `user_group` VALUES ('988', '168', '27');
INSERT INTO `user_group` VALUES ('989', '168', '28');
INSERT INTO `user_group` VALUES ('990', '168', '29');
INSERT INTO `user_group` VALUES ('991', '168', '32');
INSERT INTO `user_group` VALUES ('992', '168', '33');
INSERT INTO `user_group` VALUES ('993', '168', '34');
INSERT INTO `user_group` VALUES ('994', '168', '35');
INSERT INTO `user_group` VALUES ('995', '168', '36');
INSERT INTO `user_group` VALUES ('996', '168', '37');
INSERT INTO `user_group` VALUES ('997', '168', '38');
INSERT INTO `user_group` VALUES ('998', '168', '39');
INSERT INTO `user_group` VALUES ('999', '168', '40');
INSERT INTO `user_group` VALUES ('1000', '168', '41');
INSERT INTO `user_group` VALUES ('1001', '168', '42');
INSERT INTO `user_group` VALUES ('1002', '168', '43');
INSERT INTO `user_group` VALUES ('1003', '168', '44');
INSERT INTO `user_group` VALUES ('1004', '168', '45');
INSERT INTO `user_group` VALUES ('1005', '168', '46');
INSERT INTO `user_group` VALUES ('1006', '168', '47');
INSERT INTO `user_group` VALUES ('1007', '168', '48');
INSERT INTO `user_group` VALUES ('1008', '168', '49');
INSERT INTO `user_group` VALUES ('1009', '168', '50');
INSERT INTO `user_group` VALUES ('1010', '168', '51');
INSERT INTO `user_group` VALUES ('1011', '168', '52');
INSERT INTO `user_group` VALUES ('1012', '168', '53');
INSERT INTO `user_group` VALUES ('1013', '168', '54');
INSERT INTO `user_group` VALUES ('1014', '168', '55');
INSERT INTO `user_group` VALUES ('1015', '168', '56');
INSERT INTO `user_group` VALUES ('1016', '168', '57');
INSERT INTO `user_group` VALUES ('1017', '168', '58');
INSERT INTO `user_group` VALUES ('1018', '168', '59');
INSERT INTO `user_group` VALUES ('1019', '168', '60');
INSERT INTO `user_group` VALUES ('1020', '168', '61');
INSERT INTO `user_group` VALUES ('1021', '168', '62');
INSERT INTO `user_group` VALUES ('1022', '168', '63');
INSERT INTO `user_group` VALUES ('1023', '168', '64');
INSERT INTO `user_group` VALUES ('1024', '168', '65');
INSERT INTO `user_group` VALUES ('1025', '168', '66');
INSERT INTO `user_group` VALUES ('1026', '168', '67');
INSERT INTO `user_group` VALUES ('1027', '168', '68');
INSERT INTO `user_group` VALUES ('1028', '168', '69');
INSERT INTO `user_group` VALUES ('1029', '168', '70');
INSERT INTO `user_group` VALUES ('1030', '168', '71');
INSERT INTO `user_group` VALUES ('1031', '168', '72');
INSERT INTO `user_group` VALUES ('1032', '168', '73');
INSERT INTO `user_group` VALUES ('1033', '168', '74');
INSERT INTO `user_group` VALUES ('1034', '168', '75');
INSERT INTO `user_group` VALUES ('1035', '168', '76');
INSERT INTO `user_group` VALUES ('1036', '168', '77');
INSERT INTO `user_group` VALUES ('1037', '168', '78');
INSERT INTO `user_group` VALUES ('1038', '168', '79');
INSERT INTO `user_group` VALUES ('1039', '168', '80');
INSERT INTO `user_group` VALUES ('1040', '168', '81');
INSERT INTO `user_group` VALUES ('1041', '168', '90');
INSERT INTO `user_group` VALUES ('1042', '168', '91');
INSERT INTO `user_group` VALUES ('1043', '168', '92');
INSERT INTO `user_group` VALUES ('1044', '168', '93');
INSERT INTO `user_group` VALUES ('1045', '168', '98');
INSERT INTO `user_group` VALUES ('1046', '168', '99');
INSERT INTO `user_group` VALUES ('1047', '168', '100');
INSERT INTO `user_group` VALUES ('1048', '168', '101');
INSERT INTO `user_group` VALUES ('1049', '168', '102');
INSERT INTO `user_group` VALUES ('1050', '168', '103');
INSERT INTO `user_group` VALUES ('1051', '168', '104');
INSERT INTO `user_group` VALUES ('1052', '168', '105');
INSERT INTO `user_group` VALUES ('1053', '168', '107');
INSERT INTO `user_group` VALUES ('1054', '168', '108');
INSERT INTO `user_group` VALUES ('1055', '168', '109');
INSERT INTO `user_group` VALUES ('1056', '168', '110');
INSERT INTO `user_group` VALUES ('1057', '168', '111');
INSERT INTO `user_group` VALUES ('1058', '168', '112');
INSERT INTO `user_group` VALUES ('1059', '169', '113');
INSERT INTO `user_group` VALUES ('1060', '169', '4');
INSERT INTO `user_group` VALUES ('1061', '169', '7');
INSERT INTO `user_group` VALUES ('1062', '169', '8');
INSERT INTO `user_group` VALUES ('1063', '169', '9');
INSERT INTO `user_group` VALUES ('1064', '169', '12');
INSERT INTO `user_group` VALUES ('1065', '169', '13');
INSERT INTO `user_group` VALUES ('1066', '169', '14');
INSERT INTO `user_group` VALUES ('1067', '169', '17');
INSERT INTO `user_group` VALUES ('1068', '169', '18');
INSERT INTO `user_group` VALUES ('1069', '169', '19');
INSERT INTO `user_group` VALUES ('1070', '169', '22');
INSERT INTO `user_group` VALUES ('1071', '169', '23');
INSERT INTO `user_group` VALUES ('1072', '169', '24');
INSERT INTO `user_group` VALUES ('1073', '169', '27');
INSERT INTO `user_group` VALUES ('1074', '169', '28');
INSERT INTO `user_group` VALUES ('1075', '169', '29');
INSERT INTO `user_group` VALUES ('1076', '169', '32');
INSERT INTO `user_group` VALUES ('1077', '169', '33');
INSERT INTO `user_group` VALUES ('1078', '169', '34');
INSERT INTO `user_group` VALUES ('1079', '169', '35');
INSERT INTO `user_group` VALUES ('1080', '169', '36');
INSERT INTO `user_group` VALUES ('1081', '169', '37');
INSERT INTO `user_group` VALUES ('1082', '169', '38');
INSERT INTO `user_group` VALUES ('1083', '169', '39');
INSERT INTO `user_group` VALUES ('1084', '169', '40');
INSERT INTO `user_group` VALUES ('1085', '169', '41');
INSERT INTO `user_group` VALUES ('1086', '169', '42');
INSERT INTO `user_group` VALUES ('1087', '169', '43');
INSERT INTO `user_group` VALUES ('1088', '169', '44');
INSERT INTO `user_group` VALUES ('1089', '169', '45');
INSERT INTO `user_group` VALUES ('1090', '169', '46');
INSERT INTO `user_group` VALUES ('1091', '169', '47');
INSERT INTO `user_group` VALUES ('1092', '169', '48');
INSERT INTO `user_group` VALUES ('1093', '169', '49');
INSERT INTO `user_group` VALUES ('1094', '169', '50');
INSERT INTO `user_group` VALUES ('1095', '169', '51');
INSERT INTO `user_group` VALUES ('1096', '169', '52');
INSERT INTO `user_group` VALUES ('1097', '169', '53');
INSERT INTO `user_group` VALUES ('1098', '169', '54');
INSERT INTO `user_group` VALUES ('1099', '169', '55');
INSERT INTO `user_group` VALUES ('1100', '169', '56');
INSERT INTO `user_group` VALUES ('1101', '169', '57');
INSERT INTO `user_group` VALUES ('1102', '169', '58');
INSERT INTO `user_group` VALUES ('1103', '169', '59');
INSERT INTO `user_group` VALUES ('1104', '169', '60');
INSERT INTO `user_group` VALUES ('1105', '169', '61');
INSERT INTO `user_group` VALUES ('1106', '169', '62');
INSERT INTO `user_group` VALUES ('1107', '169', '63');
INSERT INTO `user_group` VALUES ('1108', '169', '64');
INSERT INTO `user_group` VALUES ('1109', '169', '65');
INSERT INTO `user_group` VALUES ('1110', '169', '66');
INSERT INTO `user_group` VALUES ('1111', '169', '67');
INSERT INTO `user_group` VALUES ('1112', '169', '68');
INSERT INTO `user_group` VALUES ('1113', '169', '69');
INSERT INTO `user_group` VALUES ('1114', '169', '70');
INSERT INTO `user_group` VALUES ('1115', '169', '71');
INSERT INTO `user_group` VALUES ('1116', '169', '72');
INSERT INTO `user_group` VALUES ('1117', '169', '73');
INSERT INTO `user_group` VALUES ('1118', '169', '74');
INSERT INTO `user_group` VALUES ('1119', '169', '75');
INSERT INTO `user_group` VALUES ('1120', '169', '76');
INSERT INTO `user_group` VALUES ('1121', '169', '77');
INSERT INTO `user_group` VALUES ('1122', '169', '78');
INSERT INTO `user_group` VALUES ('1123', '169', '79');
INSERT INTO `user_group` VALUES ('1124', '169', '80');
INSERT INTO `user_group` VALUES ('1125', '169', '81');
INSERT INTO `user_group` VALUES ('1126', '169', '90');
INSERT INTO `user_group` VALUES ('1127', '169', '91');
INSERT INTO `user_group` VALUES ('1128', '169', '92');
INSERT INTO `user_group` VALUES ('1129', '169', '93');
INSERT INTO `user_group` VALUES ('1130', '169', '98');
INSERT INTO `user_group` VALUES ('1131', '169', '99');
INSERT INTO `user_group` VALUES ('1132', '169', '100');
INSERT INTO `user_group` VALUES ('1133', '169', '101');
INSERT INTO `user_group` VALUES ('1134', '169', '102');
INSERT INTO `user_group` VALUES ('1135', '169', '103');
INSERT INTO `user_group` VALUES ('1136', '169', '104');
INSERT INTO `user_group` VALUES ('1137', '169', '105');
INSERT INTO `user_group` VALUES ('1138', '169', '107');
INSERT INTO `user_group` VALUES ('1139', '169', '108');
INSERT INTO `user_group` VALUES ('1140', '169', '109');
INSERT INTO `user_group` VALUES ('1141', '169', '110');
INSERT INTO `user_group` VALUES ('1142', '169', '111');
INSERT INTO `user_group` VALUES ('1143', '169', '112');
INSERT INTO `user_group` VALUES ('1144', '170', '113');
INSERT INTO `user_group` VALUES ('1571', '231', '7');
INSERT INTO `user_group` VALUES ('1152', '170', '17');
INSERT INTO `user_group` VALUES ('1153', '170', '18');
INSERT INTO `user_group` VALUES ('1154', '170', '19');
INSERT INTO `user_group` VALUES ('1155', '170', '22');
INSERT INTO `user_group` VALUES ('1156', '170', '23');
INSERT INTO `user_group` VALUES ('1157', '170', '24');
INSERT INTO `user_group` VALUES ('1158', '170', '27');
INSERT INTO `user_group` VALUES ('1159', '170', '28');
INSERT INTO `user_group` VALUES ('1160', '170', '29');
INSERT INTO `user_group` VALUES ('1161', '170', '32');
INSERT INTO `user_group` VALUES ('1162', '170', '33');
INSERT INTO `user_group` VALUES ('1163', '170', '34');
INSERT INTO `user_group` VALUES ('1164', '170', '35');
INSERT INTO `user_group` VALUES ('1165', '170', '36');
INSERT INTO `user_group` VALUES ('1166', '170', '37');
INSERT INTO `user_group` VALUES ('1167', '170', '38');
INSERT INTO `user_group` VALUES ('1168', '170', '39');
INSERT INTO `user_group` VALUES ('1169', '170', '40');
INSERT INTO `user_group` VALUES ('1170', '170', '41');
INSERT INTO `user_group` VALUES ('1171', '170', '42');
INSERT INTO `user_group` VALUES ('1172', '170', '43');
INSERT INTO `user_group` VALUES ('1173', '170', '44');
INSERT INTO `user_group` VALUES ('1174', '170', '45');
INSERT INTO `user_group` VALUES ('1175', '170', '46');
INSERT INTO `user_group` VALUES ('1176', '170', '47');
INSERT INTO `user_group` VALUES ('1177', '170', '48');
INSERT INTO `user_group` VALUES ('1178', '170', '49');
INSERT INTO `user_group` VALUES ('1179', '170', '50');
INSERT INTO `user_group` VALUES ('1180', '170', '51');
INSERT INTO `user_group` VALUES ('1181', '170', '52');
INSERT INTO `user_group` VALUES ('1182', '170', '53');
INSERT INTO `user_group` VALUES ('1183', '170', '54');
INSERT INTO `user_group` VALUES ('1184', '170', '55');
INSERT INTO `user_group` VALUES ('1185', '170', '56');
INSERT INTO `user_group` VALUES ('1186', '170', '57');
INSERT INTO `user_group` VALUES ('1187', '170', '58');
INSERT INTO `user_group` VALUES ('1188', '170', '59');
INSERT INTO `user_group` VALUES ('1189', '170', '60');
INSERT INTO `user_group` VALUES ('1190', '170', '61');
INSERT INTO `user_group` VALUES ('1191', '170', '62');
INSERT INTO `user_group` VALUES ('1192', '170', '63');
INSERT INTO `user_group` VALUES ('1193', '170', '64');
INSERT INTO `user_group` VALUES ('1194', '170', '65');
INSERT INTO `user_group` VALUES ('1195', '170', '66');
INSERT INTO `user_group` VALUES ('1196', '170', '67');
INSERT INTO `user_group` VALUES ('1197', '170', '68');
INSERT INTO `user_group` VALUES ('1198', '170', '69');
INSERT INTO `user_group` VALUES ('1199', '170', '70');
INSERT INTO `user_group` VALUES ('1200', '170', '71');
INSERT INTO `user_group` VALUES ('1201', '170', '72');
INSERT INTO `user_group` VALUES ('1202', '170', '73');
INSERT INTO `user_group` VALUES ('1203', '170', '74');
INSERT INTO `user_group` VALUES ('1204', '170', '75');
INSERT INTO `user_group` VALUES ('1205', '170', '76');
INSERT INTO `user_group` VALUES ('1206', '170', '77');
INSERT INTO `user_group` VALUES ('1207', '170', '78');
INSERT INTO `user_group` VALUES ('1208', '170', '79');
INSERT INTO `user_group` VALUES ('1209', '170', '80');
INSERT INTO `user_group` VALUES ('1568', '229', '4');
INSERT INTO `user_group` VALUES ('1211', '170', '90');
INSERT INTO `user_group` VALUES ('1212', '170', '91');
INSERT INTO `user_group` VALUES ('1213', '170', '92');
INSERT INTO `user_group` VALUES ('1214', '170', '93');
INSERT INTO `user_group` VALUES ('1215', '170', '98');
INSERT INTO `user_group` VALUES ('1216', '170', '99');
INSERT INTO `user_group` VALUES ('1217', '170', '100');
INSERT INTO `user_group` VALUES ('1218', '170', '101');
INSERT INTO `user_group` VALUES ('1219', '170', '102');
INSERT INTO `user_group` VALUES ('1220', '170', '103');
INSERT INTO `user_group` VALUES ('1221', '170', '104');
INSERT INTO `user_group` VALUES ('1222', '170', '105');
INSERT INTO `user_group` VALUES ('1223', '170', '107');
INSERT INTO `user_group` VALUES ('1224', '170', '108');
INSERT INTO `user_group` VALUES ('1225', '170', '109');
INSERT INTO `user_group` VALUES ('1226', '170', '110');
INSERT INTO `user_group` VALUES ('1227', '170', '111');
INSERT INTO `user_group` VALUES ('1228', '170', '112');
INSERT INTO `user_group` VALUES ('1229', '171', '113');
INSERT INTO `user_group` VALUES ('1230', '171', '4');
INSERT INTO `user_group` VALUES ('1231', '171', '7');
INSERT INTO `user_group` VALUES ('1232', '171', '8');
INSERT INTO `user_group` VALUES ('1233', '171', '9');
INSERT INTO `user_group` VALUES ('1234', '171', '12');
INSERT INTO `user_group` VALUES ('1235', '171', '13');
INSERT INTO `user_group` VALUES ('1236', '171', '14');
INSERT INTO `user_group` VALUES ('1237', '171', '17');
INSERT INTO `user_group` VALUES ('1238', '171', '18');
INSERT INTO `user_group` VALUES ('1239', '171', '19');
INSERT INTO `user_group` VALUES ('1240', '171', '22');
INSERT INTO `user_group` VALUES ('1241', '171', '23');
INSERT INTO `user_group` VALUES ('1242', '171', '24');
INSERT INTO `user_group` VALUES ('1243', '171', '27');
INSERT INTO `user_group` VALUES ('1244', '171', '28');
INSERT INTO `user_group` VALUES ('1245', '171', '29');
INSERT INTO `user_group` VALUES ('1246', '171', '32');
INSERT INTO `user_group` VALUES ('1247', '171', '33');
INSERT INTO `user_group` VALUES ('1248', '171', '34');
INSERT INTO `user_group` VALUES ('1249', '171', '35');
INSERT INTO `user_group` VALUES ('1250', '171', '36');
INSERT INTO `user_group` VALUES ('1251', '171', '37');
INSERT INTO `user_group` VALUES ('1252', '171', '38');
INSERT INTO `user_group` VALUES ('1253', '171', '39');
INSERT INTO `user_group` VALUES ('1254', '171', '40');
INSERT INTO `user_group` VALUES ('1255', '171', '41');
INSERT INTO `user_group` VALUES ('1256', '171', '42');
INSERT INTO `user_group` VALUES ('1257', '171', '43');
INSERT INTO `user_group` VALUES ('1258', '171', '44');
INSERT INTO `user_group` VALUES ('1259', '171', '45');
INSERT INTO `user_group` VALUES ('1260', '171', '46');
INSERT INTO `user_group` VALUES ('1261', '171', '47');
INSERT INTO `user_group` VALUES ('1262', '171', '48');
INSERT INTO `user_group` VALUES ('1263', '171', '49');
INSERT INTO `user_group` VALUES ('1264', '171', '50');
INSERT INTO `user_group` VALUES ('1265', '171', '51');
INSERT INTO `user_group` VALUES ('1266', '171', '52');
INSERT INTO `user_group` VALUES ('1267', '171', '53');
INSERT INTO `user_group` VALUES ('1268', '171', '54');
INSERT INTO `user_group` VALUES ('1269', '171', '55');
INSERT INTO `user_group` VALUES ('1270', '171', '56');
INSERT INTO `user_group` VALUES ('1271', '171', '57');
INSERT INTO `user_group` VALUES ('1272', '171', '58');
INSERT INTO `user_group` VALUES ('1273', '171', '59');
INSERT INTO `user_group` VALUES ('1274', '171', '60');
INSERT INTO `user_group` VALUES ('1275', '171', '61');
INSERT INTO `user_group` VALUES ('1276', '171', '62');
INSERT INTO `user_group` VALUES ('1277', '171', '63');
INSERT INTO `user_group` VALUES ('1278', '171', '64');
INSERT INTO `user_group` VALUES ('1279', '171', '65');
INSERT INTO `user_group` VALUES ('1280', '171', '66');
INSERT INTO `user_group` VALUES ('1281', '171', '67');
INSERT INTO `user_group` VALUES ('1282', '171', '68');
INSERT INTO `user_group` VALUES ('1283', '171', '69');
INSERT INTO `user_group` VALUES ('1284', '171', '70');
INSERT INTO `user_group` VALUES ('1285', '171', '71');
INSERT INTO `user_group` VALUES ('1286', '171', '72');
INSERT INTO `user_group` VALUES ('1287', '171', '73');
INSERT INTO `user_group` VALUES ('1288', '171', '74');
INSERT INTO `user_group` VALUES ('1289', '171', '75');
INSERT INTO `user_group` VALUES ('1290', '171', '76');
INSERT INTO `user_group` VALUES ('1291', '171', '77');
INSERT INTO `user_group` VALUES ('1292', '171', '78');
INSERT INTO `user_group` VALUES ('1293', '171', '79');
INSERT INTO `user_group` VALUES ('1294', '171', '80');
INSERT INTO `user_group` VALUES ('1295', '171', '81');
INSERT INTO `user_group` VALUES ('1296', '171', '90');
INSERT INTO `user_group` VALUES ('1297', '171', '91');
INSERT INTO `user_group` VALUES ('1298', '171', '92');
INSERT INTO `user_group` VALUES ('1299', '171', '93');
INSERT INTO `user_group` VALUES ('1300', '171', '98');
INSERT INTO `user_group` VALUES ('1301', '171', '99');
INSERT INTO `user_group` VALUES ('1302', '171', '100');
INSERT INTO `user_group` VALUES ('1303', '171', '101');
INSERT INTO `user_group` VALUES ('1304', '171', '102');
INSERT INTO `user_group` VALUES ('1305', '171', '103');
INSERT INTO `user_group` VALUES ('1306', '171', '104');
INSERT INTO `user_group` VALUES ('1307', '171', '105');
INSERT INTO `user_group` VALUES ('1308', '171', '107');
INSERT INTO `user_group` VALUES ('1309', '171', '108');
INSERT INTO `user_group` VALUES ('1310', '171', '109');
INSERT INTO `user_group` VALUES ('1311', '171', '110');
INSERT INTO `user_group` VALUES ('1312', '171', '111');
INSERT INTO `user_group` VALUES ('1313', '171', '112');
INSERT INTO `user_group` VALUES ('1314', '172', '113');
INSERT INTO `user_group` VALUES ('1315', '172', '4');
INSERT INTO `user_group` VALUES ('1316', '172', '7');
INSERT INTO `user_group` VALUES ('1317', '172', '8');
INSERT INTO `user_group` VALUES ('1318', '172', '9');
INSERT INTO `user_group` VALUES ('1319', '172', '12');
INSERT INTO `user_group` VALUES ('1320', '172', '13');
INSERT INTO `user_group` VALUES ('1321', '172', '14');
INSERT INTO `user_group` VALUES ('1322', '172', '17');
INSERT INTO `user_group` VALUES ('1323', '172', '18');
INSERT INTO `user_group` VALUES ('1324', '172', '19');
INSERT INTO `user_group` VALUES ('1325', '172', '22');
INSERT INTO `user_group` VALUES ('1326', '172', '23');
INSERT INTO `user_group` VALUES ('1327', '172', '24');
INSERT INTO `user_group` VALUES ('1328', '172', '27');
INSERT INTO `user_group` VALUES ('1329', '172', '28');
INSERT INTO `user_group` VALUES ('1330', '172', '29');
INSERT INTO `user_group` VALUES ('1331', '172', '32');
INSERT INTO `user_group` VALUES ('1332', '172', '33');
INSERT INTO `user_group` VALUES ('1333', '172', '34');
INSERT INTO `user_group` VALUES ('1334', '172', '35');
INSERT INTO `user_group` VALUES ('1335', '172', '36');
INSERT INTO `user_group` VALUES ('1336', '172', '37');
INSERT INTO `user_group` VALUES ('1337', '172', '38');
INSERT INTO `user_group` VALUES ('1338', '172', '39');
INSERT INTO `user_group` VALUES ('1339', '172', '40');
INSERT INTO `user_group` VALUES ('1340', '172', '41');
INSERT INTO `user_group` VALUES ('1341', '172', '42');
INSERT INTO `user_group` VALUES ('1342', '172', '43');
INSERT INTO `user_group` VALUES ('1343', '172', '44');
INSERT INTO `user_group` VALUES ('1344', '172', '45');
INSERT INTO `user_group` VALUES ('1345', '172', '46');
INSERT INTO `user_group` VALUES ('1346', '172', '47');
INSERT INTO `user_group` VALUES ('1347', '172', '48');
INSERT INTO `user_group` VALUES ('1348', '172', '49');
INSERT INTO `user_group` VALUES ('1349', '172', '50');
INSERT INTO `user_group` VALUES ('1350', '172', '51');
INSERT INTO `user_group` VALUES ('1351', '172', '52');
INSERT INTO `user_group` VALUES ('1352', '172', '53');
INSERT INTO `user_group` VALUES ('1353', '172', '54');
INSERT INTO `user_group` VALUES ('1354', '172', '55');
INSERT INTO `user_group` VALUES ('1355', '172', '56');
INSERT INTO `user_group` VALUES ('1356', '172', '57');
INSERT INTO `user_group` VALUES ('1357', '172', '58');
INSERT INTO `user_group` VALUES ('1358', '172', '59');
INSERT INTO `user_group` VALUES ('1359', '172', '60');
INSERT INTO `user_group` VALUES ('1360', '172', '61');
INSERT INTO `user_group` VALUES ('1361', '172', '62');
INSERT INTO `user_group` VALUES ('1362', '172', '63');
INSERT INTO `user_group` VALUES ('1363', '172', '64');
INSERT INTO `user_group` VALUES ('1364', '172', '65');
INSERT INTO `user_group` VALUES ('1365', '172', '66');
INSERT INTO `user_group` VALUES ('1366', '172', '67');
INSERT INTO `user_group` VALUES ('1367', '172', '68');
INSERT INTO `user_group` VALUES ('1368', '172', '69');
INSERT INTO `user_group` VALUES ('1369', '172', '70');
INSERT INTO `user_group` VALUES ('1370', '172', '71');
INSERT INTO `user_group` VALUES ('1371', '172', '72');
INSERT INTO `user_group` VALUES ('1372', '172', '73');
INSERT INTO `user_group` VALUES ('1373', '172', '74');
INSERT INTO `user_group` VALUES ('1374', '172', '75');
INSERT INTO `user_group` VALUES ('1375', '172', '76');
INSERT INTO `user_group` VALUES ('1376', '172', '77');
INSERT INTO `user_group` VALUES ('1377', '172', '78');
INSERT INTO `user_group` VALUES ('1378', '172', '79');
INSERT INTO `user_group` VALUES ('1379', '172', '80');
INSERT INTO `user_group` VALUES ('1380', '172', '81');
INSERT INTO `user_group` VALUES ('1381', '172', '90');
INSERT INTO `user_group` VALUES ('1382', '172', '91');
INSERT INTO `user_group` VALUES ('1383', '172', '92');
INSERT INTO `user_group` VALUES ('1384', '172', '93');
INSERT INTO `user_group` VALUES ('1385', '172', '98');
INSERT INTO `user_group` VALUES ('1386', '172', '99');
INSERT INTO `user_group` VALUES ('1387', '172', '100');
INSERT INTO `user_group` VALUES ('1388', '172', '101');
INSERT INTO `user_group` VALUES ('1389', '172', '102');
INSERT INTO `user_group` VALUES ('1390', '172', '103');
INSERT INTO `user_group` VALUES ('1391', '172', '104');
INSERT INTO `user_group` VALUES ('1392', '172', '105');
INSERT INTO `user_group` VALUES ('1393', '172', '107');
INSERT INTO `user_group` VALUES ('1394', '172', '108');
INSERT INTO `user_group` VALUES ('1395', '172', '109');
INSERT INTO `user_group` VALUES ('1396', '172', '110');
INSERT INTO `user_group` VALUES ('1397', '172', '111');
INSERT INTO `user_group` VALUES ('1398', '172', '112');
INSERT INTO `user_group` VALUES ('1595', '236', '7');
INSERT INTO `user_group` VALUES ('1616', '238', '9');
INSERT INTO `user_group` VALUES ('1615', '238', '8');
INSERT INTO `user_group` VALUES ('1614', '235', '8');
INSERT INTO `user_group` VALUES ('1591', '218', '7');
INSERT INTO `user_group` VALUES ('1590', '218', '4');
INSERT INTO `user_group` VALUES ('1589', '165', '7');
INSERT INTO `user_group` VALUES ('1588', '165', '4');
INSERT INTO `user_group` VALUES ('1596', '236', '8');
INSERT INTO `user_group` VALUES ('1599', '233', '7');
INSERT INTO `user_group` VALUES ('1600', '233', '8');
INSERT INTO `user_group` VALUES ('1620', '204', '9');
INSERT INTO `user_group` VALUES ('1619', '204', '7');
INSERT INTO `user_group` VALUES ('1618', '204', '7');
INSERT INTO `user_group` VALUES ('1617', '204', '7');
INSERT INTO `user_group` VALUES ('1612', '235', '7');
INSERT INTO `user_group` VALUES ('1611', '235', '4');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `roleid` int(11) NOT NULL,
  `rolescode` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=872 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('13', '1', '25', '0');
INSERT INTO `user_role` VALUES ('14', '1', '26', '0');
INSERT INTO `user_role` VALUES ('17', '1', '34', '0');
INSERT INTO `user_role` VALUES ('18', '1', '35', '0');
INSERT INTO `user_role` VALUES ('21', '1', '39', '0');
INSERT INTO `user_role` VALUES ('811', '225', '121', '0');
INSERT INTO `user_role` VALUES ('810', '225', '28', '0');
INSERT INTO `user_role` VALUES ('567', '212', '26', '0');
INSERT INTO `user_role` VALUES ('565', '212', '1', '0');
INSERT INTO `user_role` VALUES ('566', '212', '25', '0');
INSERT INTO `user_role` VALUES ('101', '1', '1', '0');
INSERT INTO `user_role` VALUES ('102', '1', '25', '0');
INSERT INTO `user_role` VALUES ('103', '1', '26', '0');
INSERT INTO `user_role` VALUES ('104', '1', '28', '0');
INSERT INTO `user_role` VALUES ('105', '1', '32', '0');
INSERT INTO `user_role` VALUES ('106', '1', '34', '0');
INSERT INTO `user_role` VALUES ('107', '1', '35', '0');
INSERT INTO `user_role` VALUES ('108', '1', '37', '0');
INSERT INTO `user_role` VALUES ('109', '1', '38', '0');
INSERT INTO `user_role` VALUES ('110', '1', '39', '0');
INSERT INTO `user_role` VALUES ('111', '1', '41', '0');
INSERT INTO `user_role` VALUES ('112', '1', '43', '0');
INSERT INTO `user_role` VALUES ('113', '1', '101', '0');
INSERT INTO `user_role` VALUES ('114', '1', '102', '0');
INSERT INTO `user_role` VALUES ('115', '1', '103', '0');
INSERT INTO `user_role` VALUES ('116', '1', '104', '0');
INSERT INTO `user_role` VALUES ('117', '1', '105', '0');
INSERT INTO `user_role` VALUES ('118', '1', '109', '0');
INSERT INTO `user_role` VALUES ('119', '1', '112', '0');
INSERT INTO `user_role` VALUES ('120', '1', '113', '0');
INSERT INTO `user_role` VALUES ('121', '1', '114', '0');
INSERT INTO `user_role` VALUES ('570', '214', '26', '0');
INSERT INTO `user_role` VALUES ('586', '217', '1', '0');
INSERT INTO `user_role` VALUES ('587', '217', '25', '0');
INSERT INTO `user_role` VALUES ('588', '217', '26', '0');
INSERT INTO `user_role` VALUES ('589', '217', '25', '0');
INSERT INTO `user_role` VALUES ('788', '197', '26', '0');
INSERT INTO `user_role` VALUES ('787', '197', '25', '0');
INSERT INTO `user_role` VALUES ('786', '197', '1', '0');
INSERT INTO `user_role` VALUES ('569', '214', '25', '0');
INSERT INTO `user_role` VALUES ('590', '217', '26', '0');
INSERT INTO `user_role` VALUES ('737', '177', '25', '0');
INSERT INTO `user_role` VALUES ('582', '0', '0', '0');
INSERT INTO `user_role` VALUES ('585', '217', '0', '0');
INSERT INTO `user_role` VALUES ('736', '177', '1', '0');
INSERT INTO `user_role` VALUES ('857', '218', '121', '0');
INSERT INTO `user_role` VALUES ('583', '0', '1', '0');
INSERT INTO `user_role` VALUES ('568', '214', '1', '0');
INSERT INTO `user_role` VALUES ('581', '0', '25', '0');
INSERT INTO `user_role` VALUES ('576', '0', '28', '0');
INSERT INTO `user_role` VALUES ('577', '0', '121', '0');
INSERT INTO `user_role` VALUES ('580', '0', '25', '0');
INSERT INTO `user_role` VALUES ('754', '222', '121', '0');
INSERT INTO `user_role` VALUES ('779', '223', '1', '0');
INSERT INTO `user_role` VALUES ('781', '223', '28', '0');
INSERT INTO `user_role` VALUES ('782', '223', '121', '0');
INSERT INTO `user_role` VALUES ('780', '223', '25', '0');
INSERT INTO `user_role` VALUES ('753', '222', '28', '0');
INSERT INTO `user_role` VALUES ('752', '222', '25', '0');
INSERT INTO `user_role` VALUES ('751', '222', '1', '0');
INSERT INTO `user_role` VALUES ('856', '218', '25', '0');
INSERT INTO `user_role` VALUES ('855', '218', '1', '0');
INSERT INTO `user_role` VALUES ('778', '170', '26', '0');
INSERT INTO `user_role` VALUES ('738', '177', '26', '0');
INSERT INTO `user_role` VALUES ('33', '209', '25', '0');
INSERT INTO `user_role` VALUES ('15', '209', '1', '0');
INSERT INTO `user_role` VALUES ('777', '170', '25', '0');
INSERT INTO `user_role` VALUES ('776', '170', '1', '0');
INSERT INTO `user_role` VALUES ('854', '165', '121', '0');
INSERT INTO `user_role` VALUES ('830', '229', '28', '0');
INSERT INTO `user_role` VALUES ('820', '228', '1', '0');
INSERT INTO `user_role` VALUES ('819', '226', '121', '0');
INSERT INTO `user_role` VALUES ('823', '228', '121', '0');
INSERT INTO `user_role` VALUES ('824', '229', '1', '0');
INSERT INTO `user_role` VALUES ('825', '229', '25', '0');
INSERT INTO `user_role` VALUES ('826', '229', '28', '0');
INSERT INTO `user_role` VALUES ('827', '229', '121', '0');
INSERT INTO `user_role` VALUES ('828', '229', '1', '0');
INSERT INTO `user_role` VALUES ('829', '229', '25', '0');
INSERT INTO `user_role` VALUES ('818', '226', '28', '0');
INSERT INTO `user_role` VALUES ('813', '226', '25', '0');
INSERT INTO `user_role` VALUES ('817', '226', '25', '0');
INSERT INTO `user_role` VALUES ('821', '228', '25', '0');
INSERT INTO `user_role` VALUES ('816', '226', '1', '0');
INSERT INTO `user_role` VALUES ('815', '226', '121', '0');
INSERT INTO `user_role` VALUES ('809', '225', '25', '0');
INSERT INTO `user_role` VALUES ('814', '226', '28', '0');
INSERT INTO `user_role` VALUES ('808', '225', '1', '0');
INSERT INTO `user_role` VALUES ('812', '226', '1', '0');
INSERT INTO `user_role` VALUES ('822', '228', '28', '0');
INSERT INTO `user_role` VALUES ('847', '219', '28', '0');
INSERT INTO `user_role` VALUES ('846', '219', '26', '0');
INSERT INTO `user_role` VALUES ('845', '219', '25', '0');
INSERT INTO `user_role` VALUES ('831', '229', '121', '0');
INSERT INTO `user_role` VALUES ('832', '231', '1', '0');
INSERT INTO `user_role` VALUES ('833', '231', '25', '0');
INSERT INTO `user_role` VALUES ('834', '231', '28', '0');
INSERT INTO `user_role` VALUES ('835', '231', '121', '0');
INSERT INTO `user_role` VALUES ('853', '165', '25', '0');
INSERT INTO `user_role` VALUES ('852', '165', '1', '0');
INSERT INTO `user_role` VALUES ('844', '219', '1', '0');
INSERT INTO `user_role` VALUES ('578', '0', '0', '0');
INSERT INTO `user_role` VALUES ('443', '0', '2', '0');
INSERT INTO `user_role` VALUES ('444', '0', '3', '0');
INSERT INTO `user_role` VALUES ('445', '0', '4', '0');
INSERT INTO `user_role` VALUES ('858', '234', '121', '0');
INSERT INTO `user_role` VALUES ('859', '234', '37', '0');
INSERT INTO `user_role` VALUES ('860', '235', '121', '0');
INSERT INTO `user_role` VALUES ('861', '235', '37', '0');
INSERT INTO `user_role` VALUES ('862', '235', '135', '0');
INSERT INTO `user_role` VALUES ('869', '235', '140', '0');
INSERT INTO `user_role` VALUES ('864', '236', '1', '0');
INSERT INTO `user_role` VALUES ('865', '165', '101', '0');
INSERT INTO `user_role` VALUES ('866', '165', '102', '0');
INSERT INTO `user_role` VALUES ('867', '237', '121', '0');
INSERT INTO `user_role` VALUES ('868', '237', '140', '0');
INSERT INTO `user_role` VALUES ('870', '233', '149', '0');
INSERT INTO `user_role` VALUES ('871', '233', '121', '0');

-- ----------------------------
-- Table structure for wftest
-- ----------------------------
DROP TABLE IF EXISTS `wftest`;
CREATE TABLE `wftest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `State` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of wftest
-- ----------------------------
INSERT INTO `wftest` VALUES ('37', 'czs', '待提交');
INSERT INTO `wftest` VALUES ('38', 'czs', '待提交');

-- ----------------------------
-- Table structure for workflow
-- ----------------------------
DROP TABLE IF EXISTS `workflow`;
CREATE TABLE `workflow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wfname` varchar(50) NOT NULL,
  `wfmemo` varchar(1024) NOT NULL,
  `wfbegintime` datetime DEFAULT NULL,
  `wfstoptime` datetime DEFAULT NULL,
  `wfflag` int(11) DEFAULT NULL,
  `wfownertable` varchar(128) DEFAULT NULL,
  `wfinstancestable` varchar(128) NOT NULL,
  `wfstatus` int(11) NOT NULL,
  `wflock` int(11) DEFAULT NULL,
  `wffieldname` varchar(255) DEFAULT NULL,
  `wfjsonstr` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of workflow
-- ----------------------------
INSERT INTO `workflow` VALUES ('44', 'workflowTest', '工作流执行测试', '2017-12-31 00:00:00', '2018-01-31 00:00:00', '1', 'wftest', 'workflowinstances', '2', '1', 'State', '{\"states\":{\"rect18\":{\"type\":\"state\",\"text\":{\"text\":\"初始状态\"},\"attr\":{\"x\":106,\"y\":109,\"width\":100,\"height\":50},\"props\":{\"text\":{\"value\":\"初始状态\"},\"id\":{\"value\":\"247\"},\"wfnodename\":{\"value\":\"Init\"},\"wfnodememo\":{\"value\":\"初始状态\"},\"wfnodestatus\":{\"value\":\"1\"},\"wfnodelock\":{\"value\":\"1\"},\"wfnodebegintime\":{\"value\":\"2017-03-01\"},\"wfnodeendtime\":{\"value\":\"2018-03-31\"}}},\"rect19\":{\"type\":\"state\",\"text\":{\"text\":\"待提交\"},\"attr\":{\"x\":377,\"y\":122,\"width\":100,\"height\":50},\"props\":{\"text\":{\"value\":\"待提交\"},\"id\":{\"value\":\"248\"},\"wfnodename\":{\"value\":\"Submit\"},\"wfnodememo\":{\"value\":\"待提交\"},\"wfnodestatus\":{\"value\":\"1\"},\"wfnodelock\":{\"value\":\"1\"},\"wfnodebegintime\":{\"value\":\"2018-02-27\"},\"wfnodeendtime\":{\"value\":\"2018-03-29\"}}},\"rect20\":{\"type\":\"state\",\"text\":{\"text\":\"待审核\"},\"attr\":{\"x\":587,\"y\":118,\"width\":100,\"height\":50},\"props\":{\"text\":{\"value\":\"待审核\"},\"id\":{\"value\":\"249\"},\"wfnodename\":{\"value\":\"Audit\"},\"wfnodememo\":{\"value\":\"待审核\"},\"wfnodestatus\":{\"value\":\"1\"},\"wfnodelock\":{\"value\":\"1\"},\"wfnodebegintime\":{\"value\":\"2018-02-26\"},\"wfnodeendtime\":{\"value\":\"2018-03-28\"}}},\"rect21\":{\"type\":\"state\",\"text\":{\"text\":\"待复审\"},\"attr\":{\"x\":796,\"y\":114,\"width\":100,\"height\":50},\"props\":{\"text\":{\"value\":\"待复审\"},\"id\":{\"value\":\"250\"},\"wfnodename\":{\"value\":\"BeAudit\"},\"wfnodememo\":{\"value\":\"待复审\"},\"wfnodestatus\":{\"value\":\"1\"},\"wfnodelock\":{\"value\":\"1\"},\"wfnodebegintime\":{\"value\":\"2018-02-25\"},\"wfnodeendtime\":{\"value\":\"2018-03-28\"}}},\"rect22\":{\"type\":\"state\",\"text\":{\"text\":\"审核通过\"},\"attr\":{\"x\":988,\"y\":154,\"width\":100,\"height\":50},\"props\":{\"text\":{\"value\":\"审核通过\"},\"id\":{\"value\":\"251\"},\"wfnodename\":{\"value\":\"Audited\"},\"wfnodememo\":{\"value\":\"审核通过\"},\"wfnodestatus\":{\"value\":\"1\"},\"wfnodelock\":{\"value\":\"1\"},\"wfnodebegintime\":{\"value\":\"2018-02-26\"},\"wfnodeendtime\":{\"value\":\"2018-03-31\"}}},\"rect23\":{\"type\":\"task\",\"text\":{\"text\":\"新增\"},\"attr\":{\"x\":203,\"y\":218,\"width\":100,\"height\":50},\"props\":{\"text\":{\"value\":\"新增\"},\"id\":{\"value\":\"62\"},\"actionid\":{\"value\":\"135\"},\"nastatus\":{\"value\":\"1\"},\"nalock\":{\"value\":\"1\"},\"nodetype\":{\"value\":\"1\"},\"begintime\":{\"value\":\"2018-02-26\"},\"endtime\":{\"value\":\"2018-03-23\"},\"opid\":{\"value\":\"62\"},\"operatortype\":{\"value\":\"1\"},\"nodeoperator\":{\"value\":\"105\"},\"operatorstatus\":{\"value\":\"1\"},\"operatorlock\":{\"value\":\"1\"}}},\"rect24\":{\"type\":\"task\",\"text\":{\"text\":\"提交\"},\"attr\":{\"x\":461,\"y\":241,\"width\":100,\"height\":50},\"props\":{\"text\":{\"value\":\"提交\"},\"id\":{\"value\":\"63\"},\"actionid\":{\"value\":\"136\"},\"nastatus\":{\"value\":\"1\"},\"nalock\":{\"value\":\"1\"},\"nodetype\":{\"value\":\"1\"},\"begintime\":{\"value\":\"2018-02-27\"},\"endtime\":{\"value\":\"2018-03-17\"},\"opid\":{\"value\":\"63\"},\"operatortype\":{\"value\":\"1\"},\"nodeoperator\":{\"value\":\"104\"},\"operatorstatus\":{\"value\":\"1\"},\"operatorlock\":{\"value\":\"1\"}}},\"rect25\":{\"type\":\"task\",\"text\":{\"text\":\"审核\"},\"attr\":{\"x\":638,\"y\":259,\"width\":100,\"height\":50},\"props\":{\"text\":{\"value\":\"审核\"},\"id\":{\"value\":\"64\"},\"actionid\":{\"value\":\"137\"},\"nastatus\":{\"value\":\"1\"},\"nalock\":{\"value\":\"1\"},\"nodetype\":{\"value\":\"1\"},\"begintime\":{\"value\":\"2018-02-27\"},\"endtime\":{\"value\":\"2018-03-23\"},\"opid\":{\"value\":\"64\"},\"operatortype\":{\"value\":\"1\"},\"nodeoperator\":{\"value\":\"102\"},\"operatorstatus\":{\"value\":\"1\"},\"operatorlock\":{\"value\":\"1\"}}},\"rect26\":{\"type\":\"task\",\"text\":{\"text\":\"复审\"},\"attr\":{\"x\":789,\"y\":249,\"width\":100,\"height\":50},\"props\":{\"text\":{\"value\":\"复审\"},\"id\":{\"value\":\"65\"},\"actionid\":{\"value\":\"138\"},\"nastatus\":{\"value\":\"1\"},\"nalock\":{\"value\":\"1\"},\"nodetype\":{\"value\":\"1\"},\"begintime\":{\"value\":\"2018-02-25\"},\"endtime\":{\"value\":\"2018-03-21\"},\"opid\":{\"value\":\"65\"},\"operatortype\":{\"value\":\"1\"},\"nodeoperator\":{\"value\":\"101\"},\"operatorstatus\":{\"value\":\"1\"},\"operatorlock\":{\"value\":\"1\"}}}},\"paths\":{\"path27\":{\"from\":\"rect18\",\"to\":\"rect23\",\"dots\":[],\"text\":{\"text\":\"TO 新增\"},\"textPos\":{\"x\":0,\"y\":-10},\"props\":{\"text\":{\"value\":\"\"}}},\"path28\":{\"from\":\"rect23\",\"to\":\"rect19\",\"dots\":[],\"text\":{\"text\":\"TO 待提交\"},\"textPos\":{\"x\":0,\"y\":-10},\"props\":{\"text\":{\"value\":\"\"}}},\"path29\":{\"from\":\"rect19\",\"to\":\"rect24\",\"dots\":[],\"text\":{\"text\":\"TO 提交\"},\"textPos\":{\"x\":0,\"y\":-10},\"props\":{\"text\":{\"value\":\"\"}}},\"path30\":{\"from\":\"rect24\",\"to\":\"rect20\",\"dots\":[],\"text\":{\"text\":\"TO 待审核\"},\"textPos\":{\"x\":0,\"y\":-10},\"props\":{\"text\":{\"value\":\"\"}}},\"path31\":{\"from\":\"rect20\",\"to\":\"rect25\",\"dots\":[],\"text\":{\"text\":\"TO 审核\"},\"textPos\":{\"x\":0,\"y\":-10},\"props\":{\"text\":{\"value\":\"\"}}},\"path32\":{\"from\":\"rect25\",\"to\":\"rect21\",\"dots\":[],\"text\":{\"text\":\"TO 待复审\"},\"textPos\":{\"x\":0,\"y\":-10},\"props\":{\"text\":{\"value\":\"\"}}},\"path33\":{\"from\":\"rect21\",\"to\":\"rect26\",\"dots\":[],\"text\":{\"text\":\"TO 复审\"},\"textPos\":{\"x\":0,\"y\":-10},\"props\":{\"text\":{\"value\":\"\"}}},\"path34\":{\"from\":\"rect26\",\"to\":\"rect22\",\"dots\":[],\"text\":{\"text\":\"TO 审核通过\"},\"textPos\":{\"x\":0,\"y\":-10},\"props\":{\"text\":{\"value\":\"\"}}}},\"props\":{\"props\":{\"id\":{\"value\":\"44\"},\"wfname\":{\"value\":\"workflowTest\"},\"wfmemo\":{\"value\":\"工作流执行测试\"},\"wfownertable\":{\"value\":\"wftest\"},\"wffieldname\":{\"value\":\"State\"},\"wfbegintime\":{\"value\":\"2017-12-31\"},\"wfstoptime\":{\"value\":\"2018-01-31\"},\"wfstatus\":{\"value\":\"1\"},\"wflock\":{\"value\":\"1\"}}}}');
INSERT INTO `workflow` VALUES ('45', 'workflowTest11', '工作流测试', '2018-01-01 00:00:00', '2018-01-27 00:00:00', null, 'TableTest', '&nbsp;', '1', '1', 'auditState', '{\"states\":{\"rect1\":{\"type\":\"state\",\"text\":{\"text\":\"初始状态\"},\"attr\":{\"x\":141,\"y\":56,\"width\":100,\"height\":50},\"props\":{\"text\":{\"value\":\"初始状态\"},\"id\":{\"value\":\"243\"},\"wfnodename\":{\"value\":\"Init\"},\"wfnodememo\":{\"value\":\"初始状态\"},\"wfnodestatus\":{\"value\":\"1\"},\"wfnodelock\":{\"value\":\"1\"},\"wfnodebegintime\":{\"value\":\"2018-02-25\"},\"wfnodeendtime\":{\"value\":\"2018-03-29\"}}},\"rect2\":{\"type\":\"task\",\"text\":{\"text\":\"新增\"},\"attr\":{\"x\":143,\"y\":193,\"width\":100,\"height\":50},\"props\":{\"text\":{\"value\":\"新增\"},\"id\":{\"value\":\"59\"},\"actionid\":{\"value\":\"-1\"},\"nastatus\":{\"value\":\"1\"},\"nalock\":{\"value\":\"1\"},\"nodetype\":{\"value\":\"1\"},\"begintime\":{\"value\":\"2018-02-27\"},\"endtime\":{\"value\":\"2018-03-22\"},\"opid\":{\"value\":\"59\"},\"operatortype\":{\"value\":\"1\"},\"nodeoperator\":{\"value\":\"1\"},\"operatorstatus\":{\"value\":\"1\"},\"operatorlock\":{\"value\":\"1\"}}},\"rect3\":{\"type\":\"state\",\"text\":{\"text\":\"待提交\"},\"attr\":{\"x\":332,\"y\":197,\"width\":100,\"height\":50},\"props\":{\"text\":{\"value\":\"待提交\"},\"id\":{\"value\":\"244\"},\"wfnodename\":{\"value\":\"Submit\"},\"wfnodememo\":{\"value\":\"待提交\"},\"wfnodestatus\":{\"value\":\"1\"},\"wfnodelock\":{\"value\":\"1\"},\"wfnodebegintime\":{\"value\":\"2018-02-25\"},\"wfnodeendtime\":{\"value\":\"2018-03-29\"}}},\"rect4\":{\"type\":\"task\",\"text\":{\"text\":\"提交\"},\"attr\":{\"x\":332,\"y\":38,\"width\":100,\"height\":50},\"props\":{\"text\":{\"value\":\"提交\"},\"id\":{\"value\":\"60\"},\"actionid\":{\"value\":\"-1\"},\"nastatus\":{\"value\":\"1\"},\"nalock\":{\"value\":\"1\"},\"nodetype\":{\"value\":\"1\"},\"begintime\":{\"value\":\"2018-02-25\"},\"endtime\":{\"value\":\"2018-03-28\"},\"opid\":{\"value\":\"60\"},\"operatortype\":{\"value\":\"1\"},\"nodeoperator\":{\"value\":\"1\"},\"operatorstatus\":{\"value\":\"1\"},\"operatorlock\":{\"value\":\"1\"}}},\"rect5\":{\"type\":\"state\",\"text\":{\"text\":\"待审核\"},\"attr\":{\"x\":592,\"y\":42,\"width\":100,\"height\":50},\"props\":{\"text\":{\"value\":\"待审核\"},\"id\":{\"value\":\"245\"},\"wfnodename\":{\"value\":\"Audit\"},\"wfnodememo\":{\"value\":\"待审核\"},\"wfnodestatus\":{\"value\":\"1\"},\"wfnodelock\":{\"value\":\"1\"},\"wfnodebegintime\":{\"value\":\"2018-02-25\"},\"wfnodeendtime\":{\"value\":\"2018-03-29\"}}},\"rect6\":{\"type\":\"task\",\"text\":{\"text\":\"审核\"},\"attr\":{\"x\":593,\"y\":203,\"width\":100,\"height\":50},\"props\":{\"text\":{\"value\":\"审核\"},\"id\":{\"value\":\"61\"},\"actionid\":{\"value\":\"-1\"},\"nastatus\":{\"value\":\"1\"},\"nalock\":{\"value\":\"1\"},\"nodetype\":{\"value\":\"1\"},\"begintime\":{\"value\":\"2018-02-28\"},\"endtime\":{\"value\":\"2018-03-23\"},\"opid\":{\"value\":\"61\"},\"operatortype\":{\"value\":\"1\"},\"nodeoperator\":{\"value\":\"1\"},\"operatorstatus\":{\"value\":\"1\"},\"operatorlock\":{\"value\":\"1\"}}},\"rect7\":{\"type\":\"state\",\"text\":{\"text\":\"审核通过\"},\"attr\":{\"x\":840,\"y\":195,\"width\":100,\"height\":50},\"props\":{\"text\":{\"value\":\"审核通过\"},\"id\":{\"value\":\"246\"},\"wfnodename\":{\"value\":\"Audited\"},\"wfnodememo\":{\"value\":\"审核通过\"},\"wfnodestatus\":{\"value\":\"1\"},\"wfnodelock\":{\"value\":\"1\"},\"wfnodebegintime\":{\"value\":\"2018-02-25\"},\"wfnodeendtime\":{\"value\":\"2018-03-29\"}}}},\"paths\":{\"path8\":{\"from\":\"rect1\",\"to\":\"rect2\",\"dots\":[],\"text\":{\"text\":\"TO 新增\"},\"textPos\":{\"x\":0,\"y\":-10},\"props\":{\"text\":{\"value\":\"\"}}},\"path9\":{\"from\":\"rect2\",\"to\":\"rect3\",\"dots\":[],\"text\":{\"text\":\"TO 待提交\"},\"textPos\":{\"x\":0,\"y\":-10},\"props\":{\"text\":{\"value\":\"\"}}},\"path10\":{\"from\":\"rect3\",\"to\":\"rect4\",\"dots\":[],\"text\":{\"text\":\"TO 提交\"},\"textPos\":{\"x\":0,\"y\":-10},\"props\":{\"text\":{\"value\":\"\"}}},\"path11\":{\"from\":\"rect4\",\"to\":\"rect5\",\"dots\":[],\"text\":{\"text\":\"TO 待审核\"},\"textPos\":{\"x\":0,\"y\":-10},\"props\":{\"text\":{\"value\":\"\"}}},\"path12\":{\"from\":\"rect5\",\"to\":\"rect6\",\"dots\":[],\"text\":{\"text\":\"TO 审核\"},\"textPos\":{\"x\":0,\"y\":-10},\"props\":{\"text\":{\"value\":\"\"}}},\"path13\":{\"from\":\"rect6\",\"to\":\"rect7\",\"dots\":[],\"text\":{\"text\":\"TO 审核通过\"},\"textPos\":{\"x\":0,\"y\":-10},\"props\":{\"text\":{\"value\":\"\"}}}},\"props\":{\"props\":{\"id\":{\"value\":\"45\"},\"wfname\":{\"value\":\"workflowTest1111\"},\"wfmemo\":{\"value\":\"工作流测试\"},\"wfownertable\":{\"value\":\"TableTest\"},\"wffieldname\":{\"value\":\"auditState\"},\"wfbegintime\":{\"value\":\"2018-01-01\"},\"wfstoptime\":{\"value\":\"2018-01-27\"},\"wfstatus\":{\"value\":\"\"},\"wflock\":{\"value\":\"\"}}}}');
INSERT INTO `workflow` VALUES ('47', 'UserInfoAudit', '测试工作流', '2018-03-08 00:00:00', '2018-03-30 00:00:00', null, 'MyTable', 'TestTable', '1', '2', 'TestField', '{}');

-- ----------------------------
-- Table structure for workflowinstances
-- ----------------------------
DROP TABLE IF EXISTS `workflowinstances`;
CREATE TABLE `workflowinstances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wfid` int(11) NOT NULL,
  `ownertabledataid` int(11) NOT NULL,
  `currentnodeid` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `datalock` int(11) DEFAULT NULL,
  `nodcode` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of workflowinstances
-- ----------------------------
INSERT INTO `workflowinstances` VALUES ('10', '44', '37', '204', null, null, null);
INSERT INTO `workflowinstances` VALUES ('11', '44', '38', '204', null, null, null);

-- ----------------------------
-- Table structure for workflowinstancetracings
-- ----------------------------
DROP TABLE IF EXISTS `workflowinstancetracings`;
CREATE TABLE `workflowinstancetracings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instanceid` int(11) NOT NULL,
  `startnode` varchar(255) NOT NULL,
  `endnode` varchar(255) NOT NULL,
  `executeaction` varchar(255) DEFAULT NULL,
  `executer` varchar(255) DEFAULT NULL,
  `executetime` datetime DEFAULT NULL,
  `remark` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of workflowinstancetracings
-- ----------------------------
INSERT INTO `workflowinstancetracings` VALUES ('2', '10', '初始状态', '待提交', '职工新增', 'czs', '1970-01-01 08:00:00', null);
INSERT INTO `workflowinstancetracings` VALUES ('3', '11', '初始状态', '待提交', '职工新增', 'czs', '1970-01-01 08:00:00', null);

-- ----------------------------
-- Table structure for workflownode
-- ----------------------------
DROP TABLE IF EXISTS `workflownode`;
CREATE TABLE `workflownode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wfid` int(11) NOT NULL,
  `wfnodename` varchar(128) NOT NULL,
  `wfnodememo` varchar(128) NOT NULL,
  `wfnodeflag` int(11) DEFAULT NULL,
  `wfnodebegintime` datetime DEFAULT NULL,
  `wfnodeendtime` datetime DEFAULT NULL,
  `wfnodestatus` int(11) NOT NULL,
  `wfnodelock` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=387 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of workflownode
-- ----------------------------

-- ----------------------------
-- Table structure for workflownodeaction
-- ----------------------------
DROP TABLE IF EXISTS `workflownodeaction`;
CREATE TABLE `workflownodeaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wfid` int(11) DEFAULT NULL,
  `nodeactionname` varchar(50) DEFAULT NULL,
  `nodeactionmemo` varchar(255) DEFAULT NULL,
  `currentnodeid` int(11) NOT NULL,
  `nextnodeid` int(11) NOT NULL,
  `nastatus` int(11) NOT NULL,
  `begintime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `nacondition` varchar(1024) DEFAULT NULL,
  `nalock` int(11) DEFAULT NULL,
  `nodeactioncode` int(11) DEFAULT NULL,
  `nodetype` int(11) DEFAULT NULL,
  `actionid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=99 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of workflownodeaction
-- ----------------------------

-- ----------------------------
-- Table structure for workflownodeoperator
-- ----------------------------
DROP TABLE IF EXISTS `workflownodeoperator`;
CREATE TABLE `workflownodeoperator` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nodeactionid` int(11) NOT NULL,
  `operatorid` int(11) NOT NULL,
  `operatortype` int(11) NOT NULL,
  `begintime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `operatorstatus` int(11) DEFAULT NULL,
  `operatorlock` int(11) DEFAULT NULL,
  `nodeoperator` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of workflownodeoperator
-- ----------------------------
