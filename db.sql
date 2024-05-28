/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xueshengsushebaoxiu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xueshengsushebaoxiu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xueshengsushebaoxiu`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-04-26 11:46:47'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-04-26 11:46:47'),(3,'wupin_types','物品分类',1,'电器',NULL,NULL,'2022-04-26 11:46:47'),(4,'wupin_types','物品分类',2,'家具',NULL,NULL,'2022-04-26 11:46:47'),(5,'wupin_types','物品分类',3,'其他',NULL,NULL,'2022-04-26 11:46:47'),(6,'guzhangshangbao_types','故障分类',1,'损坏',NULL,NULL,'2022-04-26 11:46:47'),(7,'guzhangshangbao_types','故障分类',2,'故障',NULL,NULL,'2022-04-26 11:46:47'),(8,'guzhangshangbao_types','故障分类',3,'其他',NULL,NULL,'2022-04-26 11:46:47'),(9,'weixiuzhuangtai_types','维修状态',1,'待接单',NULL,NULL,'2022-04-26 11:46:47'),(10,'weixiuzhuangtai_types','维修状态',2,'已接单',NULL,NULL,'2022-04-26 11:46:47'),(11,'weixiuzhuangtai_types','维修状态',3,'已维修',NULL,NULL,'2022-04-26 11:46:47'),(12,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2022-04-26 11:46:47'),(13,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2022-04-26 11:46:47'),(14,'loudong_types','楼栋',1,'楼栋1',NULL,NULL,'2022-04-26 11:46:47'),(15,'loudong_types','楼栋',2,'楼栋2',NULL,NULL,'2022-04-26 11:46:47'),(16,'loudong_types','楼栋',3,'楼栋3',NULL,NULL,'2022-04-26 11:46:47'),(17,'danyuan_types','单元',1,'一单元',NULL,NULL,'2022-04-26 11:46:47'),(18,'danyuan_types','单元',2,'二单元',NULL,NULL,'2022-04-26 11:46:47'),(19,'danyuan_types','单元',3,'三单元',NULL,NULL,'2022-04-26 11:46:47'),(20,'danyuan_types','单元',4,'四单元',NULL,'','2022-04-26 13:54:27');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','http://localhost:8080/xueshengsushebaoxiu/upload/gonggao1.jpg',1,'2022-04-26 11:47:29','公告详情1','2022-04-26 11:47:29'),(2,'公告名称2','http://localhost:8080/xueshengsushebaoxiu/upload/gonggao2.jpg',2,'2022-04-26 11:47:29','公告详情2','2022-04-26 11:47:29'),(3,'公告名称3','http://localhost:8080/xueshengsushebaoxiu/upload/gonggao3.jpg',1,'2022-04-26 11:47:29','公告详情3','2022-04-26 11:47:29'),(4,'公告名称4','http://localhost:8080/xueshengsushebaoxiu/upload/gonggao4.jpg',2,'2022-04-26 11:47:29','公告详情4','2022-04-26 11:47:29'),(5,'公告名称5','http://localhost:8080/xueshengsushebaoxiu/upload/gonggao5.jpg',2,'2022-04-26 11:47:29','公告详情5','2022-04-26 11:47:29'),(6,'公告11','http://localhost:8080/xueshengsushebaoxiu/upload/1650952882619.jpg',2,'2022-04-26 14:01:25','<p>三大短时实际是</p>','2022-04-26 14:01:25');

/*Table structure for table `guzhangshangbao` */

DROP TABLE IF EXISTS `guzhangshangbao`;

CREATE TABLE `guzhangshangbao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `weixiuyuan_id` int(11) DEFAULT NULL COMMENT '维修人员',
  `guzhangshangbao_uuid_number` varchar(200) DEFAULT NULL COMMENT '上报编号 Search111',
  `wupin_types` int(11) DEFAULT NULL COMMENT '物品分类 Search111',
  `guzhangshangbao_types` int(11) DEFAULT NULL COMMENT '故障分类 Search111',
  `guzhangshangbao_address` varchar(200) DEFAULT NULL COMMENT '报修位置',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上报时间 ',
  `forum_content` text COMMENT '上报详情',
  `weixiuzhuangtai_types` int(11) DEFAULT NULL COMMENT '维修状态 Search111',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='故障上报';

/*Data for the table `guzhangshangbao` */

insert  into `guzhangshangbao`(`id`,`xuesheng_id`,`weixiuyuan_id`,`guzhangshangbao_uuid_number`,`wupin_types`,`guzhangshangbao_types`,`guzhangshangbao_address`,`insert_time`,`forum_content`,`weixiuzhuangtai_types`,`create_time`) values (1,2,NULL,'165094484996378',3,3,'报修位置1','2022-04-26 11:47:29','上报详情1',1,'2022-04-26 11:47:29'),(2,1,NULL,'165094484996422',1,3,'报修位置2','2022-04-26 11:47:29','上报详情2',1,'2022-04-26 11:47:29'),(3,2,NULL,'16509448499648',1,3,'报修位置3','2022-04-26 11:47:29','上报详情3',1,'2022-04-26 11:47:29'),(4,1,3,'165094484996425',2,1,'报修位置4','2022-04-26 11:47:29','上报详情4',3,'2022-04-26 11:47:29'),(5,1,1,'165094484996473',2,3,'报修位置5','2022-04-26 11:47:29','上报详情5',3,'2022-04-26 11:47:29'),(6,1,1,'1650952822685',1,2,'位置111','2022-04-26 14:00:37','<p>撒大多数都是福建还是巅峰计划</p>',3,'2022-04-26 14:00:37');

/*Table structure for table `sushe` */

DROP TABLE IF EXISTS `sushe`;

CREATE TABLE `sushe` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `loudong_types` int(11) NOT NULL COMMENT '楼栋 Search111 ',
  `danyuan_types` int(11) NOT NULL COMMENT '单元 Search111 ',
  `sushe_uuid_number` varchar(200) DEFAULT NULL COMMENT '宿舍号 Search111  ',
  `sushe_address` varchar(200) DEFAULT NULL COMMENT '宿舍位置 Search111  ',
  `juzhu_number` int(11) NOT NULL COMMENT '最大居住人数',
  `sushe_content` text COMMENT '宿舍详情 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='宿舍';

/*Data for the table `sushe` */

insert  into `sushe`(`id`,`loudong_types`,`danyuan_types`,`sushe_uuid_number`,`sushe_address`,`juzhu_number`,`sushe_content`,`insert_time`,`create_time`) values (1,3,3,'165094484996740','宿舍位置1',222,'宿舍详情1','2022-04-26 11:47:29','2022-04-26 11:47:29'),(2,1,3,'165094484996733','宿舍位置2',221,'宿舍详情2','2022-04-26 11:47:29','2022-04-26 11:47:29'),(3,1,3,'16509448499686','宿舍位置3',237,'宿舍详情3','2022-04-26 11:47:29','2022-04-26 11:47:29'),(4,1,3,'165094484996827','宿舍位置4',489,'宿舍详情4','2022-04-26 11:47:29','2022-04-26 11:47:29'),(5,3,3,'165094484996815','宿舍位置5',398,'宿舍详情5','2022-04-26 11:47:29','2022-04-26 11:47:29');

/*Table structure for table `sushe_ren` */

DROP TABLE IF EXISTS `sushe_ren`;

CREATE TABLE `sushe_ren` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `sushe_id` int(11) DEFAULT NULL COMMENT '宿舍',
  `xuesheng_id` int(11) DEFAULT NULL COMMENT '学生',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='宿舍人员';

/*Data for the table `sushe_ren` */

insert  into `sushe_ren`(`id`,`sushe_id`,`xuesheng_id`,`insert_time`,`create_time`) values (6,4,2,'2022-04-26 13:59:54','2022-04-26 13:59:54');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','eeda8vi69wdsge31izyeammpsvlqzvdd','2022-04-26 11:50:27','2022-04-26 14:53:49'),(2,1,'a1','xuesheng','学生','8v5d7m9ydudk2vx45a8ul7y1zmh4p1t4','2022-04-26 13:09:07','2022-04-26 15:00:18'),(3,1,'a1','weixiuyuan','维修人员','jdygzculotvusorxv2r8gysf8r7zs9r5','2022-04-26 13:45:12','2022-04-26 15:01:09'),(4,2,'a2','xuesheng','学生','xhu7g1bumam7l2jfegb02gbtolaf2tmq','2022-04-26 14:00:53','2022-04-26 15:00:54'),(5,3,'a3','weixiuyuan','维修人员','psc8igwocx2vtanikeghqxf28v99f2oe','2022-04-26 14:01:47','2022-04-26 15:01:47');

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

/*Table structure for table `weixiuyuan` */

DROP TABLE IF EXISTS `weixiuyuan`;

CREATE TABLE `weixiuyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账号',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `weixiuyuan_uuid_number` varchar(200) DEFAULT NULL COMMENT '工号  Search111',
  `weixiuyuan_name` varchar(200) DEFAULT NULL COMMENT '维修员姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `weixiuyuan_nianxian` varchar(200) DEFAULT NULL COMMENT '工作年限',
  `weixiuyuan_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `weixiuyuan_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `weixiuyuan_content` text COMMENT '维修人员介绍',
  `weixiuyuan_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='维修人员';

/*Data for the table `weixiuyuan` */

insert  into `weixiuyuan`(`id`,`username`,`password`,`weixiuyuan_uuid_number`,`weixiuyuan_name`,`sex_types`,`weixiuyuan_nianxian`,`weixiuyuan_phone`,`weixiuyuan_photo`,`weixiuyuan_content`,`weixiuyuan_delete`,`create_time`) values (1,'a1','123456','165094484997425','维修员姓名1',1,'工作年限1','17703786901','http://localhost:8080/xueshengsushebaoxiu/upload/weixiuyuan1.jpg','维修人员介绍1',1,'2022-04-26 11:47:29'),(2,'a2','123456','165094484997459','维修员姓名2',1,'工作年限2','17703786902','http://localhost:8080/xueshengsushebaoxiu/upload/weixiuyuan2.jpg','维修人员介绍2',1,'2022-04-26 11:47:29'),(3,'a3','123456','16509448499744','维修员姓名3',2,'工作年限3','17703786903','http://localhost:8080/xueshengsushebaoxiu/upload/weixiuyuan3.jpg','维修人员介绍3',1,'2022-04-26 11:47:29');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '学号',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `xuesheng_uuid_number` varchar(200) DEFAULT NULL COMMENT '学号  Search111',
  `xuesheng_name` varchar(200) DEFAULT NULL COMMENT '学生姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `xuesheng_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `xuesheng_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `xuesheng_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`username`,`password`,`xuesheng_uuid_number`,`xuesheng_name`,`sex_types`,`xuesheng_id_number`,`xuesheng_phone`,`xuesheng_photo`,`create_time`) values (1,'a1','123456','165094484997578','学生姓名1',1,'410224199610232001','17703786901','http://localhost:8080/xueshengsushebaoxiu/upload/xuesheng1.jpg','2022-04-26 11:47:29'),(2,'a2','123456','165094484997541','学生姓名2',2,'410224199610232002','17703786902','http://localhost:8080/xueshengsushebaoxiu/upload/xuesheng2.jpg','2022-04-26 11:47:29'),(3,'a3','123456','165094484997530','学生姓名3',2,'410224199610232003','17703786903','http://localhost:8080/xueshengsushebaoxiu/upload/xuesheng3.jpg','2022-04-26 11:47:29');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
