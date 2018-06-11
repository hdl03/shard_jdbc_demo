/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : drds_0

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-06-11 11:48:42
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='广播表 表';

-- ----------------------------
-- Table structure for course00
-- ----------------------------
DROP TABLE IF EXISTS `course00`;
CREATE TABLE `course00` (
  `cId` bigint(20) NOT NULL,
  `cName` varchar(32) NOT NULL,
  `teacher` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='成绩表';

-- ----------------------------
-- Table structure for course01
-- ----------------------------
DROP TABLE IF EXISTS `course01`;
CREATE TABLE `course01` (
  `cId` bigint(20) NOT NULL,
  `cName` varchar(32) NOT NULL,
  `teacher` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='成绩表';

-- ----------------------------
-- Table structure for course02
-- ----------------------------
DROP TABLE IF EXISTS `course02`;
CREATE TABLE `course02` (
  `cId` bigint(20) NOT NULL,
  `cName` varchar(32) NOT NULL,
  `teacher` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='成绩表';

-- ----------------------------
-- Table structure for course03
-- ----------------------------
DROP TABLE IF EXISTS `course03`;
CREATE TABLE `course03` (
  `cId` bigint(20) NOT NULL,
  `cName` varchar(32) NOT NULL,
  `teacher` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`cId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='成绩表';

-- ----------------------------
-- Table structure for sclass00
-- ----------------------------
DROP TABLE IF EXISTS `sclass00`;
CREATE TABLE `sclass00` (
  `classId` bigint(20) NOT NULL AUTO_INCREMENT,
  `className` varchar(32) NOT NULL,
  `header` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`classId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='班级表';

-- ----------------------------
-- Table structure for sclass01
-- ----------------------------
DROP TABLE IF EXISTS `sclass01`;
CREATE TABLE `sclass01` (
  `classId` bigint(20) NOT NULL AUTO_INCREMENT,
  `className` varchar(32) NOT NULL,
  `header` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`classId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='班级表';

-- ----------------------------
-- Table structure for sclass02
-- ----------------------------
DROP TABLE IF EXISTS `sclass02`;
CREATE TABLE `sclass02` (
  `classId` bigint(20) NOT NULL AUTO_INCREMENT,
  `className` varchar(32) NOT NULL,
  `header` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`classId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='班级表';

-- ----------------------------
-- Table structure for sclass03
-- ----------------------------
DROP TABLE IF EXISTS `sclass03`;
CREATE TABLE `sclass03` (
  `classId` bigint(20) NOT NULL AUTO_INCREMENT,
  `className` varchar(32) NOT NULL,
  `header` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`classId`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='班级表';

-- ----------------------------
-- Table structure for sequence
-- ----------------------------
DROP TABLE IF EXISTS `sequence`;
CREATE TABLE `sequence` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `value` bigint(20) NOT NULL,
  `gmt_modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='sequence表';

-- ----------------------------
-- Table structure for student00
-- ----------------------------
DROP TABLE IF EXISTS `student00`;
CREATE TABLE `student00` (
  `sId` bigint(20) NOT NULL AUTO_INCREMENT,
  `sName` varchar(32) NOT NULL,
  `gender` int(2) DEFAULT NULL,
  `classId` bigint(20) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `phoneNum` varchar(32) DEFAULT NULL,
  `bId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`sId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='学生表';

-- ----------------------------
-- Table structure for student01
-- ----------------------------
DROP TABLE IF EXISTS `student01`;
CREATE TABLE `student01` (
  `sId` bigint(20) NOT NULL AUTO_INCREMENT,
  `sName` varchar(32) NOT NULL,
  `gender` int(2) DEFAULT NULL,
  `classId` bigint(20) DEFAULT NULL,
  `email` varchar(32) DEFAULT NULL,
  `phoneNum` varchar(32) DEFAULT NULL,
  `bId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`sId`)
) ENGINE=InnoDB AUTO_INCREMENT=2002 DEFAULT CHARSET=utf8 COMMENT='学生表';

-- ----------------------------
-- Table structure for student02
-- ----------------------------
DROP TABLE IF EXISTS `student02`;
CREATE TABLE `student02` (
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
-- Table structure for student03
-- ----------------------------
DROP TABLE IF EXISTS `student03`;
CREATE TABLE `student03` (
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
-- Table structure for student_course00
-- ----------------------------
DROP TABLE IF EXISTS `student_course00`;
CREATE TABLE `student_course00` (
  `scId` bigint(20) NOT NULL AUTO_INCREMENT,
  `cId` bigint(20) NOT NULL,
  `sId` bigint(20) NOT NULL,
  `score` double NOT NULL,
  `examDate` datetime NOT NULL,
  PRIMARY KEY (`scId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='选课表';

-- ----------------------------
-- Table structure for student_course01
-- ----------------------------
DROP TABLE IF EXISTS `student_course01`;
CREATE TABLE `student_course01` (
  `scId` bigint(20) NOT NULL AUTO_INCREMENT,
  `cId` bigint(20) NOT NULL,
  `sId` bigint(20) NOT NULL,
  `score` double NOT NULL,
  `examDate` datetime NOT NULL,
  PRIMARY KEY (`scId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='选课表';

-- ----------------------------
-- Table structure for student_course02
-- ----------------------------
DROP TABLE IF EXISTS `student_course02`;
CREATE TABLE `student_course02` (
  `scId` bigint(20) NOT NULL AUTO_INCREMENT,
  `cId` bigint(20) NOT NULL,
  `sId` bigint(20) NOT NULL,
  `score` double NOT NULL,
  `examDate` datetime NOT NULL,
  PRIMARY KEY (`scId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='选课表';

-- ----------------------------
-- Table structure for student_course03
-- ----------------------------
DROP TABLE IF EXISTS `student_course03`;
CREATE TABLE `student_course03` (
  `scId` bigint(20) NOT NULL AUTO_INCREMENT,
  `cId` bigint(20) NOT NULL,
  `sId` bigint(20) NOT NULL,
  `score` double NOT NULL,
  `examDate` datetime NOT NULL,
  PRIMARY KEY (`scId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='选课表';
