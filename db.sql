/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmx88ld
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmx88ld` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmx88ld`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-05-06 16:44:50',1,'宇宙银河系金星1号','金某','13823888881','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (2,'2021-05-06 16:44:50',2,'宇宙银河系木星1号','木某','13823888882','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (3,'2021-05-06 16:44:50',3,'宇宙银河系水星1号','水某','13823888883','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (4,'2021-05-06 16:44:50',4,'宇宙银河系火星1号','火某','13823888884','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (5,'2021-05-06 16:44:50',5,'宇宙银河系土星1号','土某','13823888885','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (6,'2021-05-06 16:44:50',6,'宇宙银河系月球1号','月某','13823888886','是');

/*Table structure for table `caiwutongji` */

DROP TABLE IF EXISTS `caiwutongji`;

CREATE TABLE `caiwutongji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tongjibianhao` varchar(200) DEFAULT NULL COMMENT '统计编号',
  `jinhuozonge` float DEFAULT NULL COMMENT '进货总额',
  `xiaoshoushouru` float DEFAULT NULL COMMENT '销售收入',
  `chunlirun` varchar(200) DEFAULT NULL COMMENT '纯利润',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tongjibianhao` (`tongjibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='财务统计';

/*Data for the table `caiwutongji` */

insert  into `caiwutongji`(`id`,`addtime`,`tongjibianhao`,`jinhuozonge`,`xiaoshoushouru`,`chunlirun`,`dengjiriqi`,`beizhu`) values (51,'2021-05-06 16:44:50','统计编号1',1,1,'纯利润1','2021-05-06','备注1');
insert  into `caiwutongji`(`id`,`addtime`,`tongjibianhao`,`jinhuozonge`,`xiaoshoushouru`,`chunlirun`,`dengjiriqi`,`beizhu`) values (52,'2021-05-06 16:44:50','统计编号2',2,2,'纯利润2','2021-05-06','备注2');
insert  into `caiwutongji`(`id`,`addtime`,`tongjibianhao`,`jinhuozonge`,`xiaoshoushouru`,`chunlirun`,`dengjiriqi`,`beizhu`) values (53,'2021-05-06 16:44:50','统计编号3',3,3,'纯利润3','2021-05-06','备注3');
insert  into `caiwutongji`(`id`,`addtime`,`tongjibianhao`,`jinhuozonge`,`xiaoshoushouru`,`chunlirun`,`dengjiriqi`,`beizhu`) values (54,'2021-05-06 16:44:50','统计编号4',4,4,'纯利润4','2021-05-06','备注4');
insert  into `caiwutongji`(`id`,`addtime`,`tongjibianhao`,`jinhuozonge`,`xiaoshoushouru`,`chunlirun`,`dengjiriqi`,`beizhu`) values (55,'2021-05-06 16:44:50','统计编号5',5,5,'纯利润5','2021-05-06','备注5');
insert  into `caiwutongji`(`id`,`addtime`,`tongjibianhao`,`jinhuozonge`,`xiaoshoushouru`,`chunlirun`,`dengjiriqi`,`beizhu`) values (56,'2021-05-06 16:44:50','统计编号6',6,6,'纯利润6','2021-05-06','备注6');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'yaopinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='在线问药';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (61,'2021-05-06 16:44:50',1,1,'提问1','回复1',1);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (62,'2021-05-06 16:44:50',2,2,'提问2','回复2',2);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (63,'2021-05-06 16:44:50',3,3,'提问3','回复3',3);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (64,'2021-05-06 16:44:50',4,4,'提问4','回复4',4);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (65,'2021-05-06 16:44:50',5,5,'提问5','回复5',5);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (66,'2021-05-06 16:44:50',6,6,'提问6','回复6',6);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmx88ld/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssmx88ld/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssmx88ld/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discussyaopinxinxi` */

DROP TABLE IF EXISTS `discussyaopinxinxi`;

CREATE TABLE `discussyaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COMMENT='药品信息评论表';

/*Data for the table `discussyaopinxinxi` */

insert  into `discussyaopinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (131,'2021-05-06 16:44:50',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussyaopinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (132,'2021-05-06 16:44:50',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussyaopinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (133,'2021-05-06 16:44:50',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussyaopinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (134,'2021-05-06 16:44:50',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussyaopinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (135,'2021-05-06 16:44:50',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussyaopinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (136,'2021-05-06 16:44:50',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (121,'2021-05-06 16:44:50',1,'用户名1','留言内容1','回复内容1');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (122,'2021-05-06 16:44:50',2,'用户名2','留言内容2','回复内容2');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (123,'2021-05-06 16:44:50',3,'用户名3','留言内容3','回复内容3');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (124,'2021-05-06 16:44:50',4,'用户名4','留言内容4','回复内容4');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (125,'2021-05-06 16:44:50',5,'用户名5','留言内容5','回复内容5');
insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (126,'2021-05-06 16:44:50',6,'用户名6','留言内容6','回复内容6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='药品资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (111,'2021-05-06 16:44:50','标题1','简介1','http://localhost:8080/ssmx88ld/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (112,'2021-05-06 16:44:50','标题2','简介2','http://localhost:8080/ssmx88ld/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (113,'2021-05-06 16:44:50','标题3','简介3','http://localhost:8080/ssmx88ld/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (114,'2021-05-06 16:44:50','标题4','简介4','http://localhost:8080/ssmx88ld/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (115,'2021-05-06 16:44:50','标题5','简介5','http://localhost:8080/ssmx88ld/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (116,'2021-05-06 16:44:50','标题6','简介6','http://localhost:8080/ssmx88ld/upload/news_picture6.jpg','内容6');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'yaopinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1620290758852,'11','yonghu','用户','6kyx7rwuu5yow5zlf8zkz2rrkh4388la','2021-05-06 16:46:03','2021-05-06 17:46:03');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-05-06 16:44:50');

/*Table structure for table `xiaoshoutongji` */

DROP TABLE IF EXISTS `xiaoshoutongji`;

CREATE TABLE `xiaoshoutongji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tongjibianhao` varchar(200) DEFAULT NULL COMMENT '统计编号',
  `yaopinmingcheng` varchar(200) DEFAULT NULL COMMENT '药品名称',
  `xiaoshouliang` int(11) DEFAULT NULL COMMENT '销售量',
  `xiaoshoue` float DEFAULT NULL COMMENT '销售额',
  `chengbene` float DEFAULT NULL COMMENT '成本额',
  `lirun` float DEFAULT NULL COMMENT '利润',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tongjibianhao` (`tongjibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='销售统计';

/*Data for the table `xiaoshoutongji` */

insert  into `xiaoshoutongji`(`id`,`addtime`,`tongjibianhao`,`yaopinmingcheng`,`xiaoshouliang`,`xiaoshoue`,`chengbene`,`lirun`,`dengjiriqi`,`beizhu`) values (41,'2021-05-06 16:44:50','统计编号1','药品名称1',1,1,1,1,'2021-05-06','备注1');
insert  into `xiaoshoutongji`(`id`,`addtime`,`tongjibianhao`,`yaopinmingcheng`,`xiaoshouliang`,`xiaoshoue`,`chengbene`,`lirun`,`dengjiriqi`,`beizhu`) values (42,'2021-05-06 16:44:50','统计编号2','药品名称2',2,2,2,2,'2021-05-06','备注2');
insert  into `xiaoshoutongji`(`id`,`addtime`,`tongjibianhao`,`yaopinmingcheng`,`xiaoshouliang`,`xiaoshoue`,`chengbene`,`lirun`,`dengjiriqi`,`beizhu`) values (43,'2021-05-06 16:44:50','统计编号3','药品名称3',3,3,3,3,'2021-05-06','备注3');
insert  into `xiaoshoutongji`(`id`,`addtime`,`tongjibianhao`,`yaopinmingcheng`,`xiaoshouliang`,`xiaoshoue`,`chengbene`,`lirun`,`dengjiriqi`,`beizhu`) values (44,'2021-05-06 16:44:50','统计编号4','药品名称4',4,4,4,4,'2021-05-06','备注4');
insert  into `xiaoshoutongji`(`id`,`addtime`,`tongjibianhao`,`yaopinmingcheng`,`xiaoshouliang`,`xiaoshoue`,`chengbene`,`lirun`,`dengjiriqi`,`beizhu`) values (45,'2021-05-06 16:44:50','统计编号5','药品名称5',5,5,5,5,'2021-05-06','备注5');
insert  into `xiaoshoutongji`(`id`,`addtime`,`tongjibianhao`,`yaopinmingcheng`,`xiaoshouliang`,`xiaoshoue`,`chengbene`,`lirun`,`dengjiriqi`,`beizhu`) values (46,'2021-05-06 16:44:50','统计编号6','药品名称6',6,6,6,6,'2021-05-06','备注6');

/*Table structure for table `yaopinleibie` */

DROP TABLE IF EXISTS `yaopinleibie`;

CREATE TABLE `yaopinleibie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinleibie` varchar(200) DEFAULT NULL COMMENT '药品类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='药品类别';

/*Data for the table `yaopinleibie` */

insert  into `yaopinleibie`(`id`,`addtime`,`yaopinleibie`) values (31,'2021-05-06 16:44:50','药品类别1');
insert  into `yaopinleibie`(`id`,`addtime`,`yaopinleibie`) values (32,'2021-05-06 16:44:50','药品类别2');
insert  into `yaopinleibie`(`id`,`addtime`,`yaopinleibie`) values (33,'2021-05-06 16:44:50','药品类别3');
insert  into `yaopinleibie`(`id`,`addtime`,`yaopinleibie`) values (34,'2021-05-06 16:44:50','药品类别4');
insert  into `yaopinleibie`(`id`,`addtime`,`yaopinleibie`) values (35,'2021-05-06 16:44:50','药品类别5');
insert  into `yaopinleibie`(`id`,`addtime`,`yaopinleibie`) values (36,'2021-05-06 16:44:50','药品类别6');

/*Table structure for table `yaopinxinxi` */

DROP TABLE IF EXISTS `yaopinxinxi`;

CREATE TABLE `yaopinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yaopinbianhao` varchar(200) NOT NULL COMMENT '药品编号',
  `yaopinmingcheng` varchar(200) NOT NULL COMMENT '药品名称',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `yaopinleibie` varchar(200) DEFAULT NULL COMMENT '药品类别',
  `picihao` varchar(200) DEFAULT NULL COMMENT '批次号',
  `shengchanriqi` date DEFAULT NULL COMMENT '生产日期',
  `youxiaoqizhi` date DEFAULT NULL COMMENT '有效期至',
  `shengchandanwei` varchar(200) DEFAULT NULL COMMENT '生产单位',
  `shengchandizhi` varchar(200) DEFAULT NULL COMMENT '生产地址',
  `yaopintupian` varchar(200) DEFAULT NULL COMMENT '药品图片',
  `yaopinshuoming` longtext COMMENT '药品说明',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  `onelimittimes` int(11) DEFAULT '-1' COMMENT '单限',
  `alllimittimes` int(11) DEFAULT '-1' COMMENT '库存',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yaopinbianhao` (`yaopinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='药品信息';

/*Data for the table `yaopinxinxi` */

insert  into `yaopinxinxi`(`id`,`addtime`,`yaopinbianhao`,`yaopinmingcheng`,`leixing`,`yaopinleibie`,`picihao`,`shengchanriqi`,`youxiaoqizhi`,`shengchandanwei`,`shengchandizhi`,`yaopintupian`,`yaopinshuoming`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (21,'2021-05-06 16:44:50','药品编号1','药品名称1','非处方药','药品类别1','批次号1','2021-05-06','2021-05-06','生产单位1','生产地址1','http://localhost:8080/ssmx88ld/upload/yaopinxinxi_yaopintupian1.jpg','药品说明1','2021-05-06 16:44:50',1,99.9,1,99);
insert  into `yaopinxinxi`(`id`,`addtime`,`yaopinbianhao`,`yaopinmingcheng`,`leixing`,`yaopinleibie`,`picihao`,`shengchanriqi`,`youxiaoqizhi`,`shengchandanwei`,`shengchandizhi`,`yaopintupian`,`yaopinshuoming`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (22,'2021-05-06 16:44:50','药品编号2','药品名称2','非处方药','药品类别2','批次号2','2021-05-06','2021-05-06','生产单位2','生产地址2','http://localhost:8080/ssmx88ld/upload/yaopinxinxi_yaopintupian2.jpg','药品说明2','2021-05-06 16:44:50',2,99.9,2,99);
insert  into `yaopinxinxi`(`id`,`addtime`,`yaopinbianhao`,`yaopinmingcheng`,`leixing`,`yaopinleibie`,`picihao`,`shengchanriqi`,`youxiaoqizhi`,`shengchandanwei`,`shengchandizhi`,`yaopintupian`,`yaopinshuoming`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (23,'2021-05-06 16:44:50','药品编号3','药品名称3','非处方药','药品类别3','批次号3','2021-05-06','2021-05-06','生产单位3','生产地址3','http://localhost:8080/ssmx88ld/upload/yaopinxinxi_yaopintupian3.jpg','药品说明3','2021-05-06 16:44:50',3,99.9,3,99);
insert  into `yaopinxinxi`(`id`,`addtime`,`yaopinbianhao`,`yaopinmingcheng`,`leixing`,`yaopinleibie`,`picihao`,`shengchanriqi`,`youxiaoqizhi`,`shengchandanwei`,`shengchandizhi`,`yaopintupian`,`yaopinshuoming`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (24,'2021-05-06 16:44:50','药品编号4','药品名称4','非处方药','药品类别4','批次号4','2021-05-06','2021-05-06','生产单位4','生产地址4','http://localhost:8080/ssmx88ld/upload/yaopinxinxi_yaopintupian4.jpg','药品说明4','2021-05-06 16:44:50',4,99.9,4,99);
insert  into `yaopinxinxi`(`id`,`addtime`,`yaopinbianhao`,`yaopinmingcheng`,`leixing`,`yaopinleibie`,`picihao`,`shengchanriqi`,`youxiaoqizhi`,`shengchandanwei`,`shengchandizhi`,`yaopintupian`,`yaopinshuoming`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (25,'2021-05-06 16:44:50','药品编号5','药品名称5','非处方药','药品类别5','批次号5','2021-05-06','2021-05-06','生产单位5','生产地址5','http://localhost:8080/ssmx88ld/upload/yaopinxinxi_yaopintupian5.jpg','药品说明5','2021-05-06 16:46:04',7,99.9,5,99);
insert  into `yaopinxinxi`(`id`,`addtime`,`yaopinbianhao`,`yaopinmingcheng`,`leixing`,`yaopinleibie`,`picihao`,`shengchanriqi`,`youxiaoqizhi`,`shengchandanwei`,`shengchandizhi`,`yaopintupian`,`yaopinshuoming`,`clicktime`,`clicknum`,`price`,`onelimittimes`,`alllimittimes`) values (26,'2021-05-06 16:44:50','药品编号6','药品名称6','非处方药','药品类别6','批次号6','2021-05-06','2021-05-06','生产单位6','生产地址6','http://localhost:8080/ssmx88ld/upload/yaopinxinxi_yaopintupian6.jpg','药品说明6','2021-05-06 16:44:50',6,99.9,6,99);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620290758853 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`shenfenzheng`,`zhaopian`,`money`) values (11,'2021-05-06 16:44:50','用户1','123456','姓名1','年龄1','男','13823888881','440300199101010001','http://localhost:8080/ssmx88ld/upload/yonghu_zhaopian1.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`shenfenzheng`,`zhaopian`,`money`) values (12,'2021-05-06 16:44:50','用户2','123456','姓名2','年龄2','男','13823888882','440300199202020002','http://localhost:8080/ssmx88ld/upload/yonghu_zhaopian2.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`shenfenzheng`,`zhaopian`,`money`) values (13,'2021-05-06 16:44:50','用户3','123456','姓名3','年龄3','男','13823888883','440300199303030003','http://localhost:8080/ssmx88ld/upload/yonghu_zhaopian3.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`shenfenzheng`,`zhaopian`,`money`) values (14,'2021-05-06 16:44:50','用户4','123456','姓名4','年龄4','男','13823888884','440300199404040004','http://localhost:8080/ssmx88ld/upload/yonghu_zhaopian4.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`shenfenzheng`,`zhaopian`,`money`) values (15,'2021-05-06 16:44:50','用户5','123456','姓名5','年龄5','男','13823888885','440300199505050005','http://localhost:8080/ssmx88ld/upload/yonghu_zhaopian5.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`shenfenzheng`,`zhaopian`,`money`) values (16,'2021-05-06 16:44:50','用户6','123456','姓名6','年龄6','男','13823888886','440300199606060006','http://localhost:8080/ssmx88ld/upload/yonghu_zhaopian6.jpg',100);
insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`xingbie`,`shouji`,`shenfenzheng`,`zhaopian`,`money`) values (1620290758852,'2021-05-06 16:45:58','11','11','梵蒂冈','',NULL,'','',NULL,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
