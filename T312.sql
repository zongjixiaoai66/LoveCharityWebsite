/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t312`;
CREATE DATABASE IF NOT EXISTS `t312` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t312`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/lvchengzhengzhouaixingongyi/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/lvchengzhengzhouaixingongyi/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/lvchengzhengzhouaixingongyi/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'fuwuxinxi_types', '服务类型', 1, '服务类型1', NULL, NULL, '2022-04-19 13:29:28'),
	(2, 'fuwuxinxi_types', '服务类型', 2, '服务类型2', NULL, NULL, '2022-04-19 13:29:28'),
	(3, 'fuwuxinxi_types', '服务类型', 3, '服务类型3', NULL, NULL, '2022-04-19 13:29:28'),
	(4, 'fuwuxinxi_order_yesno_types', '申请状态', 1, '申请中', NULL, NULL, '2022-04-19 13:29:29'),
	(5, 'fuwuxinxi_order_yesno_types', '申请状态', 2, '同意', NULL, NULL, '2022-04-19 13:29:29'),
	(6, 'fuwuxinxi_order_yesno_types', '申请状态', 3, '拒绝', NULL, NULL, '2022-04-19 13:29:29'),
	(7, 'zixun_types', '资讯类型', 1, '公益资讯', NULL, NULL, '2022-04-19 13:29:29'),
	(8, 'zixun_types', '资讯类型', 2, '环境保护', NULL, NULL, '2022-04-19 13:29:29'),
	(9, 'zixun_types', '资讯类型', 3, '垃圾的分类', NULL, NULL, '2022-04-19 13:29:29'),
	(10, 'zixun_types', '资讯类型', 4, '公益政策', NULL, NULL, '2022-04-19 13:29:29'),
	(11, 'news_types', '新闻类型', 1, '新闻类型1', NULL, NULL, '2022-04-19 13:29:29'),
	(12, 'news_types', '新闻类型', 2, '新闻类型2', NULL, NULL, '2022-04-19 13:29:29'),
	(13, 'news_types', '新闻类型', 3, '新闻类型3', NULL, NULL, '2022-04-19 13:29:29'),
	(14, 'sex_types', '性别', 1, '男', NULL, NULL, '2022-04-19 13:29:29'),
	(15, 'sex_types', '性别', 2, '女', NULL, NULL, '2022-04-19 13:29:29'),
	(16, 'yonghu_types', '身份', 1, '个人自愿者', NULL, NULL, '2022-04-19 13:29:29'),
	(17, 'yonghu_types', '身份', 2, '团体', NULL, NULL, '2022-04-19 13:29:29'),
	(18, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2022-04-19 13:29:29'),
	(19, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2022-04-19 13:29:29');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='论坛信息';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 3, NULL, '发布内容1', NULL, 1, '2022-04-19 13:31:52', '2022-04-19 13:31:52', '2022-04-19 13:31:52'),
	(2, '帖子标题2', 3, NULL, '发布内容2', NULL, 1, '2022-04-19 13:31:52', '2022-04-19 13:31:52', '2022-04-19 13:31:52'),
	(3, '帖子标题3', 2, NULL, '发布内容3', NULL, 1, '2022-04-19 13:31:52', '2022-04-19 13:31:52', '2022-04-19 13:31:52'),
	(4, '帖子标题4', 3, NULL, '发布内容4', NULL, 1, '2022-04-19 13:31:52', '2022-04-19 13:31:52', '2022-04-19 13:31:52'),
	(5, '帖子标题5', 1, NULL, '发布内容5', NULL, 1, '2022-04-19 13:31:52', '2022-04-19 13:31:52', '2022-04-19 13:31:52'),
	(6, NULL, 1, NULL, '评论内容123', 5, 2, '2022-04-19 13:51:38', NULL, '2022-04-19 13:51:38'),
	(7, NULL, NULL, 1, '管理评论123', 5, 2, '2022-04-19 13:52:01', NULL, '2022-04-19 13:52:01');

DROP TABLE IF EXISTS `fuwuxinxi`;
CREATE TABLE IF NOT EXISTS `fuwuxinxi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fuwuxinxi_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111',
  `fuwuxinxi_types` int DEFAULT NULL COMMENT '服务类型 Search111',
  `fuwuxinxi_photo` varchar(200) DEFAULT NULL COMMENT '服务图片',
  `fuwuxinxi_time` timestamp NULL DEFAULT NULL COMMENT '开始时间',
  `fuwuxinxi_address` varchar(200) DEFAULT NULL COMMENT '服务地址',
  `fuwuxinxi_content` text COMMENT '服务详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='服务信息';

DELETE FROM `fuwuxinxi`;
INSERT INTO `fuwuxinxi` (`id`, `fuwuxinxi_name`, `fuwuxinxi_types`, `fuwuxinxi_photo`, `fuwuxinxi_time`, `fuwuxinxi_address`, `fuwuxinxi_content`, `create_time`) VALUES
	(1, '标题1', 2, 'http://localhost:8080/lvchengzhengzhouaixingongyi/upload/1650375623007.webp', '2022-04-19 13:31:52', '服务地址1', '<p>服务详情1</p>', '2022-04-19 13:31:52'),
	(2, '标题2', 1, 'http://localhost:8080/lvchengzhengzhouaixingongyi/upload/1650375614544.webp', '2022-04-19 13:31:52', '服务地址2', '<p>服务详情2</p>', '2022-04-19 13:31:52'),
	(3, '标题3', 3, 'http://localhost:8080/lvchengzhengzhouaixingongyi/upload/1650375505551.jpeg', '2022-04-19 13:31:52', '服务地址3', '<p>服务详情3</p>', '2022-04-19 13:31:52'),
	(4, '标题4', 1, 'http://localhost:8080/lvchengzhengzhouaixingongyi/upload/1650375484867.jpeg', '2022-04-19 13:31:52', '服务地址4', '<p>服务详情4</p>', '2022-04-19 13:31:52'),
	(5, '标题5', 1, 'http://localhost:8080/lvchengzhengzhouaixingongyi/upload/1650375478035.jpeg', '2022-04-19 13:31:52', '服务地址5', '<p>服务详情5</p>', '2022-04-19 13:31:52');

DROP TABLE IF EXISTS `fuwuxinxi_liuyan`;
CREATE TABLE IF NOT EXISTS `fuwuxinxi_liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fuwuxinxi_id` int DEFAULT NULL COMMENT '服务信息',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `fuwuxinxi_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='服务留言';

DELETE FROM `fuwuxinxi_liuyan`;
INSERT INTO `fuwuxinxi_liuyan` (`id`, `fuwuxinxi_id`, `yonghu_id`, `fuwuxinxi_liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 2, '留言内容1', '2022-04-19 13:31:52', '回复信息1', '2022-04-19 13:31:52', '2022-04-19 13:31:52'),
	(2, 2, 2, '留言内容2', '2022-04-19 13:31:52', '回复信息2', '2022-04-19 13:31:52', '2022-04-19 13:31:52'),
	(3, 3, 3, '留言内容3', '2022-04-19 13:31:52', '回复信息3', '2022-04-19 13:31:52', '2022-04-19 13:31:52'),
	(4, 4, 1, '留言内容4', '2022-04-19 13:31:52', '回复信息4', '2022-04-19 13:31:52', '2022-04-19 13:31:52'),
	(5, 5, 2, '留言内容5', '2022-04-19 13:31:52', '回复信息5', '2022-04-19 13:31:52', '2022-04-19 13:31:52');

DROP TABLE IF EXISTS `fuwuxinxi_order`;
CREATE TABLE IF NOT EXISTS `fuwuxinxi_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fuwuxinxi_id` int DEFAULT NULL COMMENT '服务信息',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `fuwuxinxi_order_number` int DEFAULT NULL COMMENT '参加人数',
  `fuwuxinxi_order_text` text COMMENT '备注',
  `fuwuxinxi_order_yesno_types` int DEFAULT NULL COMMENT '申请状态 Search111',
  `fuwuxinxi_order_yesno_text` text COMMENT '申请结果',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='服务申请';

DELETE FROM `fuwuxinxi_order`;
INSERT INTO `fuwuxinxi_order` (`id`, `fuwuxinxi_id`, `yonghu_id`, `fuwuxinxi_order_number`, `fuwuxinxi_order_text`, `fuwuxinxi_order_yesno_types`, `fuwuxinxi_order_yesno_text`, `create_time`) VALUES
	(1, 4, 1, 1, '备注信息123', 1, NULL, '2022-04-19 13:42:49'),
	(2, 5, 1, 10, '备注随意填写', 2, '同意', '2022-04-19 13:51:18');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻标题  Search111 ',
  `news_types` int DEFAULT NULL COMMENT '新闻类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '新闻详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='新闻信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_types`, `news_photo`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '新闻标题1', 1, 'http://localhost:8080/lvchengzhengzhouaixingongyi/upload/news1.jpg', '2022-04-19 13:31:52', '新闻详情1', '2022-04-19 13:31:52'),
	(2, '新闻标题2', 2, 'http://localhost:8080/lvchengzhengzhouaixingongyi/upload/news2.jpg', '2022-04-19 13:31:52', '新闻详情2', '2022-04-19 13:31:52'),
	(3, '新闻标题3', 2, 'http://localhost:8080/lvchengzhengzhouaixingongyi/upload/news3.jpg', '2022-04-19 13:31:52', '新闻详情3', '2022-04-19 13:31:52'),
	(4, '新闻标题4', 2, 'http://localhost:8080/lvchengzhengzhouaixingongyi/upload/news4.jpg', '2022-04-19 13:31:52', '新闻详情4', '2022-04-19 13:31:52'),
	(5, '新闻标题5', 2, 'http://localhost:8080/lvchengzhengzhouaixingongyi/upload/news5.jpg', '2022-04-19 13:31:52', '新闻详情5', '2022-04-19 13:31:52');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', '0titebq0g8aasztpn0fxz302ga0tcj7d', '2022-04-19 13:37:23', '2024-08-04 01:53:35'),
	(2, 1, 'a1', 'yonghu', '用户', '0q2q2x7k8p1r7t6b8dt7bn796t5f7yk4', '2022-04-19 13:40:55', '2024-08-04 01:54:44');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_types` int DEFAULT NULL COMMENT '身份 Search111 ',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_photo`, `sex_types`, `yonghu_phone`, `yonghu_email`, `yonghu_types`, `yonghu_delete`, `insert_time`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', 'http://localhost:8080/lvchengzhengzhouaixingongyi/upload/yonghu1.jpg', 1, '17703786901', '1@qq.com', 2, 1, '2022-04-19 13:31:52', '2022-04-19 13:31:52'),
	(2, '用户2', '123456', '用户姓名2', 'http://localhost:8080/lvchengzhengzhouaixingongyi/upload/yonghu2.jpg', 2, '17703786902', '2@qq.com', 1, 1, '2022-04-19 13:31:52', '2022-04-19 13:31:52'),
	(3, '用户3', '123456', '用户姓名3', 'http://localhost:8080/lvchengzhengzhouaixingongyi/upload/yonghu3.jpg', 1, '17703786903', '3@qq.com', 2, 1, '2022-04-19 13:31:52', '2022-04-19 13:31:52');

DROP TABLE IF EXISTS `zixun`;
CREATE TABLE IF NOT EXISTS `zixun` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `zixun_name` varchar(200) DEFAULT NULL COMMENT '资讯标题  Search111 ',
  `zixun_types` int DEFAULT NULL COMMENT '资讯类型  Search111 ',
  `zixun_photo` varchar(200) DEFAULT NULL COMMENT '资讯图片',
  `zixun_file` varchar(200) DEFAULT NULL COMMENT '相关文件',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `zixun_content` text COMMENT '资讯详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='资讯信息';

DELETE FROM `zixun`;
INSERT INTO `zixun` (`id`, `zixun_name`, `zixun_types`, `zixun_photo`, `zixun_file`, `insert_time`, `zixun_content`, `create_time`) VALUES
	(1, '资讯标题1', 1, 'http://localhost:8080/lvchengzhengzhouaixingongyi/upload/zixun1.jpg', 'http://localhost:8080/lvchengzhengzhouaixingongyi/upload/file.rar', '2022-04-19 13:31:52', '资讯详情1', '2022-04-19 13:31:52'),
	(2, '资讯标题2', 1, 'http://localhost:8080/lvchengzhengzhouaixingongyi/upload/zixun2.jpg', 'http://localhost:8080/lvchengzhengzhouaixingongyi/upload/file.rar', '2022-04-19 13:31:52', '资讯详情2', '2022-04-19 13:31:52'),
	(3, '资讯标题3', 1, 'http://localhost:8080/lvchengzhengzhouaixingongyi/upload/zixun3.jpg', 'http://localhost:8080/lvchengzhengzhouaixingongyi/upload/file.rar', '2022-04-19 13:31:52', '资讯详情3', '2022-04-19 13:31:52'),
	(4, '资讯标题4', 2, 'http://localhost:8080/lvchengzhengzhouaixingongyi/upload/zixun4.jpg', 'http://localhost:8080/lvchengzhengzhouaixingongyi/upload/file.rar', '2022-04-19 13:31:52', '资讯详情4', '2022-04-19 13:31:52'),
	(5, '资讯标题5', 2, 'http://localhost:8080/lvchengzhengzhouaixingongyi/upload/zixun5.jpg', 'http://localhost:8080/lvchengzhengzhouaixingongyi/upload/file.rar', '2022-04-19 13:31:52', '资讯详情5', '2022-04-19 13:31:52');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
