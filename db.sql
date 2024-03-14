/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - waimaifuwu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`waimaifuwu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `waimaifuwu`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,2,'收货人1','17703786901','地址1',1,'2022-03-19 16:10:58','2022-03-19 16:10:58','2022-03-19 16:10:58'),(2,1,'收货人2','17703786902','地址2',2,'2022-03-19 16:10:58','2022-03-19 16:43:42','2022-03-19 16:10:58'),(3,2,'收货人3','17703786903','地址3',1,'2022-03-19 16:10:58','2022-03-19 16:10:58','2022-03-19 16:10:58'),(4,3,'收货人4','17703786904','地址4',1,'2022-03-19 16:10:58','2022-03-19 16:10:58','2022-03-19 16:10:58'),(5,1,'收货人5','17703786905','地址5',1,'2022-03-19 16:10:58','2022-03-19 16:43:36','2022-03-19 16:10:58');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `waimai_id` int(11) DEFAULT NULL COMMENT '外卖',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/waimaifuwu/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/waimaifuwu/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/waimaifuwu/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-03-19 16:07:44'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-03-19 16:07:44'),(3,'huiyuandengji_types','会员等级类型',1,'青铜会员',NULL,'0.98','2022-03-19 16:07:44'),(4,'huiyuandengji_types','会员等级类型',2,'白银会员',NULL,'0.96','2022-03-19 16:07:44'),(5,'huiyuandengji_types','会员等级类型',3,'黄金会员',NULL,'0.94','2022-03-19 16:07:44'),(6,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-03-19 16:07:45'),(7,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-03-19 16:07:45'),(8,'waimai_types','外卖类型',1,'外卖类型1',NULL,NULL,'2022-03-19 16:07:45'),(9,'waimai_types','外卖类型',2,'外卖类型2',NULL,NULL,'2022-03-19 16:07:45'),(10,'waimai_types','外卖类型',3,'外卖类型3',NULL,NULL,'2022-03-19 16:07:45'),(11,'waimai_types','外卖类型',4,'外卖类型4',NULL,NULL,'2022-03-19 16:07:45'),(12,'waimai_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-03-19 16:07:45'),(13,'waimai_order_types','订单类型',1,'已评价',NULL,NULL,'2022-03-19 16:07:45'),(14,'waimai_order_types','订单类型',2,'退款',NULL,NULL,'2022-03-19 16:07:45'),(15,'waimai_order_types','订单类型',3,'已支付',NULL,NULL,'2022-03-19 16:07:45'),(16,'waimai_order_types','订单类型',4,'已发货',NULL,NULL,'2022-03-19 16:07:45'),(17,'waimai_order_types','订单类型',5,'已收货',NULL,NULL,'2022-03-19 16:07:45'),(18,'waimai_order_payment_types','订单支付类型',1,'现金',NULL,NULL,'2022-03-19 16:07:45'),(19,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2022-03-19 16:07:45'),(20,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2022-03-19 16:07:45'),(21,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2022-03-19 16:07:45'),(22,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2022-03-19 16:07:45');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','http://localhost:8080/waimaifuwu/upload/gonggao1.jpg',2,'2022-03-19 16:10:58','公告详情1','2022-03-19 16:10:58'),(2,'公告名称2','http://localhost:8080/waimaifuwu/upload/gonggao2.jpg',1,'2022-03-19 16:10:58','公告详情2','2022-03-19 16:10:58'),(3,'公告名称3','http://localhost:8080/waimaifuwu/upload/gonggao3.jpg',2,'2022-03-19 16:10:58','公告详情3','2022-03-19 16:10:58'),(4,'公告名称4','http://localhost:8080/waimaifuwu/upload/gonggao4.jpg',1,'2022-03-19 16:10:58','公告详情4','2022-03-19 16:10:58'),(5,'公告名称5','http://localhost:8080/waimaifuwu/upload/gonggao5.jpg',1,'2022-03-19 16:10:58','公告详情5','2022-03-19 16:10:58');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','qqvdveqbq68ueu0bzewdornxu76gnoej','2022-03-19 16:15:04','2022-03-19 17:49:43'),(2,1,'a1','yonghu','用户','0tsv4oypownecdlj1lksj62kxqlbw62e','2022-03-19 16:17:15','2022-03-19 17:50:00');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2022-05-02 14:51:13');

/*Table structure for table `waimai` */

DROP TABLE IF EXISTS `waimai`;

CREATE TABLE `waimai` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `waimai_uuid_number` varchar(200) DEFAULT NULL COMMENT '外卖编号  Search111 ',
  `waimai_name` varchar(200) DEFAULT NULL COMMENT '外卖名称  Search111 ',
  `waimai_photo` varchar(200) DEFAULT NULL COMMENT '外卖照片',
  `waimai_types` int(11) DEFAULT NULL COMMENT '外卖类型 Search111',
  `waimai_kucun_number` int(11) DEFAULT NULL COMMENT '外卖库存',
  `waimai_price` int(11) DEFAULT NULL COMMENT '购买获得积分 ',
  `waimai_old_money` decimal(10,2) DEFAULT NULL COMMENT '外卖原价 ',
  `waimai_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `waimai_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `waimai_content` text COMMENT '菜品介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `waimai_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='外卖';

/*Data for the table `waimai` */

insert  into `waimai`(`id`,`waimai_uuid_number`,`waimai_name`,`waimai_photo`,`waimai_types`,`waimai_kucun_number`,`waimai_price`,`waimai_old_money`,`waimai_new_money`,`waimai_clicknum`,`waimai_content`,`shangxia_types`,`waimai_delete`,`create_time`) values (1,'16476774584284','外卖名称1','http://localhost:8080/waimaifuwu/upload/waimai1.jpg',3,101,246,'609.91','483.97',34,'菜品介绍1',1,1,'2022-03-19 16:10:58'),(2,'16476774584284','外卖名称2','http://localhost:8080/waimaifuwu/upload/waimai2.jpg',1,102,478,'588.43','169.04',164,'菜品介绍2',1,1,'2022-03-19 16:10:58'),(3,'164767745842811','外卖名称3','http://localhost:8080/waimaifuwu/upload/waimai3.jpg',1,99,482,'644.72','126.54',437,'菜品介绍3',1,1,'2022-03-19 16:10:58'),(4,'164767745842818','外卖名称4','http://localhost:8080/waimaifuwu/upload/waimai4.jpg',1,102,412,'634.91','186.45',51,'菜品介绍4',1,1,'2022-03-19 16:10:58'),(5,'16476774584286','外卖名称5','http://localhost:8080/waimaifuwu/upload/waimai5.jpg',3,104,77,'579.09','196.77',46,'菜品介绍5',1,1,'2022-03-19 16:10:58');

/*Table structure for table `waimai_collection` */

DROP TABLE IF EXISTS `waimai_collection`;

CREATE TABLE `waimai_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `waimai_id` int(11) DEFAULT NULL COMMENT '外卖',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `waimai_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='外卖收藏';

/*Data for the table `waimai_collection` */

insert  into `waimai_collection`(`id`,`waimai_id`,`yonghu_id`,`waimai_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2022-03-19 16:10:58','2022-03-19 16:10:58'),(2,2,1,1,'2022-03-19 16:10:58','2022-03-19 16:10:58'),(3,3,3,1,'2022-03-19 16:10:58','2022-03-19 16:10:58'),(4,4,3,1,'2022-03-19 16:10:58','2022-03-19 16:10:58'),(5,5,1,1,'2022-03-19 16:10:58','2022-03-19 16:10:58'),(6,3,1,1,'2022-03-19 16:43:01','2022-03-19 16:43:01');

/*Table structure for table `waimai_commentback` */

DROP TABLE IF EXISTS `waimai_commentback`;

CREATE TABLE `waimai_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `waimai_id` int(11) DEFAULT NULL COMMENT '外卖',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `waimai_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='外卖评价';

/*Data for the table `waimai_commentback` */

insert  into `waimai_commentback`(`id`,`waimai_id`,`yonghu_id`,`waimai_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'评价内容1','2022-03-19 16:10:58','回复信息1','2022-03-19 16:10:58','2022-03-19 16:10:58'),(2,2,3,'评价内容2','2022-03-19 16:10:58','回复信息2','2022-03-19 16:10:58','2022-03-19 16:10:58'),(3,3,3,'评价内容3','2022-03-19 16:10:58','回复信息3','2022-03-19 16:10:58','2022-03-19 16:10:58'),(4,4,1,'评价内容4','2022-03-19 16:10:58','回复信息4','2022-03-19 16:10:58','2022-03-19 16:10:58'),(5,5,2,'评价内容5','2022-03-19 16:10:58','回复信息5','2022-03-19 16:10:58','2022-03-19 16:10:58'),(6,5,1,'很好吃','2022-03-19 16:49:30','gasfd','2022-03-19 16:49:51','2022-03-19 16:49:30');

/*Table structure for table `waimai_order` */

DROP TABLE IF EXISTS `waimai_order`;

CREATE TABLE `waimai_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `waimai_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `waimai_id` int(11) DEFAULT NULL COMMENT '外卖',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `waimai_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `waimai_order_courier_name` varchar(200) DEFAULT NULL COMMENT '送餐人姓名',
  `waimai_order_courier_number` varchar(200) DEFAULT NULL COMMENT '送餐人电话',
  `waimai_order_types` int(11) DEFAULT NULL COMMENT '订单类型',
  `waimai_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='外卖订单';

/*Data for the table `waimai_order` */

insert  into `waimai_order`(`id`,`waimai_order_uuid_number`,`address_id`,`waimai_id`,`yonghu_id`,`buy_number`,`waimai_order_true_price`,`waimai_order_courier_name`,`waimai_order_courier_number`,`waimai_order_types`,`waimai_order_payment_types`,`insert_time`,`create_time`) values (1,'1647678109395',5,2,1,2,'331.32',NULL,NULL,2,1,'2022-03-19 16:21:49','2022-03-19 16:21:49'),(2,'1647679386155',2,3,1,2,'248.02',NULL,NULL,3,1,'2022-03-19 16:43:06','2022-03-19 16:43:06'),(3,'1647679463470',2,4,1,2,'365.44',NULL,NULL,3,1,'2022-03-19 16:44:23','2022-03-19 16:44:23'),(4,'1647679463470',2,2,1,1,'165.66',NULL,NULL,2,1,'2022-03-19 16:44:23','2022-03-19 16:44:23'),(5,'1647679463470',2,3,1,2,'248.02','张1','17703789598',5,1,'2022-03-19 16:44:23','2022-03-19 16:44:23'),(6,'1647679463470',2,5,1,2,'385.67','张三','17703786948',1,1,'2022-03-19 16:44:23','2022-03-19 16:44:23');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_sum_jifen` decimal(10,2) DEFAULT NULL COMMENT '总积分',
  `yonghu_new_jifen` decimal(10,2) DEFAULT NULL COMMENT '现积分',
  `huiyuandengji_types` int(11) DEFAULT NULL COMMENT '会员等级',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`yonghu_sum_jifen`,`yonghu_new_jifen`,`huiyuandengji_types`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/waimaifuwu/upload/yonghu1.jpg',1,'1@qq.com','9480.43','3895.62','3321.41',1,'2022-03-19 16:10:58'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/waimaifuwu/upload/yonghu2.jpg',2,'2@qq.com','607.97','559.05','272.54',1,'2022-03-19 16:10:58'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/waimaifuwu/upload/yonghu3.jpg',2,'3@qq.com','505.96','601.66','53.00',1,'2022-03-19 16:10:58');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
