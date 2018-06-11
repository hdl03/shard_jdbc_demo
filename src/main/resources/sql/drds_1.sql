/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : drds_1

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-06-11 11:48:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for broadcast
-- ----------------------------
DROP TABLE IF EXISTS `broadcast`;
CREATE TABLE `broadcast` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bname` varchar(32) NOT NULL,
  `school` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='测试广播表';

-- ----------------------------
-- Table structure for course04
-- ----------------------------
DROP TABLE IF EXISTS `course04`;
CREATE TABLE `course04` (
  `cId` bigint(20) NOT NULL AUTO_INCREMENT,
  `cName` varchar(32) NOT NULL,
  `teacher` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='成绩表';

-- ----------------------------
-- Table structure for course05
-- ----------------------------
DROP TABLE IF EXISTS `course05`;
CREATE TABLE `course05` (
  `cId` bigint(20) NOT NULL AUTO_INCREMENT,
  `cName` varchar(32) NOT NULL,
  `teacher` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='成绩表';

-- ----------------------------
-- Table structure for course06
-- ----------------------------
DROP TABLE IF EXISTS `course06`;
CREATE TABLE `course06` (
  `cId` bigint(20) NOT NULL AUTO_INCREMENT,
  `cName` varchar(32) NOT NULL,
  `teacher` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`cId`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='成绩表';

-- ----------------------------
-- Table structure for course07
-- ----------------------------
DROP TABLE IF EXISTS `course07`;
CREATE TABLE `course07` (
  `cId` bigint(20) NOT NULL AUTO_INCREMENT,
  `cName` varchar(32) NOT NULL,
  `teacher` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`cId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='成绩表';

-- ----------------------------
-- Table structure for sclass04
-- ----------------------------
DROP TABLE IF EXISTS `sclass04`;
CREATE TABLE `sclass04` (
  `classId` bigint(20) NOT NULL AUTO_INCREMENT,
  `className` varchar(32) NOT NULL,
  `header` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`classId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='班级表';

-- ----------------------------
-- Table structure for sclass05
-- ----------------------------
DROP TABLE IF EXISTS `sclass05`;
CREATE TABLE `sclass05` (
  `classId` bigint(20) NOT NULL AUTO_INCREMENT,
  `className` varchar(32) NOT NULL,
  `header` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`classId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='班级表';

-- ----------------------------
-- Table structure for sclass06
-- ----------------------------
DROP TABLE IF EXISTS `sclass06`;
CREATE TABLE `sclass06` (
  `classId` bigint(20) NOT NULL AUTO_INCREMENT,
  `className` varchar(32) NOT NULL,
  `header` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`classId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='班级表';

-- ----------------------------
-- Table structure for sclass07
-- ----------------------------
DROP TABLE IF EXISTS `sclass07`;
CREATE TABLE `sclass07` (
  `classId` bigint(20) NOT NULL AUTO_INCREMENT,
  `className` varchar(32) NOT NULL,
  `header` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`classId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='班级表';

-- ----------------------------
-- Table structure for student04
-- ----------------------------
DROP TABLE IF EXISTS `student04`;
CREATE TABLE `student04` (
  `sId` bigint(20) NOT NULL AUTO_INCREMENT,
  `sName` varchar(32) NOT NULL,
  `gender` int(2) DEFAULT NULL,
  `classId` bigint(20) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `phoneNum` varchar(32) DEFAULT NULL,
  `bId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`sId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生表';

-- ----------------------------
-- Table structure for student05
-- ----------------------------
DROP TABLE IF EXISTS `student05`;
CREATE TABLE `student05` (
  `sId` bigint(20) NOT NULL AUTO_INCREMENT,
  `sName` varchar(32) NOT NULL,
  `gender` int(2) DEFAULT NULL,
  `classId` bigint(20) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `phoneNum` varchar(32) DEFAULT NULL,
  `bId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`sId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生表';

-- ----------------------------
-- Table structure for student06
-- ----------------------------
DROP TABLE IF EXISTS `student06`;
CREATE TABLE `student06` (
  `sId` bigint(20) NOT NULL AUTO_INCREMENT,
  `sName` varchar(32) NOT NULL,
  `gender` int(2) DEFAULT NULL,
  `classId` bigint(20) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `phoneNum` varchar(32) DEFAULT NULL,
  `bId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`sId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生表';

-- ----------------------------
-- Table structure for student07
-- ----------------------------
DROP TABLE IF EXISTS `student07`;
CREATE TABLE `student07` (
  `sId` bigint(20) NOT NULL AUTO_INCREMENT,
  `sName` varchar(32) NOT NULL,
  `gender` int(2) DEFAULT NULL,
  `classId` bigint(20) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `phoneNum` varchar(32) DEFAULT NULL,
  `bId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`sId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生表';

-- ----------------------------
-- Table structure for student_course04
-- ----------------------------
DROP TABLE IF EXISTS `student_course04`;
CREATE TABLE `student_course04` (
  `scId` bigint(20) NOT NULL AUTO_INCREMENT,
  `cId` bigint(20) NOT NULL,
  `sId` bigint(20) NOT NULL,
  `score` double NOT NULL,
  `examDate` datetime NOT NULL,
  PRIMARY KEY (`scId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='选课表';

-- ----------------------------
-- Table structure for student_course05
-- ----------------------------
DROP TABLE IF EXISTS `student_course05`;
CREATE TABLE `student_course05` (
  `scId` bigint(20) NOT NULL AUTO_INCREMENT,
  `cId` bigint(20) NOT NULL,
  `sId` bigint(20) NOT NULL,
  `score` double NOT NULL,
  `examDate` datetime NOT NULL,
  PRIMARY KEY (`scId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='选课表';

-- ----------------------------
-- Table structure for student_course06
-- ----------------------------
DROP TABLE IF EXISTS `student_course06`;
CREATE TABLE `student_course06` (
  `scId` bigint(20) NOT NULL AUTO_INCREMENT,
  `cId` bigint(20) NOT NULL,
  `sId` bigint(20) NOT NULL,
  `score` double NOT NULL,
  `examDate` datetime NOT NULL,
  PRIMARY KEY (`scId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='选课表';

-- ----------------------------
-- Table structure for student_course07
-- ----------------------------
DROP TABLE IF EXISTS `student_course07`;
CREATE TABLE `student_course07` (
  `scId` bigint(20) NOT NULL AUTO_INCREMENT,
  `cId` bigint(20) NOT NULL,
  `sId` bigint(20) NOT NULL,
  `score` double NOT NULL,
  `examDate` datetime NOT NULL,
  PRIMARY KEY (`scId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='选课表';
