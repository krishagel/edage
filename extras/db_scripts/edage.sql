# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.5.19)
# Database: sage
# Generation Time: 2012-08-11 02:06:55 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table cou_d0
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cou_d0`;

CREATE TABLE `cou_d0` (
  `course_id` varchar(12) NOT NULL DEFAULT '',
  `school_id` varchar(12) NOT NULL DEFAULT '',
  `period` varchar(8) DEFAULT '',
  `section` varchar(5) NOT NULL DEFAULT '',
  `course_code` varchar(10) NOT NULL DEFAULT '',
  `course_name` varchar(75) NOT NULL DEFAULT '',
  `teacher_id` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table cou_d1
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cou_d1`;

CREATE TABLE `cou_d1` (
  `course_id` varchar(12) NOT NULL DEFAULT '',
  `school_id` varchar(12) NOT NULL DEFAULT '',
  `period` varchar(8) DEFAULT '',
  `section` varchar(5) NOT NULL DEFAULT '',
  `course_code` varchar(10) NOT NULL DEFAULT '',
  `course_name` varchar(75) NOT NULL DEFAULT '',
  `teacher_id` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table cou_d2
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cou_d2`;

CREATE TABLE `cou_d2` (
  `course_id` varchar(12) NOT NULL DEFAULT '',
  `school_id` varchar(12) NOT NULL DEFAULT '',
  `period` varchar(8) DEFAULT '',
  `section` varchar(5) NOT NULL DEFAULT '',
  `course_code` varchar(10) NOT NULL DEFAULT '',
  `course_name` varchar(75) NOT NULL DEFAULT '',
  `teacher_id` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table cou_d3
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cou_d3`;

CREATE TABLE `cou_d3` (
  `course_id` varchar(12) NOT NULL DEFAULT '',
  `school_id` varchar(12) NOT NULL DEFAULT '',
  `period` varchar(8) DEFAULT '',
  `section` varchar(5) NOT NULL DEFAULT '',
  `course_code` varchar(10) NOT NULL DEFAULT '',
  `course_name` varchar(75) NOT NULL DEFAULT '',
  `teacher_id` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table cou_d4
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cou_d4`;

CREATE TABLE `cou_d4` (
  `course_id` varchar(12) NOT NULL DEFAULT '',
  `school_id` varchar(12) NOT NULL DEFAULT '',
  `period` varchar(8) DEFAULT '',
  `section` varchar(5) NOT NULL DEFAULT '',
  `course_code` varchar(10) NOT NULL DEFAULT '',
  `course_name` varchar(75) NOT NULL DEFAULT '',
  `teacher_id` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table cou_d5
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cou_d5`;

CREATE TABLE `cou_d5` (
  `course_id` varchar(12) NOT NULL DEFAULT '',
  `school_id` varchar(12) NOT NULL DEFAULT '',
  `period` varchar(8) DEFAULT '',
  `section` varchar(5) NOT NULL DEFAULT '',
  `course_code` varchar(10) NOT NULL DEFAULT '',
  `course_name` varchar(75) NOT NULL DEFAULT '',
  `teacher_id` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table cou_d6
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cou_d6`;

CREATE TABLE `cou_d6` (
  `course_id` varchar(12) NOT NULL DEFAULT '',
  `school_id` varchar(12) NOT NULL DEFAULT '',
  `period` varchar(8) DEFAULT '',
  `section` varchar(5) NOT NULL DEFAULT '',
  `course_code` varchar(10) NOT NULL DEFAULT '',
  `course_name` varchar(75) NOT NULL DEFAULT '',
  `teacher_id` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table cou_m
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cou_m`;

CREATE TABLE `cou_m` (
  `course_id` varchar(12) NOT NULL DEFAULT '',
  `school_id` varchar(12) NOT NULL DEFAULT '',
  `period` varchar(8) DEFAULT '',
  `section` varchar(5) NOT NULL DEFAULT '',
  `course_code` varchar(10) NOT NULL DEFAULT '',
  `course_name` varchar(75) NOT NULL DEFAULT '',
  `teacher_id` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table cou_w
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cou_w`;

CREATE TABLE `cou_w` (
  `course_id` varchar(12) NOT NULL DEFAULT '',
  `school_id` varchar(12) NOT NULL DEFAULT '',
  `period` varchar(8) DEFAULT '',
  `section` varchar(5) NOT NULL DEFAULT '',
  `course_code` varchar(10) NOT NULL DEFAULT '',
  `course_name` varchar(75) NOT NULL DEFAULT '',
  `teacher_id` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table enr_d0
# ------------------------------------------------------------

DROP TABLE IF EXISTS `enr_d0`;

CREATE TABLE `enr_d0` (
  `enrollment_id` varchar(12) NOT NULL DEFAULT '',
  `course_id` varchar(12) NOT NULL DEFAULT '',
  `student_id` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`enrollment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table enr_d1
# ------------------------------------------------------------

DROP TABLE IF EXISTS `enr_d1`;

CREATE TABLE `enr_d1` (
  `enrollment_id` varchar(12) NOT NULL DEFAULT '',
  `course_id` varchar(12) NOT NULL DEFAULT '',
  `student_id` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`enrollment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table enr_d2
# ------------------------------------------------------------

DROP TABLE IF EXISTS `enr_d2`;

CREATE TABLE `enr_d2` (
  `enrollment_id` varchar(12) NOT NULL DEFAULT '',
  `course_id` varchar(12) NOT NULL DEFAULT '',
  `student_id` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`enrollment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table enr_d3
# ------------------------------------------------------------

DROP TABLE IF EXISTS `enr_d3`;

CREATE TABLE `enr_d3` (
  `enrollment_id` varchar(12) NOT NULL DEFAULT '',
  `course_id` varchar(12) NOT NULL DEFAULT '',
  `student_id` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`enrollment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table enr_d4
# ------------------------------------------------------------

DROP TABLE IF EXISTS `enr_d4`;

CREATE TABLE `enr_d4` (
  `enrollment_id` varchar(12) NOT NULL DEFAULT '',
  `course_id` varchar(12) NOT NULL DEFAULT '',
  `student_id` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`enrollment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table enr_d5
# ------------------------------------------------------------

DROP TABLE IF EXISTS `enr_d5`;

CREATE TABLE `enr_d5` (
  `enrollment_id` varchar(12) NOT NULL DEFAULT '',
  `course_id` varchar(12) NOT NULL DEFAULT '',
  `student_id` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`enrollment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table enr_d6
# ------------------------------------------------------------

DROP TABLE IF EXISTS `enr_d6`;

CREATE TABLE `enr_d6` (
  `enrollment_id` varchar(12) NOT NULL DEFAULT '',
  `course_id` varchar(12) NOT NULL DEFAULT '',
  `student_id` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`enrollment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table enr_m
# ------------------------------------------------------------

DROP TABLE IF EXISTS `enr_m`;

CREATE TABLE `enr_m` (
  `enrollment_id` varchar(12) NOT NULL DEFAULT '',
  `course_id` varchar(12) NOT NULL DEFAULT '',
  `student_id` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`enrollment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table enr_w
# ------------------------------------------------------------

DROP TABLE IF EXISTS `enr_w`;

CREATE TABLE `enr_w` (
  `enrollment_id` varchar(12) NOT NULL DEFAULT '',
  `course_id` varchar(12) NOT NULL DEFAULT '',
  `student_id` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`enrollment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table lu_config
# ------------------------------------------------------------

DROP TABLE IF EXISTS `lu_config`;

CREATE TABLE `lu_config` (
  `key` varchar(75) NOT NULL DEFAULT '',
  `value` varchar(150) DEFAULT NULL,
  KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table lu_schools
# ------------------------------------------------------------

DROP TABLE IF EXISTS `lu_schools`;

CREATE TABLE `lu_schools` (
  `school_id` varchar(12) NOT NULL DEFAULT '',
  `abbreviation` varchar(5) NOT NULL DEFAULT '',
  `name` varchar(125) NOT NULL DEFAULT '',
  `street` varchar(75) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`school_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table stf_d0
# ------------------------------------------------------------

DROP TABLE IF EXISTS `stf_d0`;

CREATE TABLE `stf_d0` (
  `staff_id` varchar(12) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(30) DEFAULT '',
  `last_name` varchar(75) NOT NULL DEFAULT '',
  `job_title` varchar(30) DEFAULT NULL,
  `school_id` varchar(12) NOT NULL DEFAULT '',
  `birthdate` date DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `street` varchar(75) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `certnumber` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table stf_d1
# ------------------------------------------------------------

DROP TABLE IF EXISTS `stf_d1`;

CREATE TABLE `stf_d1` (
  `staff_id` varchar(12) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(30) DEFAULT '',
  `last_name` varchar(75) NOT NULL DEFAULT '',
  `job_title` varchar(30) DEFAULT NULL,
  `school_id` varchar(12) NOT NULL DEFAULT '',
  `birthdate` date DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `street` varchar(75) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `certnumber` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table stf_d2
# ------------------------------------------------------------

DROP TABLE IF EXISTS `stf_d2`;

CREATE TABLE `stf_d2` (
  `staff_id` varchar(12) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(30) DEFAULT '',
  `last_name` varchar(75) NOT NULL DEFAULT '',
  `job_title` varchar(30) DEFAULT NULL,
  `school_id` varchar(12) NOT NULL DEFAULT '',
  `birthdate` date DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `street` varchar(75) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `certnumber` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table stf_d3
# ------------------------------------------------------------

DROP TABLE IF EXISTS `stf_d3`;

CREATE TABLE `stf_d3` (
  `staff_id` varchar(12) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(30) DEFAULT '',
  `last_name` varchar(75) NOT NULL DEFAULT '',
  `job_title` varchar(30) DEFAULT NULL,
  `school_id` varchar(12) NOT NULL DEFAULT '',
  `birthdate` date DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `street` varchar(75) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `certnumber` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table stf_d4
# ------------------------------------------------------------

DROP TABLE IF EXISTS `stf_d4`;

CREATE TABLE `stf_d4` (
  `staff_id` varchar(12) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(30) DEFAULT '',
  `last_name` varchar(75) NOT NULL DEFAULT '',
  `job_title` varchar(30) DEFAULT NULL,
  `school_id` varchar(12) NOT NULL DEFAULT '',
  `birthdate` date DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `street` varchar(75) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `certnumber` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table stf_d5
# ------------------------------------------------------------

DROP TABLE IF EXISTS `stf_d5`;

CREATE TABLE `stf_d5` (
  `staff_id` varchar(12) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(30) DEFAULT '',
  `last_name` varchar(75) NOT NULL DEFAULT '',
  `job_title` varchar(30) DEFAULT NULL,
  `school_id` varchar(12) NOT NULL DEFAULT '',
  `birthdate` date DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `street` varchar(75) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `certnumber` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table stf_d6
# ------------------------------------------------------------

DROP TABLE IF EXISTS `stf_d6`;

CREATE TABLE `stf_d6` (
  `staff_id` varchar(12) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(30) DEFAULT '',
  `last_name` varchar(75) NOT NULL DEFAULT '',
  `job_title` varchar(30) DEFAULT NULL,
  `school_id` varchar(12) NOT NULL DEFAULT '',
  `birthdate` date DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `street` varchar(75) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `certnumber` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table stf_m
# ------------------------------------------------------------

DROP TABLE IF EXISTS `stf_m`;

CREATE TABLE `stf_m` (
  `staff_id` varchar(12) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(30) DEFAULT '',
  `last_name` varchar(75) NOT NULL DEFAULT '',
  `job_title` varchar(30) DEFAULT NULL,
  `school_id` varchar(12) NOT NULL DEFAULT '',
  `birthdate` date DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `street` varchar(75) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `certnumber` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table stf_w
# ------------------------------------------------------------

DROP TABLE IF EXISTS `stf_w`;

CREATE TABLE `stf_w` (
  `staff_id` varchar(12) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(30) DEFAULT '',
  `last_name` varchar(75) NOT NULL DEFAULT '',
  `job_title` varchar(30) DEFAULT NULL,
  `school_id` varchar(12) NOT NULL DEFAULT '',
  `birthdate` date DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `street` varchar(75) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `certnumber` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table stu_d0
# ------------------------------------------------------------

DROP TABLE IF EXISTS `stu_d0`;

CREATE TABLE `stu_d0` (
  `student_id` varchar(12) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(30) DEFAULT '',
  `last_name` varchar(75) NOT NULL DEFAULT '',
  `grade` char(2) DEFAULT NULL,
  `school_id` varchar(12) NOT NULL DEFAULT '',
  `phone` varchar(20) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `street` varchar(75) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `guardian_name` varchar(100) DEFAULT NULL,
  `state_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table stu_d1
# ------------------------------------------------------------

DROP TABLE IF EXISTS `stu_d1`;

CREATE TABLE `stu_d1` (
  `student_id` varchar(12) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(30) DEFAULT '',
  `last_name` varchar(75) NOT NULL DEFAULT '',
  `grade` char(2) DEFAULT NULL,
  `school_id` varchar(12) NOT NULL DEFAULT '',
  `phone` varchar(20) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `street` varchar(75) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `guardian_name` varchar(100) DEFAULT NULL,
  `state_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table stu_d2
# ------------------------------------------------------------

DROP TABLE IF EXISTS `stu_d2`;

CREATE TABLE `stu_d2` (
  `student_id` varchar(12) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(30) DEFAULT '',
  `last_name` varchar(75) NOT NULL DEFAULT '',
  `grade` char(2) DEFAULT NULL,
  `school_id` varchar(12) NOT NULL DEFAULT '',
  `phone` varchar(20) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `street` varchar(75) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `guardian_name` varchar(100) DEFAULT NULL,
  `state_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table stu_d3
# ------------------------------------------------------------

DROP TABLE IF EXISTS `stu_d3`;

CREATE TABLE `stu_d3` (
  `student_id` varchar(12) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(30) DEFAULT '',
  `last_name` varchar(75) NOT NULL DEFAULT '',
  `grade` char(2) DEFAULT NULL,
  `school_id` varchar(12) NOT NULL DEFAULT '',
  `phone` varchar(20) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `street` varchar(75) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `guardian_name` varchar(100) DEFAULT NULL,
  `state_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table stu_d4
# ------------------------------------------------------------

DROP TABLE IF EXISTS `stu_d4`;

CREATE TABLE `stu_d4` (
  `student_id` varchar(12) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(30) DEFAULT '',
  `last_name` varchar(75) NOT NULL DEFAULT '',
  `grade` char(2) DEFAULT NULL,
  `school_id` varchar(12) NOT NULL DEFAULT '',
  `phone` varchar(20) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `street` varchar(75) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `guardian_name` varchar(100) DEFAULT NULL,
  `state_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table stu_d5
# ------------------------------------------------------------

DROP TABLE IF EXISTS `stu_d5`;

CREATE TABLE `stu_d5` (
  `student_id` varchar(12) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(30) DEFAULT '',
  `last_name` varchar(75) NOT NULL DEFAULT '',
  `grade` char(2) DEFAULT NULL,
  `school_id` varchar(12) NOT NULL DEFAULT '',
  `phone` varchar(20) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `street` varchar(75) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `guardian_name` varchar(100) DEFAULT NULL,
  `state_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table stu_d6
# ------------------------------------------------------------

DROP TABLE IF EXISTS `stu_d6`;

CREATE TABLE `stu_d6` (
  `student_id` varchar(12) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(30) DEFAULT '',
  `last_name` varchar(75) NOT NULL DEFAULT '',
  `grade` char(2) DEFAULT NULL,
  `school_id` varchar(12) NOT NULL DEFAULT '',
  `phone` varchar(20) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `street` varchar(75) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `guardian_name` varchar(100) DEFAULT NULL,
  `state_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table stu_m
# ------------------------------------------------------------

DROP TABLE IF EXISTS `stu_m`;

CREATE TABLE `stu_m` (
  `student_id` varchar(12) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(30) DEFAULT '',
  `last_name` varchar(75) NOT NULL DEFAULT '',
  `grade` char(2) DEFAULT NULL,
  `school_id` varchar(12) NOT NULL DEFAULT '',
  `phone` varchar(20) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `street` varchar(75) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `guardian_name` varchar(100) DEFAULT NULL,
  `state_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table stu_w
# ------------------------------------------------------------

DROP TABLE IF EXISTS `stu_w`;

CREATE TABLE `stu_w` (
  `student_id` varchar(12) NOT NULL DEFAULT '',
  `first_name` varchar(50) NOT NULL DEFAULT '',
  `middle_name` varchar(30) DEFAULT '',
  `last_name` varchar(75) NOT NULL DEFAULT '',
  `grade` char(2) DEFAULT NULL,
  `school_id` varchar(12) NOT NULL DEFAULT '',
  `phone` varchar(20) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `street` varchar(75) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `guardian_name` varchar(100) DEFAULT NULL,
  `state_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table v_cou_d_add
# ------------------------------------------------------------

DROP VIEW IF EXISTS `v_cou_d_add`;

CREATE TABLE `v_cou_d_add` (
   `course_id` VARCHAR(12) NOT NULL DEFAULT '',
   `school_id` VARCHAR(12) NOT NULL DEFAULT '',
   `period` VARCHAR(8) DEFAULT '',
   `section` VARCHAR(5) NOT NULL DEFAULT '',
   `course_code` VARCHAR(10) NOT NULL DEFAULT '',
   `course_name` VARCHAR(75) NOT NULL DEFAULT '',
   `teacher_id` VARCHAR(12) NOT NULL DEFAULT ''
) ENGINE=MyISAM;



# Dump of table v_cou_d_rem
# ------------------------------------------------------------

DROP VIEW IF EXISTS `v_cou_d_rem`;

CREATE TABLE `v_cou_d_rem` (
   `course_id` VARCHAR(12) NOT NULL DEFAULT '',
   `school_id` VARCHAR(12) NOT NULL DEFAULT '',
   `period` VARCHAR(8) DEFAULT '',
   `section` VARCHAR(5) NOT NULL DEFAULT '',
   `course_code` VARCHAR(10) NOT NULL DEFAULT '',
   `course_name` VARCHAR(75) NOT NULL DEFAULT '',
   `teacher_id` VARCHAR(12) NOT NULL DEFAULT ''
) ENGINE=MyISAM;



# Dump of table v_cou_d_upd
# ------------------------------------------------------------

DROP VIEW IF EXISTS `v_cou_d_upd`;

CREATE TABLE `v_cou_d_upd` (
   `course_id` VARCHAR(12) NOT NULL DEFAULT '',
   `school_id` VARCHAR(12) NOT NULL DEFAULT '',
   `period` VARCHAR(8) DEFAULT '',
   `section` VARCHAR(5) NOT NULL DEFAULT '',
   `course_code` VARCHAR(10) NOT NULL DEFAULT '',
   `course_name` VARCHAR(75) NOT NULL DEFAULT '',
   `teacher_id` VARCHAR(12) NOT NULL DEFAULT ''
) ENGINE=MyISAM;



# Dump of table v_cou_m_add
# ------------------------------------------------------------

DROP VIEW IF EXISTS `v_cou_m_add`;

CREATE TABLE `v_cou_m_add` (
   `course_id` VARCHAR(12) NOT NULL DEFAULT '',
   `school_id` VARCHAR(12) NOT NULL DEFAULT '',
   `period` VARCHAR(8) DEFAULT '',
   `section` VARCHAR(5) NOT NULL DEFAULT '',
   `course_code` VARCHAR(10) NOT NULL DEFAULT '',
   `course_name` VARCHAR(75) NOT NULL DEFAULT '',
   `teacher_id` VARCHAR(12) NOT NULL DEFAULT ''
) ENGINE=MyISAM;



# Dump of table v_cou_m_rem
# ------------------------------------------------------------

DROP VIEW IF EXISTS `v_cou_m_rem`;

CREATE TABLE `v_cou_m_rem` (
   `course_id` VARCHAR(12) NOT NULL DEFAULT '',
   `school_id` VARCHAR(12) NOT NULL DEFAULT '',
   `period` VARCHAR(8) DEFAULT '',
   `section` VARCHAR(5) NOT NULL DEFAULT '',
   `course_code` VARCHAR(10) NOT NULL DEFAULT '',
   `course_name` VARCHAR(75) NOT NULL DEFAULT '',
   `teacher_id` VARCHAR(12) NOT NULL DEFAULT ''
) ENGINE=MyISAM;



# Dump of table v_cou_m_upd
# ------------------------------------------------------------

DROP VIEW IF EXISTS `v_cou_m_upd`;

CREATE TABLE `v_cou_m_upd` (
   `course_id` VARCHAR(12) NOT NULL DEFAULT '',
   `school_id` VARCHAR(12) NOT NULL DEFAULT '',
   `period` VARCHAR(8) DEFAULT '',
   `section` VARCHAR(5) NOT NULL DEFAULT '',
   `course_code` VARCHAR(10) NOT NULL DEFAULT '',
   `course_name` VARCHAR(75) NOT NULL DEFAULT '',
   `teacher_id` VARCHAR(12) NOT NULL DEFAULT ''
) ENGINE=MyISAM;



# Dump of table v_cou_w_add
# ------------------------------------------------------------

DROP VIEW IF EXISTS `v_cou_w_add`;

CREATE TABLE `v_cou_w_add` (
   `course_id` VARCHAR(12) NOT NULL DEFAULT '',
   `school_id` VARCHAR(12) NOT NULL DEFAULT '',
   `period` VARCHAR(8) DEFAULT '',
   `section` VARCHAR(5) NOT NULL DEFAULT '',
   `course_code` VARCHAR(10) NOT NULL DEFAULT '',
   `course_name` VARCHAR(75) NOT NULL DEFAULT '',
   `teacher_id` VARCHAR(12) NOT NULL DEFAULT ''
) ENGINE=MyISAM;



# Dump of table v_cou_w_rem
# ------------------------------------------------------------

DROP VIEW IF EXISTS `v_cou_w_rem`;

CREATE TABLE `v_cou_w_rem` (
   `course_id` VARCHAR(12) NOT NULL DEFAULT '',
   `school_id` VARCHAR(12) NOT NULL DEFAULT '',
   `period` VARCHAR(8) DEFAULT '',
   `section` VARCHAR(5) NOT NULL DEFAULT '',
   `course_code` VARCHAR(10) NOT NULL DEFAULT '',
   `course_name` VARCHAR(75) NOT NULL DEFAULT '',
   `teacher_id` VARCHAR(12) NOT NULL DEFAULT ''
) ENGINE=MyISAM;



# Dump of table v_cou_w_upd
# ------------------------------------------------------------

DROP VIEW IF EXISTS `v_cou_w_upd`;

CREATE TABLE `v_cou_w_upd` (
   `course_id` VARCHAR(12) NOT NULL DEFAULT '',
   `school_id` VARCHAR(12) NOT NULL DEFAULT '',
   `period` VARCHAR(8) DEFAULT '',
   `section` VARCHAR(5) NOT NULL DEFAULT '',
   `course_code` VARCHAR(10) NOT NULL DEFAULT '',
   `course_name` VARCHAR(75) NOT NULL DEFAULT '',
   `teacher_id` VARCHAR(12) NOT NULL DEFAULT ''
) ENGINE=MyISAM;



# Dump of table v_cur_cou
# ------------------------------------------------------------

DROP VIEW IF EXISTS `v_cur_cou`;

CREATE TABLE `v_cur_cou` (
   `course_id` VARCHAR(12) NOT NULL DEFAULT '',
   `school_id` VARCHAR(12) NOT NULL DEFAULT '',
   `period` VARCHAR(8) DEFAULT '',
   `section` VARCHAR(5) NOT NULL DEFAULT '',
   `course_code` VARCHAR(10) NOT NULL DEFAULT '',
   `course_name` VARCHAR(75) NOT NULL DEFAULT '',
   `teacher_id` VARCHAR(12) NOT NULL DEFAULT ''
) ENGINE=MyISAM;



# Dump of table v_cur_enr
# ------------------------------------------------------------

DROP VIEW IF EXISTS `v_cur_enr`;

CREATE TABLE `v_cur_enr` (
   `enrollment_id` VARCHAR(12) NOT NULL DEFAULT '',
   `course_id` VARCHAR(12) NOT NULL DEFAULT '',
   `student_id` VARCHAR(12) NOT NULL DEFAULT ''
) ENGINE=MyISAM;



# Dump of table v_cur_stf
# ------------------------------------------------------------

DROP VIEW IF EXISTS `v_cur_stf`;

CREATE TABLE `v_cur_stf` (
   `staff_id` VARCHAR(12) NOT NULL DEFAULT '',
   `first_name` VARCHAR(50) NOT NULL DEFAULT '',
   `middle_name` VARCHAR(30) DEFAULT '',
   `last_name` VARCHAR(75) NOT NULL DEFAULT '',
   `job_title` VARCHAR(30) DEFAULT NULL,
   `school_id` VARCHAR(12) NOT NULL DEFAULT '',
   `birthdate` DATE DEFAULT NULL,
   `phone` VARCHAR(20) DEFAULT NULL,
   `street` VARCHAR(75) DEFAULT NULL,
   `city` VARCHAR(50) DEFAULT NULL,
   `state` CHAR(2) DEFAULT NULL,
   `zip` VARCHAR(10) DEFAULT NULL,
   `username` VARCHAR(20) DEFAULT NULL,
   `password` VARCHAR(100) DEFAULT NULL,
   `email` VARCHAR(100) DEFAULT NULL,
   `gender` CHAR(1) DEFAULT NULL,
   `certnumber` VARCHAR(15) DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table v_cur_stu
# ------------------------------------------------------------

DROP VIEW IF EXISTS `v_cur_stu`;

CREATE TABLE `v_cur_stu` (
   `student_id` VARCHAR(12) NOT NULL DEFAULT '',
   `first_name` VARCHAR(50) NOT NULL DEFAULT '',
   `middle_name` VARCHAR(30) DEFAULT '',
   `last_name` VARCHAR(75) NOT NULL DEFAULT '',
   `grade` CHAR(2) DEFAULT NULL,
   `school_id` VARCHAR(12) NOT NULL DEFAULT '',
   `phone` VARCHAR(20) DEFAULT NULL,
   `birthdate` DATE DEFAULT NULL,
   `street` VARCHAR(75) DEFAULT NULL,
   `city` VARCHAR(50) DEFAULT NULL,
   `state` CHAR(2) DEFAULT NULL,
   `zip` VARCHAR(10) DEFAULT NULL,
   `username` VARCHAR(20) DEFAULT NULL,
   `password` VARCHAR(100) DEFAULT NULL,
   `email` VARCHAR(100) DEFAULT NULL,
   `gender` CHAR(1) DEFAULT NULL,
   `guardian_name` VARCHAR(100) DEFAULT NULL,
   `state_id` VARCHAR(20) DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table v_curr_cou
# ------------------------------------------------------------

DROP VIEW IF EXISTS `v_curr_cou`;

CREATE TABLE `v_curr_cou` (
   `course_id` VARCHAR(12) NOT NULL DEFAULT '',
   `school_id` VARCHAR(12) NOT NULL DEFAULT '',
   `period` VARCHAR(8) DEFAULT '',
   `section` VARCHAR(5) NOT NULL DEFAULT '',
   `course_code` VARCHAR(10) NOT NULL DEFAULT '',
   `course_name` VARCHAR(75) NOT NULL DEFAULT '',
   `teacher_id` VARCHAR(12) NOT NULL DEFAULT ''
) ENGINE=MyISAM;



# Dump of table v_curr_enr
# ------------------------------------------------------------

DROP VIEW IF EXISTS `v_curr_enr`;

CREATE TABLE `v_curr_enr` (
   `enrollment_id` VARCHAR(12) NOT NULL DEFAULT '',
   `course_id` VARCHAR(12) NOT NULL DEFAULT '',
   `student_id` VARCHAR(12) NOT NULL DEFAULT ''
) ENGINE=MyISAM;



# Dump of table v_curr_stf
# ------------------------------------------------------------

DROP VIEW IF EXISTS `v_curr_stf`;

CREATE TABLE `v_curr_stf` (
   `staff_id` VARCHAR(12) NOT NULL DEFAULT '',
   `first_name` VARCHAR(50) NOT NULL DEFAULT '',
   `middle_name` VARCHAR(30) DEFAULT '',
   `last_name` VARCHAR(75) NOT NULL DEFAULT '',
   `job_title` VARCHAR(30) DEFAULT NULL,
   `school_id` VARCHAR(12) NOT NULL DEFAULT '',
   `birthdate` DATE DEFAULT NULL,
   `phone` VARCHAR(20) DEFAULT NULL,
   `street` VARCHAR(75) DEFAULT NULL,
   `city` VARCHAR(50) DEFAULT NULL,
   `state` CHAR(2) DEFAULT NULL,
   `zip` VARCHAR(10) DEFAULT NULL,
   `username` VARCHAR(20) DEFAULT NULL,
   `password` VARCHAR(100) DEFAULT NULL,
   `email` VARCHAR(100) DEFAULT NULL,
   `gender` CHAR(1) DEFAULT NULL,
   `certnumber` VARCHAR(15) DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table v_curr_stu
# ------------------------------------------------------------

DROP VIEW IF EXISTS `v_curr_stu`;

CREATE TABLE `v_curr_stu` (
   `student_id` VARCHAR(12) NOT NULL DEFAULT '',
   `first_name` VARCHAR(50) NOT NULL DEFAULT '',
   `middle_name` VARCHAR(30) DEFAULT '',
   `last_name` VARCHAR(75) NOT NULL DEFAULT '',
   `grade` CHAR(2) DEFAULT NULL,
   `school_id` VARCHAR(12) NOT NULL DEFAULT '',
   `phone` VARCHAR(20) DEFAULT NULL,
   `birthdate` DATE DEFAULT NULL,
   `street` VARCHAR(75) DEFAULT NULL,
   `city` VARCHAR(50) DEFAULT NULL,
   `state` CHAR(2) DEFAULT NULL,
   `zip` VARCHAR(10) DEFAULT NULL,
   `username` VARCHAR(20) DEFAULT NULL,
   `password` VARCHAR(100) DEFAULT NULL,
   `email` VARCHAR(100) DEFAULT NULL,
   `gender` CHAR(1) DEFAULT NULL,
   `guardian_name` VARCHAR(100) DEFAULT NULL,
   `state_id` VARCHAR(20) DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table v_enr_d_add
# ------------------------------------------------------------

DROP VIEW IF EXISTS `v_enr_d_add`;

CREATE TABLE `v_enr_d_add` (
   `enrollment_id` VARCHAR(12) NOT NULL DEFAULT '',
   `course_id` VARCHAR(12) NOT NULL DEFAULT '',
   `student_id` VARCHAR(12) NOT NULL DEFAULT ''
) ENGINE=MyISAM;



# Dump of table v_enr_d_rem
# ------------------------------------------------------------

DROP VIEW IF EXISTS `v_enr_d_rem`;

CREATE TABLE `v_enr_d_rem` (
   `enrollment_id` VARCHAR(12) NOT NULL DEFAULT '',
   `course_id` VARCHAR(12) NOT NULL DEFAULT '',
   `student_id` VARCHAR(12) NOT NULL DEFAULT ''
) ENGINE=MyISAM;



# Dump of table v_enr_m_add
# ------------------------------------------------------------

DROP VIEW IF EXISTS `v_enr_m_add`;

CREATE TABLE `v_enr_m_add` (
   `enrollment_id` VARCHAR(12) NOT NULL DEFAULT '',
   `course_id` VARCHAR(12) NOT NULL DEFAULT '',
   `student_id` VARCHAR(12) NOT NULL DEFAULT ''
) ENGINE=MyISAM;



# Dump of table v_enr_m_rem
# ------------------------------------------------------------

DROP VIEW IF EXISTS `v_enr_m_rem`;

CREATE TABLE `v_enr_m_rem` (
   `enrollment_id` VARCHAR(12) NOT NULL DEFAULT '',
   `course_id` VARCHAR(12) NOT NULL DEFAULT '',
   `student_id` VARCHAR(12) NOT NULL DEFAULT ''
) ENGINE=MyISAM;



# Dump of table v_enr_w_add
# ------------------------------------------------------------

DROP VIEW IF EXISTS `v_enr_w_add`;

CREATE TABLE `v_enr_w_add` (
   `enrollment_id` VARCHAR(12) NOT NULL DEFAULT '',
   `course_id` VARCHAR(12) NOT NULL DEFAULT '',
   `student_id` VARCHAR(12) NOT NULL DEFAULT ''
) ENGINE=MyISAM;



# Dump of table v_enr_w_rem
# ------------------------------------------------------------

DROP VIEW IF EXISTS `v_enr_w_rem`;

CREATE TABLE `v_enr_w_rem` (
   `enrollment_id` VARCHAR(12) NOT NULL DEFAULT '',
   `course_id` VARCHAR(12) NOT NULL DEFAULT '',
   `student_id` VARCHAR(12) NOT NULL DEFAULT ''
) ENGINE=MyISAM;



# Dump of table v_stu_d_add
# ------------------------------------------------------------

DROP VIEW IF EXISTS `v_stu_d_add`;

CREATE TABLE `v_stu_d_add` (
   `student_id` VARCHAR(12) NOT NULL DEFAULT '',
   `first_name` VARCHAR(50) NOT NULL DEFAULT '',
   `middle_name` VARCHAR(30) DEFAULT '',
   `last_name` VARCHAR(75) NOT NULL DEFAULT '',
   `grade` CHAR(2) DEFAULT NULL,
   `school_id` VARCHAR(12) NOT NULL DEFAULT '',
   `phone` VARCHAR(20) DEFAULT NULL,
   `birthdate` DATE DEFAULT NULL,
   `street` VARCHAR(75) DEFAULT NULL,
   `city` VARCHAR(50) DEFAULT NULL,
   `state` CHAR(2) DEFAULT NULL,
   `zip` VARCHAR(10) DEFAULT NULL,
   `username` VARCHAR(20) DEFAULT NULL,
   `password` VARCHAR(100) DEFAULT NULL,
   `email` VARCHAR(100) DEFAULT NULL,
   `gender` CHAR(1) DEFAULT NULL,
   `guardian_name` VARCHAR(100) DEFAULT NULL,
   `state_id` VARCHAR(20) DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table v_stu_d_rem
# ------------------------------------------------------------

DROP VIEW IF EXISTS `v_stu_d_rem`;

CREATE TABLE `v_stu_d_rem` (
   `student_id` VARCHAR(12) NOT NULL DEFAULT '',
   `first_name` VARCHAR(50) NOT NULL DEFAULT '',
   `middle_name` VARCHAR(30) DEFAULT '',
   `last_name` VARCHAR(75) NOT NULL DEFAULT '',
   `grade` CHAR(2) DEFAULT NULL,
   `school_id` VARCHAR(12) NOT NULL DEFAULT '',
   `phone` VARCHAR(20) DEFAULT NULL,
   `birthdate` DATE DEFAULT NULL,
   `street` VARCHAR(75) DEFAULT NULL,
   `city` VARCHAR(50) DEFAULT NULL,
   `state` CHAR(2) DEFAULT NULL,
   `zip` VARCHAR(10) DEFAULT NULL,
   `username` VARCHAR(20) DEFAULT NULL,
   `password` VARCHAR(100) DEFAULT NULL,
   `email` VARCHAR(100) DEFAULT NULL,
   `gender` CHAR(1) DEFAULT NULL,
   `guardian_name` VARCHAR(100) DEFAULT NULL,
   `state_id` VARCHAR(20) DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table v_stu_d_upd
# ------------------------------------------------------------

DROP VIEW IF EXISTS `v_stu_d_upd`;

CREATE TABLE `v_stu_d_upd` (
   `student_id` VARCHAR(12) NOT NULL DEFAULT '',
   `first_name` VARCHAR(50) NOT NULL DEFAULT '',
   `middle_name` VARCHAR(30) DEFAULT '',
   `last_name` VARCHAR(75) NOT NULL DEFAULT '',
   `grade` CHAR(2) DEFAULT NULL,
   `school_id` VARCHAR(12) NOT NULL DEFAULT '',
   `phone` VARCHAR(20) DEFAULT NULL,
   `birthdate` DATE DEFAULT NULL,
   `street` VARCHAR(75) DEFAULT NULL,
   `city` VARCHAR(50) DEFAULT NULL,
   `state` CHAR(2) DEFAULT NULL,
   `zip` VARCHAR(10) DEFAULT NULL,
   `username` VARCHAR(20) DEFAULT NULL,
   `password` VARCHAR(100) DEFAULT NULL,
   `email` VARCHAR(100) DEFAULT NULL,
   `gender` CHAR(1) DEFAULT NULL,
   `guardian_name` VARCHAR(100) DEFAULT NULL,
   `state_id` VARCHAR(20) DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table v_stu_m_add
# ------------------------------------------------------------

DROP VIEW IF EXISTS `v_stu_m_add`;

CREATE TABLE `v_stu_m_add` (
   `student_id` VARCHAR(12) NOT NULL DEFAULT '',
   `first_name` VARCHAR(50) NOT NULL DEFAULT '',
   `middle_name` VARCHAR(30) DEFAULT '',
   `last_name` VARCHAR(75) NOT NULL DEFAULT '',
   `grade` CHAR(2) DEFAULT NULL,
   `school_id` VARCHAR(12) NOT NULL DEFAULT '',
   `phone` VARCHAR(20) DEFAULT NULL,
   `birthdate` DATE DEFAULT NULL,
   `street` VARCHAR(75) DEFAULT NULL,
   `city` VARCHAR(50) DEFAULT NULL,
   `state` CHAR(2) DEFAULT NULL,
   `zip` VARCHAR(10) DEFAULT NULL,
   `username` VARCHAR(20) DEFAULT NULL,
   `password` VARCHAR(100) DEFAULT NULL,
   `email` VARCHAR(100) DEFAULT NULL,
   `gender` CHAR(1) DEFAULT NULL,
   `guardian_name` VARCHAR(100) DEFAULT NULL,
   `state_id` VARCHAR(20) DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table v_stu_m_rem
# ------------------------------------------------------------

DROP VIEW IF EXISTS `v_stu_m_rem`;

CREATE TABLE `v_stu_m_rem` (
   `student_id` VARCHAR(12) NOT NULL DEFAULT '',
   `first_name` VARCHAR(50) NOT NULL DEFAULT '',
   `middle_name` VARCHAR(30) DEFAULT '',
   `last_name` VARCHAR(75) NOT NULL DEFAULT '',
   `grade` CHAR(2) DEFAULT NULL,
   `school_id` VARCHAR(12) NOT NULL DEFAULT '',
   `phone` VARCHAR(20) DEFAULT NULL,
   `birthdate` DATE DEFAULT NULL,
   `street` VARCHAR(75) DEFAULT NULL,
   `city` VARCHAR(50) DEFAULT NULL,
   `state` CHAR(2) DEFAULT NULL,
   `zip` VARCHAR(10) DEFAULT NULL,
   `username` VARCHAR(20) DEFAULT NULL,
   `password` VARCHAR(100) DEFAULT NULL,
   `email` VARCHAR(100) DEFAULT NULL,
   `gender` CHAR(1) DEFAULT NULL,
   `guardian_name` VARCHAR(100) DEFAULT NULL,
   `state_id` VARCHAR(20) DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table v_stu_m_upd
# ------------------------------------------------------------

DROP VIEW IF EXISTS `v_stu_m_upd`;

CREATE TABLE `v_stu_m_upd` (
   `student_id` VARCHAR(12) NOT NULL DEFAULT '',
   `first_name` VARCHAR(50) NOT NULL DEFAULT '',
   `middle_name` VARCHAR(30) DEFAULT '',
   `last_name` VARCHAR(75) NOT NULL DEFAULT '',
   `grade` CHAR(2) DEFAULT NULL,
   `school_id` VARCHAR(12) NOT NULL DEFAULT '',
   `phone` VARCHAR(20) DEFAULT NULL,
   `birthdate` DATE DEFAULT NULL,
   `street` VARCHAR(75) DEFAULT NULL,
   `city` VARCHAR(50) DEFAULT NULL,
   `state` CHAR(2) DEFAULT NULL,
   `zip` VARCHAR(10) DEFAULT NULL,
   `username` VARCHAR(20) DEFAULT NULL,
   `password` VARCHAR(100) DEFAULT NULL,
   `email` VARCHAR(100) DEFAULT NULL,
   `gender` CHAR(1) DEFAULT NULL,
   `guardian_name` VARCHAR(100) DEFAULT NULL,
   `state_id` VARCHAR(20) DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table v_stu_w_add
# ------------------------------------------------------------

DROP VIEW IF EXISTS `v_stu_w_add`;

CREATE TABLE `v_stu_w_add` (
   `student_id` VARCHAR(12) NOT NULL DEFAULT '',
   `first_name` VARCHAR(50) NOT NULL DEFAULT '',
   `middle_name` VARCHAR(30) DEFAULT '',
   `last_name` VARCHAR(75) NOT NULL DEFAULT '',
   `grade` CHAR(2) DEFAULT NULL,
   `school_id` VARCHAR(12) NOT NULL DEFAULT '',
   `phone` VARCHAR(20) DEFAULT NULL,
   `birthdate` DATE DEFAULT NULL,
   `street` VARCHAR(75) DEFAULT NULL,
   `city` VARCHAR(50) DEFAULT NULL,
   `state` CHAR(2) DEFAULT NULL,
   `zip` VARCHAR(10) DEFAULT NULL,
   `username` VARCHAR(20) DEFAULT NULL,
   `password` VARCHAR(100) DEFAULT NULL,
   `email` VARCHAR(100) DEFAULT NULL,
   `gender` CHAR(1) DEFAULT NULL,
   `guardian_name` VARCHAR(100) DEFAULT NULL,
   `state_id` VARCHAR(20) DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table v_stu_w_rem
# ------------------------------------------------------------

DROP VIEW IF EXISTS `v_stu_w_rem`;

CREATE TABLE `v_stu_w_rem` (
   `student_id` VARCHAR(12) NOT NULL DEFAULT '',
   `first_name` VARCHAR(50) NOT NULL DEFAULT '',
   `middle_name` VARCHAR(30) DEFAULT '',
   `last_name` VARCHAR(75) NOT NULL DEFAULT '',
   `grade` CHAR(2) DEFAULT NULL,
   `school_id` VARCHAR(12) NOT NULL DEFAULT '',
   `phone` VARCHAR(20) DEFAULT NULL,
   `birthdate` DATE DEFAULT NULL,
   `street` VARCHAR(75) DEFAULT NULL,
   `city` VARCHAR(50) DEFAULT NULL,
   `state` CHAR(2) DEFAULT NULL,
   `zip` VARCHAR(10) DEFAULT NULL,
   `username` VARCHAR(20) DEFAULT NULL,
   `password` VARCHAR(100) DEFAULT NULL,
   `email` VARCHAR(100) DEFAULT NULL,
   `gender` CHAR(1) DEFAULT NULL,
   `guardian_name` VARCHAR(100) DEFAULT NULL,
   `state_id` VARCHAR(20) DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table v_stu_w_upd
# ------------------------------------------------------------

DROP VIEW IF EXISTS `v_stu_w_upd`;

CREATE TABLE `v_stu_w_upd` (
   `student_id` VARCHAR(12) NOT NULL DEFAULT '',
   `first_name` VARCHAR(50) NOT NULL DEFAULT '',
   `middle_name` VARCHAR(30) DEFAULT '',
   `last_name` VARCHAR(75) NOT NULL DEFAULT '',
   `grade` CHAR(2) DEFAULT NULL,
   `school_id` VARCHAR(12) NOT NULL DEFAULT '',
   `phone` VARCHAR(20) DEFAULT NULL,
   `birthdate` DATE DEFAULT NULL,
   `street` VARCHAR(75) DEFAULT NULL,
   `city` VARCHAR(50) DEFAULT NULL,
   `state` CHAR(2) DEFAULT NULL,
   `zip` VARCHAR(10) DEFAULT NULL,
   `username` VARCHAR(20) DEFAULT NULL,
   `password` VARCHAR(100) DEFAULT NULL,
   `email` VARCHAR(100) DEFAULT NULL,
   `gender` CHAR(1) DEFAULT NULL,
   `guardian_name` VARCHAR(100) DEFAULT NULL,
   `state_id` VARCHAR(20) DEFAULT NULL
) ENGINE=MyISAM;





# Replace placeholder table for v_stu_m_rem with correct view syntax
# ------------------------------------------------------------

DROP TABLE `v_stu_m_rem`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_stu_m_rem`
AS select
   `m`.`student_id` AS `student_id`,
   `m`.`first_name` AS `first_name`,
   `m`.`middle_name` AS `middle_name`,
   `m`.`last_name` AS `last_name`,
   `m`.`grade` AS `grade`,
   `m`.`school_id` AS `school_id`,
   `m`.`phone` AS `phone`,
   `m`.`birthdate` AS `birthdate`,
   `m`.`street` AS `street`,
   `m`.`city` AS `city`,
   `m`.`state` AS `state`,
   `m`.`zip` AS `zip`,
   `m`.`username` AS `username`,
   `m`.`password` AS `password`,
   `m`.`email` AS `email`,
   `m`.`gender` AS `gender`,
   `m`.`guardian_name` AS `guardian_name`,
   `m`.`state_id` AS `state_id`
from (`stu_m` `m` left join `stu_d0` `d` on((`m`.`student_id` = `d`.`student_id`))) where isnull(`d`.`student_id`);


# Replace placeholder table for v_stu_w_rem with correct view syntax
# ------------------------------------------------------------

DROP TABLE `v_stu_w_rem`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_stu_w_rem`
AS select
   `w`.`student_id` AS `student_id`,
   `w`.`first_name` AS `first_name`,
   `w`.`middle_name` AS `middle_name`,
   `w`.`last_name` AS `last_name`,
   `w`.`grade` AS `grade`,
   `w`.`school_id` AS `school_id`,
   `w`.`phone` AS `phone`,
   `w`.`birthdate` AS `birthdate`,
   `w`.`street` AS `street`,
   `w`.`city` AS `city`,
   `w`.`state` AS `state`,
   `w`.`zip` AS `zip`,
   `w`.`username` AS `username`,
   `w`.`password` AS `password`,
   `w`.`email` AS `email`,
   `w`.`gender` AS `gender`,
   `w`.`guardian_name` AS `guardian_name`,
   `w`.`state_id` AS `state_id`
from (`stu_w` `w` left join `stu_d0` `d` on((`w`.`student_id` = `d`.`student_id`))) where isnull(`d`.`student_id`);


# Replace placeholder table for v_cou_m_add with correct view syntax
# ------------------------------------------------------------

DROP TABLE `v_cou_m_add`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_cou_m_add`
AS select
   `d0`.`course_id` AS `course_id`,
   `d0`.`school_id` AS `school_id`,
   `d0`.`period` AS `period`,
   `d0`.`section` AS `section`,
   `d0`.`course_code` AS `course_code`,
   `d0`.`course_name` AS `course_name`,
   `d0`.`teacher_id` AS `teacher_id`
from (`cou_d0` `d0` left join `cou_m` `m` on((`d0`.`course_id` = `m`.`course_id`))) where isnull(`m`.`course_id`);


# Replace placeholder table for v_cou_w_add with correct view syntax
# ------------------------------------------------------------

DROP TABLE `v_cou_w_add`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_cou_w_add`
AS select
   `d0`.`course_id` AS `course_id`,
   `d0`.`school_id` AS `school_id`,
   `d0`.`period` AS `period`,
   `d0`.`section` AS `section`,
   `d0`.`course_code` AS `course_code`,
   `d0`.`course_name` AS `course_name`,
   `d0`.`teacher_id` AS `teacher_id`
from (`cou_d0` `d0` left join `cou_w` `w` on((`d0`.`course_id` = `w`.`course_id`))) where isnull(`w`.`course_id`);


# Replace placeholder table for v_cur_cou with correct view syntax
# ------------------------------------------------------------

DROP TABLE `v_cur_cou`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_cur_cou`
AS select
   `cou_d0`.`course_id` AS `course_id`,
   `cou_d0`.`school_id` AS `school_id`,
   `cou_d0`.`period` AS `period`,
   `cou_d0`.`section` AS `section`,
   `cou_d0`.`course_code` AS `course_code`,
   `cou_d0`.`course_name` AS `course_name`,
   `cou_d0`.`teacher_id` AS `teacher_id`
from `cou_d0`;


# Replace placeholder table for v_enr_d_add with correct view syntax
# ------------------------------------------------------------

DROP TABLE `v_enr_d_add`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_enr_d_add`
AS select
   `d0`.`enrollment_id` AS `enrollment_id`,
   `d0`.`course_id` AS `course_id`,
   `d0`.`student_id` AS `student_id`
from (`enr_d0` `d0` left join `enr_d1` `d1` on((`d0`.`enrollment_id` = `d1`.`enrollment_id`))) where isnull(`d1`.`enrollment_id`);


# Replace placeholder table for v_stu_d_upd with correct view syntax
# ------------------------------------------------------------

DROP TABLE `v_stu_d_upd`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_stu_d_upd`
AS select
   `d0`.`student_id` AS `student_id`,
   `d0`.`first_name` AS `first_name`,
   `d0`.`middle_name` AS `middle_name`,
   `d0`.`last_name` AS `last_name`,
   `d0`.`grade` AS `grade`,
   `d0`.`school_id` AS `school_id`,
   `d0`.`phone` AS `phone`,
   `d0`.`birthdate` AS `birthdate`,
   `d0`.`street` AS `street`,
   `d0`.`city` AS `city`,
   `d0`.`state` AS `state`,
   `d0`.`zip` AS `zip`,
   `d0`.`username` AS `username`,
   `d0`.`password` AS `password`,
   `d0`.`email` AS `email`,
   `d0`.`gender` AS `gender`,
   `d0`.`guardian_name` AS `guardian_name`,
   `d0`.`state_id` AS `state_id`
from (`stu_d0` `d0` join `stu_d1` `d1` on((`d0`.`student_id` = `d1`.`student_id`)))
where ((`d0`.`first_name` <> `d1`.`first_name`) or (`d0`.`middle_name` <> `d1`.`middle_name`) or (`d0`.`last_name` <> `d1`.`last_name`) or (`d0`.`grade` <> `d1`.`grade`) or (`d0`.`school_id` <> `d1`.`school_id`) or (`d0`.`phone` <> `d1`.`phone`) or (`d0`.`birthdate` <> `d1`.`birthdate`) or (`d0`.`street` <> `d1`.`street`) or (`d0`.`city` <> `d1`.`city`) or (`d0`.`state` <> `d1`.`state`) or (`d0`.`zip` <> `d1`.`zip`) or (`d0`.`gender` <> `d1`.`gender`) or (`d0`.`guardian_name` <> `d1`.`guardian_name`) or (`d0`.`state_id` <> `d1`.`state_id`));


# Replace placeholder table for v_cur_stf with correct view syntax
# ------------------------------------------------------------

DROP TABLE `v_cur_stf`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_cur_stf`
AS select
   `stf_d0`.`staff_id` AS `staff_id`,
   `stf_d0`.`first_name` AS `first_name`,
   `stf_d0`.`middle_name` AS `middle_name`,
   `stf_d0`.`last_name` AS `last_name`,
   `stf_d0`.`job_title` AS `job_title`,
   `stf_d0`.`school_id` AS `school_id`,
   `stf_d0`.`birthdate` AS `birthdate`,
   `stf_d0`.`phone` AS `phone`,
   `stf_d0`.`street` AS `street`,
   `stf_d0`.`city` AS `city`,
   `stf_d0`.`state` AS `state`,
   `stf_d0`.`zip` AS `zip`,
   `stf_d0`.`username` AS `username`,
   `stf_d0`.`password` AS `password`,
   `stf_d0`.`email` AS `email`,
   `stf_d0`.`gender` AS `gender`,
   `stf_d0`.`certnumber` AS `certnumber`
from `stf_d0`;


# Replace placeholder table for v_enr_m_add with correct view syntax
# ------------------------------------------------------------

DROP TABLE `v_enr_m_add`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_enr_m_add`
AS select
   `d0`.`enrollment_id` AS `enrollment_id`,
   `d0`.`course_id` AS `course_id`,
   `d0`.`student_id` AS `student_id`
from (`enr_d0` `d0` left join `enr_m` `m` on((`d0`.`enrollment_id` = `m`.`enrollment_id`))) where isnull(`m`.`enrollment_id`);


# Replace placeholder table for v_cou_d_rem with correct view syntax
# ------------------------------------------------------------

DROP TABLE `v_cou_d_rem`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_cou_d_rem`
AS select
   `d1`.`course_id` AS `course_id`,
   `d1`.`school_id` AS `school_id`,
   `d1`.`period` AS `period`,
   `d1`.`section` AS `section`,
   `d1`.`course_code` AS `course_code`,
   `d1`.`course_name` AS `course_name`,
   `d1`.`teacher_id` AS `teacher_id`
from (`cou_d1` `d1` left join `cou_d0` `d0` on((`d1`.`course_id` = `d0`.`course_id`))) where isnull(`d0`.`course_id`);


# Replace placeholder table for v_enr_w_add with correct view syntax
# ------------------------------------------------------------

DROP TABLE `v_enr_w_add`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_enr_w_add`
AS select
   `d0`.`enrollment_id` AS `enrollment_id`,
   `d0`.`course_id` AS `course_id`,
   `d0`.`student_id` AS `student_id`
from (`enr_d0` `d0` left join `enr_w` `w` on((`d0`.`enrollment_id` = `w`.`enrollment_id`))) where isnull(`w`.`enrollment_id`);


# Replace placeholder table for v_stu_m_upd with correct view syntax
# ------------------------------------------------------------

DROP TABLE `v_stu_m_upd`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_stu_m_upd`
AS select
   `d0`.`student_id` AS `student_id`,
   `d0`.`first_name` AS `first_name`,
   `d0`.`middle_name` AS `middle_name`,
   `d0`.`last_name` AS `last_name`,
   `d0`.`grade` AS `grade`,
   `d0`.`school_id` AS `school_id`,
   `d0`.`phone` AS `phone`,
   `d0`.`birthdate` AS `birthdate`,
   `d0`.`street` AS `street`,
   `d0`.`city` AS `city`,
   `d0`.`state` AS `state`,
   `d0`.`zip` AS `zip`,
   `d0`.`username` AS `username`,
   `d0`.`password` AS `password`,
   `d0`.`email` AS `email`,
   `d0`.`gender` AS `gender`,
   `d0`.`guardian_name` AS `guardian_name`,
   `d0`.`state_id` AS `state_id`
from (`stu_d0` `d0` join `stu_m` `m` on((`d0`.`student_id` = `m`.`student_id`)))
where ((`d0`.`first_name` <> `m`.`first_name`) or (`d0`.`middle_name` <> `m`.`middle_name`) or (`d0`.`last_name` <> `m`.`last_name`) or (`d0`.`grade` <> `m`.`grade`) or (`d0`.`school_id` <> `m`.`school_id`) or (`d0`.`phone` <> `m`.`phone`) or (`d0`.`birthdate` <> `m`.`birthdate`) or (`d0`.`street` <> `m`.`street`) or (`d0`.`city` <> `m`.`city`) or (`d0`.`state` <> `m`.`state`) or (`d0`.`zip` <> `m`.`zip`) or (`d0`.`gender` <> `m`.`gender`) or (`d0`.`guardian_name` <> `m`.`guardian_name`) or (`d0`.`state_id` <> `m`.`state_id`));


# Replace placeholder table for v_stu_w_upd with correct view syntax
# ------------------------------------------------------------

DROP TABLE `v_stu_w_upd`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_stu_w_upd`
AS select
   `d0`.`student_id` AS `student_id`,
   `d0`.`first_name` AS `first_name`,
   `d0`.`middle_name` AS `middle_name`,
   `d0`.`last_name` AS `last_name`,
   `d0`.`grade` AS `grade`,
   `d0`.`school_id` AS `school_id`,
   `d0`.`phone` AS `phone`,
   `d0`.`birthdate` AS `birthdate`,
   `d0`.`street` AS `street`,
   `d0`.`city` AS `city`,
   `d0`.`state` AS `state`,
   `d0`.`zip` AS `zip`,
   `d0`.`username` AS `username`,
   `d0`.`password` AS `password`,
   `d0`.`email` AS `email`,
   `d0`.`gender` AS `gender`,
   `d0`.`guardian_name` AS `guardian_name`,
   `d0`.`state_id` AS `state_id`
from (`stu_d0` `d0` join `stu_w` `w` on((`d0`.`student_id` = `w`.`student_id`)))
where ((`d0`.`first_name` <> `w`.`first_name`) or (`d0`.`middle_name` <> `w`.`middle_name`) or (`d0`.`last_name` <> `w`.`last_name`) or (`d0`.`grade` <> `w`.`grade`) or (`d0`.`school_id` <> `w`.`school_id`) or (`d0`.`phone` <> `w`.`phone`) or (`d0`.`birthdate` <> `w`.`birthdate`) or (`d0`.`street` <> `w`.`street`) or (`d0`.`city` <> `w`.`city`) or (`d0`.`state` <> `w`.`state`) or (`d0`.`zip` <> `w`.`zip`) or (`d0`.`gender` <> `w`.`gender`) or (`d0`.`guardian_name` <> `w`.`guardian_name`) or (`d0`.`state_id` <> `w`.`state_id`));


# Replace placeholder table for v_cou_m_rem with correct view syntax
# ------------------------------------------------------------

DROP TABLE `v_cou_m_rem`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_cou_m_rem`
AS select
   `m`.`course_id` AS `course_id`,
   `m`.`school_id` AS `school_id`,
   `m`.`period` AS `period`,
   `m`.`section` AS `section`,
   `m`.`course_code` AS `course_code`,
   `m`.`course_name` AS `course_name`,
   `m`.`teacher_id` AS `teacher_id`
from (`cou_m` `m` left join `cou_d0` `d0` on((`m`.`course_id` = `d0`.`course_id`))) where isnull(`d0`.`course_id`);


# Replace placeholder table for v_cou_w_rem with correct view syntax
# ------------------------------------------------------------

DROP TABLE `v_cou_w_rem`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_cou_w_rem`
AS select
   `w`.`course_id` AS `course_id`,
   `w`.`school_id` AS `school_id`,
   `w`.`period` AS `period`,
   `w`.`section` AS `section`,
   `w`.`course_code` AS `course_code`,
   `w`.`course_name` AS `course_name`,
   `w`.`teacher_id` AS `teacher_id`
from (`cou_w` `w` left join `cou_d0` `d0` on((`w`.`course_id` = `d0`.`course_id`))) where isnull(`d0`.`course_id`);


# Replace placeholder table for v_stu_d_add with correct view syntax
# ------------------------------------------------------------

DROP TABLE `v_stu_d_add`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_stu_d_add`
AS select
   `d0`.`student_id` AS `student_id`,
   `d0`.`first_name` AS `first_name`,
   `d0`.`middle_name` AS `middle_name`,
   `d0`.`last_name` AS `last_name`,
   `d0`.`grade` AS `grade`,
   `d0`.`school_id` AS `school_id`,
   `d0`.`phone` AS `phone`,
   `d0`.`birthdate` AS `birthdate`,
   `d0`.`street` AS `street`,
   `d0`.`city` AS `city`,
   `d0`.`state` AS `state`,
   `d0`.`zip` AS `zip`,
   `d0`.`username` AS `username`,
   `d0`.`password` AS `password`,
   `d0`.`email` AS `email`,
   `d0`.`gender` AS `gender`,
   `d0`.`guardian_name` AS `guardian_name`,
   `d0`.`state_id` AS `state_id`
from (`stu_d0` `d0` left join `stu_d1` `d1` on((`d0`.`student_id` = `d1`.`student_id`))) where isnull(`d1`.`student_id`);


# Replace placeholder table for v_enr_d_rem with correct view syntax
# ------------------------------------------------------------

DROP TABLE `v_enr_d_rem`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_enr_d_rem`
AS select
   `d1`.`enrollment_id` AS `enrollment_id`,
   `d1`.`course_id` AS `course_id`,
   `d1`.`student_id` AS `student_id`
from (`enr_d1` `d1` left join `enr_d0` `d` on((`d1`.`enrollment_id` = `d`.`enrollment_id`))) where isnull(`d`.`student_id`);


# Replace placeholder table for v_stu_m_add with correct view syntax
# ------------------------------------------------------------

DROP TABLE `v_stu_m_add`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_stu_m_add`
AS select
   `d0`.`student_id` AS `student_id`,
   `d0`.`first_name` AS `first_name`,
   `d0`.`middle_name` AS `middle_name`,
   `d0`.`last_name` AS `last_name`,
   `d0`.`grade` AS `grade`,
   `d0`.`school_id` AS `school_id`,
   `d0`.`phone` AS `phone`,
   `d0`.`birthdate` AS `birthdate`,
   `d0`.`street` AS `street`,
   `d0`.`city` AS `city`,
   `d0`.`state` AS `state`,
   `d0`.`zip` AS `zip`,
   `d0`.`username` AS `username`,
   `d0`.`password` AS `password`,
   `d0`.`email` AS `email`,
   `d0`.`gender` AS `gender`,
   `d0`.`guardian_name` AS `guardian_name`,
   `d0`.`state_id` AS `state_id`
from (`stu_d0` `d0` left join `stu_m` `m` on((`d0`.`student_id` = `m`.`student_id`))) where isnull(`m`.`student_id`);


# Replace placeholder table for v_stu_w_add with correct view syntax
# ------------------------------------------------------------

DROP TABLE `v_stu_w_add`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_stu_w_add`
AS select
   `d`.`student_id` AS `student_id`,
   `d`.`first_name` AS `first_name`,
   `d`.`middle_name` AS `middle_name`,
   `d`.`last_name` AS `last_name`,
   `d`.`grade` AS `grade`,
   `d`.`school_id` AS `school_id`,
   `d`.`phone` AS `phone`,
   `d`.`birthdate` AS `birthdate`,
   `d`.`street` AS `street`,
   `d`.`city` AS `city`,
   `d`.`state` AS `state`,
   `d`.`zip` AS `zip`,
   `d`.`username` AS `username`,
   `d`.`password` AS `password`,
   `d`.`email` AS `email`,
   `d`.`gender` AS `gender`,
   `d`.`guardian_name` AS `guardian_name`,
   `d`.`state_id` AS `state_id`
from (`stu_d0` `d` left join `stu_w` `w` on((`d`.`student_id` = `w`.`student_id`))) where isnull(`w`.`student_id`);


# Replace placeholder table for v_enr_m_rem with correct view syntax
# ------------------------------------------------------------

DROP TABLE `v_enr_m_rem`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_enr_m_rem`
AS select
   `m`.`enrollment_id` AS `enrollment_id`,
   `m`.`course_id` AS `course_id`,
   `m`.`student_id` AS `student_id`
from (`enr_m` `m` left join `enr_d0` `d` on((`m`.`enrollment_id` = `d`.`enrollment_id`))) where isnull(`d`.`student_id`);


# Replace placeholder table for v_enr_w_rem with correct view syntax
# ------------------------------------------------------------

DROP TABLE `v_enr_w_rem`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_enr_w_rem`
AS select
   `w`.`enrollment_id` AS `enrollment_id`,
   `w`.`course_id` AS `course_id`,
   `w`.`student_id` AS `student_id`
from (`enr_w` `w` left join `enr_d0` `d` on((`w`.`enrollment_id` = `d`.`enrollment_id`))) where isnull(`d`.`student_id`);


# Replace placeholder table for v_cou_d_upd with correct view syntax
# ------------------------------------------------------------

DROP TABLE `v_cou_d_upd`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_cou_d_upd`
AS select
   `d0`.`course_id` AS `course_id`,
   `d0`.`school_id` AS `school_id`,
   `d0`.`period` AS `period`,
   `d0`.`section` AS `section`,
   `d0`.`course_code` AS `course_code`,
   `d0`.`course_name` AS `course_name`,
   `d0`.`teacher_id` AS `teacher_id`
from (`cou_d0` `d0` join `cou_d1` `d1` on((`d0`.`course_id` = `d1`.`course_id`)))
where ((`d0`.`period` <> `d1`.`period`) or (`d0`.`section` <> `d1`.`section`) or (`d0`.`course_code` <> `d1`.`course_code`) or (`d0`.`course_name` <> `d1`.`course_name`) or (`d0`.`teacher_id` <> `d1`.`teacher_id`));


# Replace placeholder table for v_curr_cou with correct view syntax
# ------------------------------------------------------------

DROP TABLE `v_curr_cou`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_curr_cou`
AS select
   `cou_d4`.`course_id` AS `course_id`,
   `cou_d4`.`school_id` AS `school_id`,
   `cou_d4`.`period` AS `period`,
   `cou_d4`.`section` AS `section`,
   `cou_d4`.`course_code` AS `course_code`,
   `cou_d4`.`course_name` AS `course_name`,
   `cou_d4`.`teacher_id` AS `teacher_id`
from `cou_d4`;


# Replace placeholder table for v_curr_enr with correct view syntax
# ------------------------------------------------------------

DROP TABLE `v_curr_enr`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_curr_enr`
AS select
   `enr_d4`.`enrollment_id` AS `enrollment_id`,
   `enr_d4`.`course_id` AS `course_id`,
   `enr_d4`.`student_id` AS `student_id`
from `enr_d4`;


# Replace placeholder table for v_curr_stf with correct view syntax
# ------------------------------------------------------------

DROP TABLE `v_curr_stf`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_curr_stf`
AS select
   `stf_d4`.`staff_id` AS `staff_id`,
   `stf_d4`.`first_name` AS `first_name`,
   `stf_d4`.`middle_name` AS `middle_name`,
   `stf_d4`.`last_name` AS `last_name`,
   `stf_d4`.`job_title` AS `job_title`,
   `stf_d4`.`school_id` AS `school_id`,
   `stf_d4`.`birthdate` AS `birthdate`,
   `stf_d4`.`phone` AS `phone`,
   `stf_d4`.`street` AS `street`,
   `stf_d4`.`city` AS `city`,
   `stf_d4`.`state` AS `state`,
   `stf_d4`.`zip` AS `zip`,
   `stf_d4`.`username` AS `username`,
   `stf_d4`.`password` AS `password`,
   `stf_d4`.`email` AS `email`,
   `stf_d4`.`gender` AS `gender`,
   `stf_d4`.`certnumber` AS `certnumber`
from `stf_d4`;


# Replace placeholder table for v_curr_stu with correct view syntax
# ------------------------------------------------------------

DROP TABLE `v_curr_stu`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_curr_stu`
AS select
   `stu_d4`.`student_id` AS `student_id`,
   `stu_d4`.`first_name` AS `first_name`,
   `stu_d4`.`middle_name` AS `middle_name`,
   `stu_d4`.`last_name` AS `last_name`,
   `stu_d4`.`grade` AS `grade`,
   `stu_d4`.`school_id` AS `school_id`,
   `stu_d4`.`phone` AS `phone`,
   `stu_d4`.`birthdate` AS `birthdate`,
   `stu_d4`.`street` AS `street`,
   `stu_d4`.`city` AS `city`,
   `stu_d4`.`state` AS `state`,
   `stu_d4`.`zip` AS `zip`,
   `stu_d4`.`username` AS `username`,
   `stu_d4`.`password` AS `password`,
   `stu_d4`.`email` AS `email`,
   `stu_d4`.`gender` AS `gender`,
   `stu_d4`.`guardian_name` AS `guardian_name`,
   `stu_d4`.`state_id` AS `state_id`
from `stu_d4`;


# Replace placeholder table for v_cou_m_upd with correct view syntax
# ------------------------------------------------------------

DROP TABLE `v_cou_m_upd`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_cou_m_upd`
AS select
   `d0`.`course_id` AS `course_id`,
   `d0`.`school_id` AS `school_id`,
   `d0`.`period` AS `period`,
   `d0`.`section` AS `section`,
   `d0`.`course_code` AS `course_code`,
   `d0`.`course_name` AS `course_name`,
   `d0`.`teacher_id` AS `teacher_id`
from (`cou_d0` `d0` join `cou_m` `m` on((`d0`.`course_id` = `m`.`course_id`)))
where ((`d0`.`period` <> `m`.`period`) or (`d0`.`section` <> `m`.`section`) or (`d0`.`course_code` <> `m`.`course_code`) or (`d0`.`course_name` <> `m`.`course_name`) or (`d0`.`teacher_id` <> `m`.`teacher_id`));


# Replace placeholder table for v_cou_w_upd with correct view syntax
# ------------------------------------------------------------

DROP TABLE `v_cou_w_upd`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_cou_w_upd`
AS select
   `d0`.`course_id` AS `course_id`,
   `d0`.`school_id` AS `school_id`,
   `d0`.`period` AS `period`,
   `d0`.`section` AS `section`,
   `d0`.`course_code` AS `course_code`,
   `d0`.`course_name` AS `course_name`,
   `d0`.`teacher_id` AS `teacher_id`
from (`cou_d0` `d0` join `cou_w` `w` on((`d0`.`course_id` = `w`.`course_id`)))
where ((`d0`.`period` <> `w`.`period`) or (`d0`.`section` <> `w`.`section`) or (`d0`.`course_code` <> `w`.`course_code`) or (`d0`.`course_name` <> `w`.`course_name`) or (`d0`.`teacher_id` <> `w`.`teacher_id`));


# Replace placeholder table for v_stu_d_rem with correct view syntax
# ------------------------------------------------------------

DROP TABLE `v_stu_d_rem`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_stu_d_rem`
AS select
   `d1`.`student_id` AS `student_id`,
   `d1`.`first_name` AS `first_name`,
   `d1`.`middle_name` AS `middle_name`,
   `d1`.`last_name` AS `last_name`,
   `d1`.`grade` AS `grade`,
   `d1`.`school_id` AS `school_id`,
   `d1`.`phone` AS `phone`,
   `d1`.`birthdate` AS `birthdate`,
   `d1`.`street` AS `street`,
   `d1`.`city` AS `city`,
   `d1`.`state` AS `state`,
   `d1`.`zip` AS `zip`,
   `d1`.`username` AS `username`,
   `d1`.`password` AS `password`,
   `d1`.`email` AS `email`,
   `d1`.`gender` AS `gender`,
   `d1`.`guardian_name` AS `guardian_name`,
   `d1`.`state_id` AS `state_id`
from (`stu_d1` `d1` left join `stu_d0` `d0` on((`d1`.`student_id` = `d0`.`student_id`))) where isnull(`d0`.`student_id`);


# Replace placeholder table for v_cur_stu with correct view syntax
# ------------------------------------------------------------

DROP TABLE `v_cur_stu`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_cur_stu`
AS select
   `stu_d0`.`student_id` AS `student_id`,
   `stu_d0`.`first_name` AS `first_name`,
   `stu_d0`.`middle_name` AS `middle_name`,
   `stu_d0`.`last_name` AS `last_name`,
   `stu_d0`.`grade` AS `grade`,
   `stu_d0`.`school_id` AS `school_id`,
   `stu_d0`.`phone` AS `phone`,
   `stu_d0`.`birthdate` AS `birthdate`,
   `stu_d0`.`street` AS `street`,
   `stu_d0`.`city` AS `city`,
   `stu_d0`.`state` AS `state`,
   `stu_d0`.`zip` AS `zip`,
   `stu_d0`.`username` AS `username`,
   `stu_d0`.`password` AS `password`,
   `stu_d0`.`email` AS `email`,
   `stu_d0`.`gender` AS `gender`,
   `stu_d0`.`guardian_name` AS `guardian_name`,
   `stu_d0`.`state_id` AS `state_id`
from `stu_d0`;


# Replace placeholder table for v_cur_enr with correct view syntax
# ------------------------------------------------------------

DROP TABLE `v_cur_enr`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_cur_enr`
AS select
   `enr_d0`.`enrollment_id` AS `enrollment_id`,
   `enr_d0`.`course_id` AS `course_id`,
   `enr_d0`.`student_id` AS `student_id`
from `enr_d0`;


# Replace placeholder table for v_cou_d_add with correct view syntax
# ------------------------------------------------------------

DROP TABLE `v_cou_d_add`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_cou_d_add`
AS select
   `d0`.`course_id` AS `course_id`,
   `d0`.`school_id` AS `school_id`,
   `d0`.`period` AS `period`,
   `d0`.`section` AS `section`,
   `d0`.`course_code` AS `course_code`,
   `d0`.`course_name` AS `course_name`,
   `d0`.`teacher_id` AS `teacher_id`
from (`cou_d0` `d0` left join `cou_d1` `d1` on((`d0`.`course_id` = `d1`.`course_id`))) where isnull(`d1`.`course_id`);

--
-- Dumping routines (PROCEDURE) for database 'sage'
--
DELIMITER ;;

# Dump of PROCEDURE p_genv_curr_cou
# ------------------------------------------------------------

/*!50003 DROP PROCEDURE IF EXISTS `p_genv_curr_cou` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `p_genv_curr_cou`()
begin
DROP VIEW if exists v_curr_cou;
SET @table = f_cou_day_table();
SET @s = CONCAT('CREATE VIEW v_curr_cou AS SELECT * FROM ', @table);
PREPARE stmt FROM @s;
EXECUTE stmt;
end */;;

/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;;
# Dump of PROCEDURE p_genv_curr_enr
# ------------------------------------------------------------

/*!50003 DROP PROCEDURE IF EXISTS `p_genv_curr_enr` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `p_genv_curr_enr`()
begin
DROP VIEW if exists v_curr_enr;
SET @table = f_enr_day_table();
SET @s = CONCAT('CREATE VIEW v_curr_enr AS SELECT * FROM ', @table);
PREPARE stmt FROM @s;
EXECUTE stmt;
end */;;

/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;;
# Dump of PROCEDURE p_genv_curr_stf
# ------------------------------------------------------------

/*!50003 DROP PROCEDURE IF EXISTS `p_genv_curr_stf` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `p_genv_curr_stf`()
begin
DROP VIEW if exists v_curr_stf;
SET @table = f_stf_day_table();
SET @s = CONCAT('CREATE VIEW v_curr_stf AS SELECT * FROM ', @table);
PREPARE stmt FROM @s;
EXECUTE stmt;
end */;;

/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;;
# Dump of PROCEDURE p_genv_curr_stu
# ------------------------------------------------------------

/*!50003 DROP PROCEDURE IF EXISTS `p_genv_curr_stu` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 PROCEDURE `p_genv_curr_stu`()
begin
DROP VIEW if exists v_curr_stu;
SET @table = f_stu_day_table();
SET @s = CONCAT('CREATE VIEW v_curr_stu AS SELECT * FROM ', @table);
PREPARE stmt FROM @s;
EXECUTE stmt;
end */;;

/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;;
DELIMITER ;

--
-- Dumping routines (FUNCTION) for database 'sage'
--
DELIMITER ;;

# Dump of FUNCTION f_cou_day_table
# ------------------------------------------------------------

/*!50003 DROP FUNCTION IF EXISTS `f_cou_day_table` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `f_cou_day_table`() RETURNS varchar(6) CHARSET utf8 COLLATE utf8_unicode_ci
begin
    declare coutable VARCHAR(6);
    declare thisday INT;
    set thisday := DAYOFWEEK(NOW());
    if thisday = 1 then
       set coutable := 'cou_d1';
    elseif thisday = 2 then
    	set coutable := 'cou_d2';
    elseif thisday = 3 then
    	set coutable := 'cou_d3';
    elseif thisday = 4 then
    	set coutable := 'cou_d4';
    elseif thisday = 5 then
    	set coutable := 'cou_d5';
    elseif thisday = 6 then
    	set coutable := 'cou_d6';
    else
       set coutable := 'cou_d0';
    end if;
    return coutable;
end */;;

/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;;
# Dump of FUNCTION f_enr_day_table
# ------------------------------------------------------------

/*!50003 DROP FUNCTION IF EXISTS `f_enr_day_table` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `f_enr_day_table`() RETURNS varchar(6) CHARSET utf8 COLLATE utf8_unicode_ci
begin
    declare enrtable VARCHAR(6);
    declare thisday INT;
    set thisday := DAYOFWEEK(NOW());
    if thisday = 1 then
       set enrtable := 'enr_d1';
    elseif thisday = 2 then
    	set enrtable := 'enr_d2';
    elseif thisday = 3 then
    	set enrtable := 'enr_d3';
    elseif thisday = 4 then
    	set enrtable := 'enr_d4';
    elseif thisday = 5 then
    	set enrtable := 'enr_d5';
    elseif thisday = 6 then
    	set enrtable := 'enr_d6';
    else
       set enrtable := 'enr_d0';
    end if;
    return enrtable;
end */;;

/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;;
# Dump of FUNCTION f_stf_day_table
# ------------------------------------------------------------

/*!50003 DROP FUNCTION IF EXISTS `f_stf_day_table` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `f_stf_day_table`() RETURNS varchar(6) CHARSET utf8 COLLATE utf8_unicode_ci
begin
    declare stftable VARCHAR(6);
    declare thisday INT;
    set thisday := DAYOFWEEK(NOW());
    if thisday = 1 then
       set stftable := 'stf_d1';
    elseif thisday = 2 then
    	set stftable := 'stf_d2';
    elseif thisday = 3 then
    	set stftable := 'stf_d3';
    elseif thisday = 4 then
    	set stftable := 'stf_d4';
    elseif thisday = 5 then
    	set stftable := 'stf_d5';
    elseif thisday = 6 then
    	set stftable := 'stf_d6';
    else
       set stftable := 'stf_d0';
    end if;
    return stftable;
end */;;

/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;;
# Dump of FUNCTION f_stu_day_table
# ------------------------------------------------------------

/*!50003 DROP FUNCTION IF EXISTS `f_stu_day_table` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`localhost`*/ /*!50003 FUNCTION `f_stu_day_table`() RETURNS varchar(6) CHARSET utf8 COLLATE utf8_unicode_ci
begin
    declare stutable VARCHAR(6);
    declare thisday INT;
    set thisday := DAYOFWEEK(NOW());
    if thisday = 1 then
       set stutable := 'stu_d1';
    elseif thisday = 2 then
    	set stutable := 'stu_d2';
    elseif thisday = 3 then
    	set stutable := 'stu_d3';
    elseif thisday = 4 then
    	set stutable := 'stu_d4';
    elseif thisday = 5 then
    	set stutable := 'stu_d5';
    elseif thisday = 6 then
    	set stutable := 'stu_d6';
    else
       set stutable := 'stu_d0';
    end if;
    return stutable;
end */;;

/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;;
DELIMITER ;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
