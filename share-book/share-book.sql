/*

*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_article
-- ----------------------------
DROP TABLE IF EXISTS `t_article`;
CREATE TABLE `t_article`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(50)  NULL DEFAULT NULL COMMENT '文章名称',
  `publishDate` datetime NULL DEFAULT NULL COMMENT '发布日期',
  `userId` int NULL DEFAULT NULL COMMENT '发布人id',
  `articleTypeId` int NULL DEFAULT NULL COMMENT '文章类型id',
  `points` int NULL DEFAULT NULL COMMENT '下载所需积分',
  `summary` text  NULL COMMENT '摘要',
  `content` text  NULL COMMENT '内容',
  `downloadLink` varchar(50)  NULL DEFAULT NULL COMMENT '百度云链接',
  `password` varchar(50)  NULL DEFAULT NULL COMMENT '链接密码',
  `isHot` int NULL DEFAULT NULL COMMENT '是否热门 0代表不是 1代表是',
  `state` int NULL DEFAULT NULL COMMENT '状态 1代表未审核 2代表审核通过 3代表审核未通过',
  `reason` varchar(50)  NULL DEFAULT NULL COMMENT '审核未通过理由',
  `checkDate` datetime NULL DEFAULT NULL COMMENT '审核时间',
  `isUseful` int NULL DEFAULT NULL COMMENT '链接是否失效 0代表未失效 1代表已经失效',
  `click` int NULL DEFAULT NULL COMMENT '点击次数',
  `fileName` varchar(1000)  NULL DEFAULT NULL COMMENT '资源名称',
  `filePath` text  NULL COMMENT '资源路径',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE,
  INDEX `articleTypeId`(`articleTypeId`) USING BTREE,
  INDEX `userId`(`userId`) USING BTREE,
  CONSTRAINT `t_article_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `t_user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 98  COMMENT = 't_article' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_article
-- ----------------------------
INSERT INTO `t_article` VALUES (96, '2024-06-15', '2024-06-15 07:43:00', 1, 9, 0, '1\n', '<p>1</p>\r\n', '123', '2', 0, 2, '无', '2024-06-15 09:03:38', 1, 3, '新建文本文档.txt', 'E:\\javaProgram\\InformationSharing-master\\file-center\\新建文本文档.txt');
INSERT INTO `t_article` VALUES (97, '试试发布资源', '2024-06-15 08:54:39', 1, 4, 0, '看看\n', '<p>看看</p>\r\n', '127.0.0.1', '123123', 0, 1, NULL, '2024-06-15 09:03:38', 1, 0, '新建文本文档.txt', 'E:\\javaProgram\\InformationSharing-master\\file-center\\新建文本文档.txt');

-- ----------------------------
-- Table structure for t_article_type
-- ----------------------------
DROP TABLE IF EXISTS `t_article_type`;
CREATE TABLE `t_article_type`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(50)  NULL DEFAULT NULL COMMENT '名称',
  `remark` varchar(50)  NULL DEFAULT NULL COMMENT '描述',
  `sortNum` int NULL DEFAULT NULL COMMENT '排列顺序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11  COMMENT = 't_article_type' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_article_type
-- ----------------------------
INSERT INTO `t_article_type` VALUES (1, 'Java技术', 'Java技术', 1);
INSERT INTO `t_article_type` VALUES (2, '数据库技术', '数据库技术', 3);
INSERT INTO `t_article_type` VALUES (3, 'Web前端技术', 'Web前端技术', 4);
INSERT INTO `t_article_type` VALUES (4, 'J2EE技术', 'J2EE技术', 2);
INSERT INTO `t_article_type` VALUES (9, '分布式微服技术', '分布式微服技术', 5);
INSERT INTO `t_article_type` VALUES (10, '移动APP开发技术', '移动APP开发技术', 6);

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `userId` int NULL DEFAULT NULL COMMENT '评论人id',
  `articleId` int NULL DEFAULT NULL COMMENT '被评论的文章id',
  `commentContent` varchar(1000)  NULL DEFAULT NULL COMMENT '内容',
  `date` datetime NULL DEFAULT NULL COMMENT '评论时间',
  `articleAuthorId` int NULL DEFAULT NULL COMMENT '资源作者id',
  `state` int NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE,
  INDEX `userId`(`userId`) USING BTREE,
  INDEX `articleId`(`articleId`) USING BTREE,
  CONSTRAINT `t_comment_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `t_user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `t_comment_ibfk_2` FOREIGN KEY (`articleId`) REFERENCES `t_article` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 60  COMMENT = 't_comment' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_comment
-- ----------------------------

-- ----------------------------
-- Table structure for t_download_message
-- ----------------------------
DROP TABLE IF EXISTS `t_download_message`;
CREATE TABLE `t_download_message`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `userId` int NULL DEFAULT NULL COMMENT '下载者id',
  `articleId` int NULL DEFAULT NULL COMMENT '资源id',
  `message` varchar(500)  NULL DEFAULT NULL COMMENT '下载信息',
  `downloadDate` datetime NULL DEFAULT NULL COMMENT '下载时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE,
  INDEX `userId`(`userId`) USING BTREE,
  INDEX `articleId`(`articleId`) USING BTREE,
  CONSTRAINT `t_download_message_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `t_user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 79  COMMENT = 't_download_message' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_download_message
-- ----------------------------
INSERT INTO `t_download_message` VALUES (79, 42, 92, '下载了：Web前端技术', '2024-06-13 22:51:58');

-- ----------------------------
-- Table structure for t_information
-- ----------------------------
DROP TABLE IF EXISTS `t_information`;
CREATE TABLE `t_information`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `userId` int NULL DEFAULT NULL COMMENT '消息所属者id',
  `content` varchar(1000)  NULL DEFAULT NULL COMMENT '内容',
  `date` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE,
  INDEX `userId`(`userId`) USING BTREE,
  CONSTRAINT `t_information_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `t_user` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 14  COMMENT = 'int_formation' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_information
-- ----------------------------
INSERT INTO `t_information` VALUES (1, 34, '你的资源(Java编程思想)的分享链接已经失效,请及时更新', '2021-01-13 03:40:59');
INSERT INTO `t_information` VALUES (12, 34, 'qqqqqqqqq', '2021-01-16 16:21:27');
INSERT INTO `t_information` VALUES (13, 34, 'wwwwww', '2021-01-16 16:21:33');

-- ----------------------------
-- Table structure for t_link
-- ----------------------------
DROP TABLE IF EXISTS `t_link`;
CREATE TABLE `t_link`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(50)  NULL DEFAULT NULL COMMENT '名称',
  `url` varchar(50)  NULL DEFAULT NULL COMMENT '地址',
  `sortNum` int NULL DEFAULT NULL COMMENT '排列序号',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4  COMMENT = 't_link' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_link
-- ----------------------------

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `userName` varchar(50)  NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(50)  NULL DEFAULT NULL COMMENT '密码',
  `nickName` varchar(50)  NULL DEFAULT NULL COMMENT '昵称',
  `email` varchar(50)  NULL DEFAULT NULL COMMENT '邮箱地址',
  `imageName` varchar(50)  NULL DEFAULT NULL COMMENT '头像地址',
  `points` int NULL DEFAULT NULL,
  `isVip` int NULL DEFAULT NULL,
  `isOff` int NULL DEFAULT NULL,
  `roleName` varchar(50)  NULL DEFAULT NULL,
  `registerDate` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 43  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'admin', 'admin', '测试账户', '1203007469@qq.com', '20210114225430.jpg', 10000, 1, 0, '管理员', '2024-06-13 22:50:34');
INSERT INTO `t_user` VALUES (34, '111', '111111', 'test', '3495197980@qq.com', '20210108235216.jpg', 105, 0, 0, 'VIP用户', '2024-06-13 22:50:34');
INSERT INTO `t_user` VALUES (42, 'home', 'st19970124', 'home', '1291082973@qq.com', '20240613225034.JPG', 96, 0, 0, '普通用户', '2024-06-13 22:50:34');

SET FOREIGN_KEY_CHECKS = 1;

