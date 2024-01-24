/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm6s133
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm6s133` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm6s133`;

/*Table structure for table `cihuidanci` */

DROP TABLE IF EXISTS `cihuidanci`;

CREATE TABLE `cihuidanci` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `danci` varchar(200) DEFAULT NULL COMMENT '单词',
  `bofang` varchar(200) DEFAULT NULL COMMENT '播放',
  `shiyi` varchar(200) DEFAULT NULL COMMENT '释义',
  `liju` longtext COMMENT '例句',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609052024923 DEFAULT CHARSET=utf8 COMMENT='词汇单词';

/*Data for the table `cihuidanci` */

insert  into `cihuidanci`(`id`,`addtime`,`danci`,`bofang`,`shiyi`,`liju`,`fengmian`) values (1,'2020-12-27 01:12:22','单词1','','释义1','例句1','http://localhost:8080/ssm6s133/upload/cihuidanci_fengmian1.jpg'),(2,'2020-12-27 01:12:22','单词2','','释义2','例句2','http://localhost:8080/ssm6s133/upload/cihuidanci_fengmian2.jpg'),(3,'2020-12-27 01:12:22','单词3','','释义3','例句3','http://localhost:8080/ssm6s133/upload/cihuidanci_fengmian3.jpg'),(4,'2020-12-27 01:12:22','单词4','','释义4','例句4','http://localhost:8080/ssm6s133/upload/cihuidanci_fengmian4.jpg'),(5,'2020-12-27 01:12:22','单词5','','释义5','例句5','http://localhost:8080/ssm6s133/upload/cihuidanci_fengmian5.jpg'),(6,'2020-12-27 01:12:22','单词6','','释义6','例句6','http://localhost:8080/ssm6s133/upload/cihuidanci_fengmian6.jpg'),(1609052024922,'2020-12-27 14:53:44','お兄ちゃん','http://localhost:8080/ssm6s133/upload/1609052020673.mp3','欧尼酱','汉语写法（音译）—— 日文书写法 —— 日文罗马音——用法\n阿尼—— 兄—— a ni—— 对别人称自己的哥哥\n阿尼ki —— 兄贵 —— a ni ki —— 比较随意的叫法，同上\n尼尼 —— にに —— ni ni —— 非常亲昵，一般为小孩使用\n欧尼炭 —— お兄たん —— o ni i ta n —— 同上\n尼桑 —— 兄さん —— ni i sa n —— 较为尊敬，用于直接称呼自己哥哥\n欧尼桑 —— お兄さん —— o ni i sa n —— 尊敬，直接称呼自己哥哥或用于称呼别人哥哥\n欧尼撒嘛 —— お兄様 —— o ni i sa ma —— 最尊敬，一般不使用，常见于日漫中称呼皇兄等','http://localhost:8080/ssm6s133/upload/1609051996589.jpg');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm6s133/upload/1609052145499.jpg'),(2,'picture2','http://localhost:8080/ssm6s133/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm6s133/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/ssm6s133/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/ssm6s133/upload/picture5.jpg'),(6,'homepage',NULL);

/*Table structure for table `discusscihuidanci` */

DROP TABLE IF EXISTS `discusscihuidanci`;

CREATE TABLE `discusscihuidanci` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609052660006 DEFAULT CHARSET=utf8 COMMENT='词汇单词评论表';

/*Data for the table `discusscihuidanci` */

insert  into `discusscihuidanci`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (1,'2020-12-27 01:12:22',1,1,'评论内容1','回复内容1'),(2,'2020-12-27 01:12:22',2,2,'评论内容2','回复内容2'),(3,'2020-12-27 01:12:22',3,3,'评论内容3','回复内容3'),(4,'2020-12-27 01:12:22',4,4,'评论内容4','回复内容4'),(5,'2020-12-27 01:12:22',5,5,'评论内容5','回复内容5'),(6,'2020-12-27 01:12:22',6,6,'评论内容6','回复内容6'),(1609052660005,'2020-12-27 15:04:19',1609052024922,1609052568547,'测试','');

/*Table structure for table `exampaper` */

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609052052630 DEFAULT CHARSET=utf8 COMMENT='试卷表';

/*Data for the table `exampaper` */

insert  into `exampaper`(`id`,`addtime`,`name`,`time`,`status`) values (1609050642255,'2020-12-27 14:30:42','测试',60,1),(1609052052629,'2020-12-27 14:54:11','N2词汇练习',60,1);

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '所属试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609052127319 DEFAULT CHARSET=utf8 COMMENT='试题表';

/*Data for the table `examquestion` */

insert  into `examquestion`(`id`,`addtime`,`paperid`,`papername`,`questionname`,`options`,`score`,`answer`,`analysis`,`type`,`sequence`) values (1609050663069,'2020-12-27 14:31:02',1609050642255,'测试','1','[{\"text\":\"A.1\",\"code\":\"A\"}]',1,'A','1',0,1),(1609050898099,'2020-12-27 14:34:57',1609050642255,'测试','2','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"}]',1,'B','1',0,2),(1609052092533,'2020-12-27 14:54:51',1609052052629,'N2词汇练习','お兄ちゃん','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.3\",\"code\":\"C\"}]',10,'A','お兄ちゃん',0,1),(1609052127318,'2020-12-27 14:55:26',1609052052629,'N2词汇练习','お兄ちゃん2','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.3\",\"code\":\"C\"}]',10,'B','お兄ちゃん',0,2);

/*Table structure for table `examrecord` */

DROP TABLE IF EXISTS `examrecord`;

CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609052756133 DEFAULT CHARSET=utf8 COMMENT='考试记录表';

/*Data for the table `examrecord` */

insert  into `examrecord`(`id`,`addtime`,`userid`,`username`,`paperid`,`papername`,`questionid`,`questionname`,`options`,`score`,`answer`,`analysis`,`myscore`,`myanswer`) values (1609050906778,'2020-12-27 14:35:05',1,NULL,1609050642255,'测试',1609050663069,'1','[{\"text\":\"A.1\",\"code\":\"A\",\"checked\":true}]',1,'A','1',1,'A'),(1609050912854,'2020-12-27 14:35:12',1,NULL,1609050642255,'测试',1609050898099,'2','[{\"text\":\"A.1\",\"code\":\"A\",\"checked\":true},{\"text\":\"B.2\",\"code\":\"B\",\"checked\":false}]',1,'B','1',0,'A'),(1609050948114,'2020-12-27 14:35:47',1,NULL,1609050642255,'测试',1609050663069,'1','[{\"text\":\"A.1\",\"code\":\"A\",\"checked\":true}]',1,'A','1',1,'A'),(1609050951601,'2020-12-27 14:35:50',1,NULL,1609050642255,'测试',1609050898099,'2','[{\"text\":\"A.1\",\"code\":\"A\",\"checked\":true},{\"text\":\"B.2\",\"code\":\"B\",\"checked\":false}]',1,'B','1',0,'A'),(1609052752361,'2020-12-27 15:05:51',1609052568547,NULL,1609052052629,'N2词汇练习',1609052092533,'お兄ちゃん','[{\"text\":\"A.1\",\"code\":\"A\",\"checked\":true},{\"text\":\"B.2\",\"code\":\"B\",\"checked\":false},{\"text\":\"C.3\",\"code\":\"C\",\"checked\":false}]',10,'A','お兄ちゃん',10,'A'),(1609052756132,'2020-12-27 15:05:55',1609052568547,NULL,1609052052629,'N2词汇练习',1609052127318,'お兄ちゃん2','[{\"text\":\"A.1\",\"code\":\"A\",\"checked\":true},{\"text\":\"B.2\",\"code\":\"B\",\"checked\":false},{\"text\":\"C.3\",\"code\":\"C\",\"checked\":false}]',10,'B','お兄ちゃん',0,'A');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609052176979 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (1609051811813,'2020-12-27 14:50:11','系统公告','http://localhost:8080/ssm6s133/upload/1609051788332.jpg','<p>编辑器可传文字/图片<img src=\"http://localhost:8080/ssm6s133/upload/1609051810430.jpg\"></p>'),(1609051831648,'2020-12-27 14:50:31','关于我们','http://localhost:8080/ssm6s133/upload/1609051823927.jpg','<p>编辑器可传文字/图片<img src=\"http://localhost:8080/ssm6s133/upload/1609051830116.jpg\"></p>'),(1609051855195,'2020-12-27 14:50:55','联系我们','http://localhost:8080/ssm6s133/upload/1609051849017.jpg','<p>编辑器可传文字/图片<img src=\"http://localhost:8080/ssm6s133/upload/1609051854102.jpg\"></p>'),(1609052176978,'2020-12-27 14:56:16','公告测试2','http://localhost:8080/ssm6s133/upload/1609052166554.jpg','<p>编辑器可传文字/图片<img src=\"http://localhost:8080/ssm6s133/upload/1609052174866.jpg\"></p>');

/*Table structure for table `qiandaodaka` */

DROP TABLE IF EXISTS `qiandaodaka`;

CREATE TABLE `qiandaodaka` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `jihuaciliang` int(11) DEFAULT NULL COMMENT '计划词量',
  `dakashijian` datetime DEFAULT NULL COMMENT '打卡时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609052711603 DEFAULT CHARSET=utf8 COMMENT='签到打卡';

/*Data for the table `qiandaodaka` */

insert  into `qiandaodaka`(`id`,`addtime`,`zhanghao`,`xingming`,`touxiang`,`jihuaciliang`,`dakashijian`,`userid`) values (1,'2020-12-27 01:12:22','账号1','姓名1','http://localhost:8080/ssm6s133/upload/qiandaodaka_touxiang1.jpg',1,'2020-12-27 01:12:22',1),(2,'2020-12-27 01:12:22','账号2','姓名2','http://localhost:8080/ssm6s133/upload/qiandaodaka_touxiang2.jpg',2,'2020-12-27 01:12:22',2),(3,'2020-12-27 01:12:22','账号3','姓名3','http://localhost:8080/ssm6s133/upload/qiandaodaka_touxiang3.jpg',3,'2020-12-27 01:12:22',3),(4,'2020-12-27 01:12:22','账号4','姓名4','http://localhost:8080/ssm6s133/upload/qiandaodaka_touxiang4.jpg',4,'2020-12-27 01:12:22',4),(5,'2020-12-27 01:12:22','账号5','姓名5','http://localhost:8080/ssm6s133/upload/qiandaodaka_touxiang5.jpg',5,'2020-12-27 01:12:22',5),(6,'2020-12-27 01:12:22','账号6','姓名6','http://localhost:8080/ssm6s133/upload/qiandaodaka_touxiang6.jpg',6,'2020-12-27 01:12:22',6),(1609052711602,'2020-12-27 15:05:10','001','张三','http://localhost:8080/ssm6s133/upload/1609052625513.jpg',10,'2020-12-27 15:00:05',1609052568547);

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
) ENGINE=InnoDB AUTO_INCREMENT=1609052650074 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1609052650073,'2020-12-27 15:04:09',1609052568547,1609052024922,'cihuidanci','お兄ちゃん','http://localhost:8080/ssm6s133/upload/1609051996589.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','g0e1aj10yysbnraso1w8b9e842mypxax','2020-12-27 14:23:10','2020-12-27 15:52:20'),(2,1,'1','yonghu','用户','z3je5x1waxc4qik4rvvma3vwnid05puk','2020-12-27 14:25:09','2020-12-27 15:39:15'),(3,1609052568547,'001','yonghu','用户','98fjiywhtqxs5tdtp7jv8113h2e5yxub','2020-12-27 15:02:58','2020-12-27 16:02:58');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2020-12-27 01:12:22');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `dianhua` varchar(200) DEFAULT NULL COMMENT '电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1609052568548 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`nianling`,`dianhua`,`youxiang`,`touxiang`) values (1,'2020-12-27 01:12:22','1','1','姓名1',1,'13823888881','773890001@qq.com','http://localhost:8080/ssm6s133/upload/yonghu_touxiang1.jpg'),(2,'2020-12-27 01:12:22','用户2','123456','姓名2',2,'13823888882','773890002@qq.com','http://localhost:8080/ssm6s133/upload/yonghu_touxiang2.jpg'),(3,'2020-12-27 01:12:22','用户3','123456','姓名3',3,'13823888883','773890003@qq.com','http://localhost:8080/ssm6s133/upload/yonghu_touxiang3.jpg'),(4,'2020-12-27 01:12:22','用户4','123456','姓名4',4,'13823888884','773890004@qq.com','http://localhost:8080/ssm6s133/upload/yonghu_touxiang4.jpg'),(5,'2020-12-27 01:12:22','用户5','123456','姓名5',5,'13823888885','773890005@qq.com','http://localhost:8080/ssm6s133/upload/yonghu_touxiang5.jpg'),(6,'2020-12-27 01:12:22','用户6','123456','姓名6',6,'13823888886','773890006@qq.com','http://localhost:8080/ssm6s133/upload/yonghu_touxiang6.jpg'),(1609052568547,'2020-12-27 15:02:48','001','001','张三',19,'13800000000','123@qq.com','http://localhost:8080/ssm6s133/upload/1609052625513.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
