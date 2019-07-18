-- --------------------------------------------------------
-- 호스트:                          192.168.0.114
-- 서버 버전:                        5.7.11-0ubuntu6 - (Ubuntu)
-- 서버 OS:                        Linux
-- HeidiSQL 버전:                  10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- project 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `project` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `project`;

-- 테이블 project.BOARD 구조 내보내기
CREATE TABLE IF NOT EXISTS `BOARD` (
  `board_no` int(11) NOT NULL AUTO_INCREMENT,
  `board_code` varchar(15) NOT NULL,
  `title` varchar(120) NOT NULL,
  `contents` text NOT NULL,
  `e_start_date` date DEFAULT NULL,
  `e_end_date` date DEFAULT NULL,
  `regist_date` date NOT NULL,
  `modify_date` date DEFAULT NULL,
  `hit` int(11) DEFAULT '0',
  `report` int(11) DEFAULT '0',
  `state` char(1) NOT NULL,
  `member_no` int(11) NOT NULL,
  `modify_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`board_no`),
  UNIQUE KEY `board_no` (`board_no`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

-- 테이블 데이터 project.BOARD:~62 rows (대략적) 내보내기
/*!40000 ALTER TABLE `BOARD` DISABLE KEYS */;
INSERT INTO `BOARD` (`board_no`, `board_code`, `title`, `contents`, `e_start_date`, `e_end_date`, `regist_date`, `modify_date`, `hit`, `report`, `state`, `member_no`, `modify_no`) VALUES
	(2, 'NOTICE', 'Test', 'TEST', NULL, NULL, '2019-07-12', NULL, 0, 0, 'Y', 3, NULL),
	(3, 'NOTICE', 'Test', 'Test2', NULL, NULL, '2019-07-12', NULL, 0, 0, 'Y', 3, NULL),
	(4, 'COMMUNITY', '커뮤니티21321', '커뮤니티2131231', NULL, NULL, '2019-07-12', NULL, 0, 0, 'Y', 3, NULL),
	(6, 'EVENT', '이벤트', '이벤트', '2019-07-05', '2019-07-17', '2019-07-12', NULL, 0, 0, 'Y', 3, NULL),
	(8, 'NOTICE', 'Test', 'TEST', NULL, NULL, '2019-07-15', NULL, 0, 0, 'Y', 3, NULL),
	(9, 'NOTICE', 'Test', 'TEST', NULL, NULL, '2019-07-15', NULL, 0, 0, 'Y', 3, NULL),
	(10, 'NOTICE', 'Test', 'TEST', NULL, NULL, '2019-07-15', NULL, 0, 0, 'Y', 3, NULL),
	(11, 'NOTICE', 'Test', 'TEST', NULL, NULL, '2019-07-15', NULL, 0, 0, 'Y', 3, NULL),
	(12, 'NOTICE', 'Test', 'TEST', NULL, NULL, '2019-07-15', NULL, 0, 0, 'Y', 3, NULL),
	(13, 'COMMUNITY', '111', '111', NULL, NULL, '2019-07-15', NULL, 0, 0, 'Y', 1, NULL),
	(14, 'COMMUNITY', '1111', '1111', NULL, NULL, '2019-07-15', NULL, 0, 0, 'Y', 1, NULL),
	(16, 'COMMUNITY', '123', '213', NULL, NULL, '2019-07-15', NULL, 0, 0, 'Y', 1, NULL),
	(17, 'COMMUNITY', '222', '22222', NULL, NULL, '2019-07-15', NULL, 0, 0, 'Y', 1, NULL),
	(18, 'NOTICE', 'Test', 'TEST', NULL, NULL, '2019-07-15', NULL, 0, 0, 'Y', 3, NULL),
	(19, 'NOTICE', 'Test', 'TEST', NULL, NULL, '2019-07-15', NULL, 0, 0, 'Y', 3, NULL),
	(20, 'NOTICE', 'Test', 'TEST', NULL, NULL, '2019-07-15', NULL, 0, 0, 'Y', 3, NULL),
	(21, 'NOTICE', 'Test', 'TEST', NULL, NULL, '2019-07-15', NULL, 0, 0, 'Y', 3, NULL),
	(22, 'NOTICE', 'Test', 'eTEStest', NULL, NULL, '2019-07-15', NULL, 0, 0, 'Y', 3, NULL),
	(23, 'NOTICE', 'Test', 'eTEStest', NULL, NULL, '2019-07-15', NULL, 0, 0, 'Y', 3, NULL),
	(24, 'NOTICE', '테스트', 'TESTET', NULL, NULL, '2019-07-15', NULL, 0, 0, 'Y', 3, NULL),
	(25, 'NOTICE', '수정', '수정', NULL, NULL, '2019-07-15', '2019-07-17', 0, 0, 'Y', 3, 3),
	(26, 'NOTICE', 'Test', 'TEST', NULL, NULL, '2019-07-15', '2019-07-16', 0, 0, 'Y', 3, 3),
	(27, 'COMMUNITY', '66', '666', NULL, NULL, '2019-07-15', NULL, 0, 0, 'Y', 1, NULL),
	(28, 'NOTICE', '테스트', 'TESTST', NULL, NULL, '2019-07-15', '2019-07-16', 0, 0, 'Y', 3, 3),
	(29, 'NOTICE', '커뮤니티', 'TEstset', NULL, NULL, '2019-07-15', '2019-07-16', 0, 0, 'Y', 3, 3),
	(30, 'NOTICE', 'Test21312', 'TEST', NULL, NULL, '2019-07-15', '2019-07-16', 0, 0, 'Y', 3, 3),
	(31, 'COMMUNITY', 'aaa', 'aaa', NULL, NULL, '2019-07-16', NULL, 0, 0, 'Y', 1, NULL),
	(33, 'COMMUNITY', '11123asd', '123asd', NULL, NULL, '2019-07-16', NULL, 0, 0, 'Y', 1, NULL),
	(34, 'COMMUNITY', 'aaaa', 'aaaaaa', NULL, NULL, '2019-07-16', NULL, 0, 0, 'Y', 1, NULL),
	(37, 'NOTICE', 'Ajax테스트', 'Ajax테스트23123123', NULL, NULL, '2019-07-16', '2019-07-16', 0, 0, 'Y', 3, 3),
	(38, 'NOTICE', '이동', '이동', NULL, NULL, '2019-07-16', '2019-07-16', 0, 0, 'Y', 3, 3),
	(39, 'NOTICE', '이동', '이동', NULL, NULL, '2019-07-16', '2019-07-16', 0, 0, 'Y', 3, 3),
	(40, 'NOTICE', '이동', '이도오도오오', NULL, NULL, '2019-07-16', '2019-07-16', 0, 0, 'Y', 3, 3),
	(41, 'NOTICE', 'Test21312', 'asdsadsa', NULL, NULL, '2019-07-16', '2019-07-16', 0, 0, 'Y', 3, 3),
	(42, 'NOTICE', '파일테스트', '파일테스트', NULL, NULL, '2019-07-16', '2019-07-16', 0, 0, 'Y', 3, 3),
	(43, 'NOTICE', '파일테스트', '파일테스트', NULL, NULL, '2019-07-16', '2019-07-16', 0, 0, 'Y', 3, 3),
	(45, 'NOTICE', 'dasdasd', 'asdasdasdsad', NULL, NULL, '2019-07-17', '2019-07-17', 0, 0, 'Y', 3, 3),
	(46, 'NOTICE', '파일테스트', 'TESTSET', NULL, NULL, '2019-07-17', '2019-07-17', 0, 0, 'Y', 3, 3),
	(47, 'NOTICE', '파일테스트', 'TESTSET', NULL, NULL, '2019-07-17', '2019-07-17', 0, 0, 'Y', 3, 3),
	(48, 'NOTICE', 'test', 'tsetest', NULL, NULL, '2019-07-17', '2019-07-17', 0, 0, 'Y', 3, 3),
	(49, 'NOTICE', 'test', 'setsetset', NULL, NULL, '2019-07-17', '2019-07-17', 0, 0, 'Y', 3, 3),
	(50, 'NOTICE', 'etsad', 'asdasdas', NULL, NULL, '2019-07-17', '2019-07-17', 0, 0, 'Y', 3, 3),
	(51, 'NOTICE', 'tsetest', 'aetaet', NULL, NULL, '2019-07-17', '2019-07-17', 0, 0, 'Y', 3, 3),
	(52, 'NOTICE', 'testset', 'setsetse', NULL, NULL, '2019-07-17', '2019-07-17', 0, 0, 'Y', 3, 3),
	(53, 'NOTICE', 'estest', 'setset', NULL, NULL, '2019-07-17', '2019-07-17', 0, 0, 'Y', 3, 3),
	(54, 'NOTICE', 'Test', 'estsets', NULL, NULL, '2019-07-17', '2019-07-17', 0, 0, 'Y', 3, 3),
	(55, 'NOTICE', 'setsetse', 'tsetsetes', NULL, NULL, '2019-07-17', '2019-07-17', 0, 0, 'Y', 3, 3),
	(56, 'NOTICE', 'asdasd', 'asdasdasd', NULL, NULL, '2019-07-17', '2019-07-17', 0, 0, 'Y', 3, 3),
	(57, 'NOTICE', 'estset', 'setset', NULL, NULL, '2019-07-17', '2019-07-17', 0, 0, 'Y', 3, 3),
	(58, 'NOTICE', 'tsetse', 'tsetset', NULL, NULL, '2019-07-17', '2019-07-17', 0, 0, 'Y', 3, 3),
	(59, 'NOTICE', 'test', 'testsets', NULL, NULL, '2019-07-17', '2019-07-17', 0, 0, 'Y', 3, 3),
	(60, 'NOTICE', 'asdsad', 'asdasdasda', NULL, NULL, '2019-07-17', '2019-07-17', 0, 0, 'Y', 3, 3),
	(61, 'NOTICE', 'tests', 'tsetset', NULL, NULL, '2019-07-17', '2019-07-17', 0, 0, 'Y', 3, 3),
	(62, 'EVENT', 'Test', 'TEST', '2019-07-05', '2019-07-18', '2019-07-17', '2019-07-17', 0, 0, 'Y', 3, 3),
	(63, 'EVENT', 'asdasd', 'asdas', '2019-07-05', '2019-07-12', '2019-07-17', '2019-07-17', 0, 0, 'Y', 3, 3),
	(64, 'EVENT', 'testes', 'estset', '2019-07-05', '2019-07-11', '2019-07-17', '2019-07-17', 0, 0, 'Y', 3, 3),
	(65, 'EVENT', 'Test', 'testse', '2019-07-05', '2019-07-18', '2019-07-17', '2019-07-17', 0, 0, 'Y', 3, 3),
	(70, 'COMMUNITY', '1111', 'testse11111', NULL, NULL, '2019-07-17', '2019-07-17', 0, 0, 'Y', 3, 3);
/*!40000 ALTER TABLE `BOARD` ENABLE KEYS */;

-- 테이블 project.CHARGE 구조 내보내기
CREATE TABLE IF NOT EXISTS `CHARGE` (
  `company_no` int(11) NOT NULL,
  `time_kind` varchar(24) NOT NULL,
  `subject` varchar(24) NOT NULL,
  `price` int(11) NOT NULL,
  `etc_content` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`company_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 project.CHARGE:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `CHARGE` DISABLE KEYS */;
INSERT INTO `CHARGE` (`company_no`, `time_kind`, `subject`, `price`, `etc_content`) VALUES
	(41, '주간', '유아', 20000, NULL);
/*!40000 ALTER TABLE `CHARGE` ENABLE KEYS */;

-- 테이블 project.COMMENT 구조 내보내기
CREATE TABLE IF NOT EXISTS `COMMENT` (
  `comment_no` int(11) NOT NULL AUTO_INCREMENT,
  `contents` varchar(180) NOT NULL,
  `regist_date` date NOT NULL,
  `state` char(1) NOT NULL,
  `report` int(11) DEFAULT NULL,
  `board_no` int(11) NOT NULL,
  `member_no` int(11) NOT NULL,
  PRIMARY KEY (`comment_no`),
  UNIQUE KEY `comment_no` (`comment_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 project.COMMENT:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `COMMENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `COMMENT` ENABLE KEYS */;

-- 테이블 project.COMPANY 구조 내보내기
CREATE TABLE IF NOT EXISTS `COMPANY` (
  `company_no` int(11) NOT NULL AUTO_INCREMENT,
  `company_kind` varchar(15) NOT NULL,
  `company_name` varchar(120) NOT NULL,
  `address` varchar(180) NOT NULL,
  `company_tel` varchar(15) NOT NULL,
  `contents` varchar(300) DEFAULT NULL,
  `open_time` time DEFAULT NULL,
  `close_time` time DEFAULT NULL,
  `regist_date` date NOT NULL,
  `state` char(1) NOT NULL,
  `manager_id` int(11) NOT NULL,
  PRIMARY KEY (`company_no`),
  UNIQUE KEY `company_no` (`company_no`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- 테이블 데이터 project.COMPANY:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `COMPANY` DISABLE KEYS */;
INSERT INTO `COMPANY` (`company_no`, `company_kind`, `company_name`, `address`, `company_tel`, `contents`, `open_time`, `close_time`, `regist_date`, `state`, `manager_id`) VALUES
	(41, '찜질방', '집에집에', '집에', '집에', '집에', '00:24:00', '00:24:00', '2019-07-17', '\0', 123);
/*!40000 ALTER TABLE `COMPANY` ENABLE KEYS */;

-- 테이블 project.COMPANY_EVENT 구조 내보내기
CREATE TABLE IF NOT EXISTS `COMPANY_EVENT` (
  `company_no` int(11) NOT NULL,
  `event_content` varchar(180) NOT NULL,
  `regist_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 project.COMPANY_EVENT:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `COMPANY_EVENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `COMPANY_EVENT` ENABLE KEYS */;

-- 테이블 project.FILES 구조 내보내기
CREATE TABLE IF NOT EXISTS `FILES` (
  `file_no` int(11) NOT NULL AUTO_INCREMENT,
  `menu_type` varchar(10) NOT NULL,
  `menu_no` int(11) NOT NULL,
  `file_type` varchar(12) NOT NULL,
  `origin_name` varchar(120) NOT NULL,
  `save_name` varchar(120) NOT NULL,
  `save_path` varchar(100) NOT NULL,
  `thum_name` varchar(120) DEFAULT NULL,
  `thum_path` varchar(100) DEFAULT NULL,
  `file_storage` varchar(10) NOT NULL,
  `file_content_type` varchar(30) NOT NULL,
  PRIMARY KEY (`file_no`),
  UNIQUE KEY `file_no` (`file_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 project.FILES:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `FILES` DISABLE KEYS */;
/*!40000 ALTER TABLE `FILES` ENABLE KEYS */;

-- 테이블 project.MANAGER 구조 내보내기
CREATE TABLE IF NOT EXISTS `MANAGER` (
  `mng_no` int(11) NOT NULL AUTO_INCREMENT,
  `mng_name` varchar(90) NOT NULL,
  `mng_reg_no` varchar(12) NOT NULL,
  `rep_tel` varchar(15) NOT NULL,
  `state` char(1) NOT NULL DEFAULT 'W',
  `apply_date` date DEFAULT NULL,
  `member_no` int(11) NOT NULL,
  `apply_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`mng_no`),
  UNIQUE KEY `manager_no` (`mng_no`),
  UNIQUE KEY `mng_no` (`mng_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- 테이블 데이터 project.MANAGER:~1 rows (대략적) 내보내기
/*!40000 ALTER TABLE `MANAGER` DISABLE KEYS */;
INSERT INTO `MANAGER` (`mng_no`, `mng_name`, `mng_reg_no`, `rep_tel`, `state`, `apply_date`, `member_no`, `apply_no`) VALUES
	(1, '대표자', '000-00-11111', '070-1234-2222', 'W', '2019-07-15', 8, 3),
	(2, '대표자', '111-10-00000', '070-1111-7894', 'W', NULL, 8, NULL);
/*!40000 ALTER TABLE `MANAGER` ENABLE KEYS */;

-- 테이블 project.MEMBER 구조 내보내기
CREATE TABLE IF NOT EXISTS `MEMBER` (
  `member_no` int(11) NOT NULL AUTO_INCREMENT COMMENT '고유번호',
  `member_id` varchar(18) NOT NULL COMMENT '회원아이디',
  `password` varchar(20) NOT NULL COMMENT '비밀번호',
  `member_name` varchar(60) NOT NULL COMMENT '회원이름',
  `phone` varchar(15) NOT NULL COMMENT '연락처',
  `email` varchar(30) NOT NULL COMMENT '이메일',
  `join_date` date NOT NULL COMMENT '가입일',
  `last_access_date` date DEFAULT NULL COMMENT '최근접속일',
  `leave_date` date DEFAULT NULL COMMENT '탈퇴일',
  `leave_reason` varchar(300) DEFAULT NULL COMMENT '탈퇴사유',
  `state` char(1) NOT NULL DEFAULT 'Y' COMMENT '''Y''정상, ''S''정지, ''H''휴면, ''L''탈퇴',
  `role_name` varchar(10) NOT NULL COMMENT '권한명',
  PRIMARY KEY (`member_no`),
  UNIQUE KEY `member_no` (`member_no`),
  UNIQUE KEY `member_no_2` (`member_no`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- 테이블 데이터 project.MEMBER:~3 rows (대략적) 내보내기
/*!40000 ALTER TABLE `MEMBER` DISABLE KEYS */;
INSERT INTO `MEMBER` (`member_no`, `member_id`, `password`, `member_name`, `phone`, `email`, `join_date`, `last_access_date`, `leave_date`, `leave_reason`, `state`, `role_name`) VALUES
	(3, 'admin', 'admin', '관리자', '010-1233-4564', 'admin@koitt.co.kr', '2019-07-10', NULL, NULL, NULL, 'Y', 'ADMIN'),
	(7, 'user', '1111', '사용자', '010-1234-7894', 'user@koitt.co.kr', '2019-07-12', NULL, NULL, NULL, 'Y', 'USER'),
	(8, 'manager', '1234', '사장님', '010-7777-7777', 'manager@koitt.co.kr', '2019-07-12', NULL, NULL, NULL, 'Y', 'MANAGER');
/*!40000 ALTER TABLE `MEMBER` ENABLE KEYS */;

-- 테이블 project.PLANTS 구조 내보내기
CREATE TABLE IF NOT EXISTS `PLANTS` (
  `company_no` int(11) NOT NULL,
  `plant_name` varchar(24) NOT NULL,
  `etx_content` varchar(90) DEFAULT NULL,
  PRIMARY KEY (`company_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 project.PLANTS:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `PLANTS` DISABLE KEYS */;
INSERT INTO `PLANTS` (`company_no`, `plant_name`, `etx_content`) VALUES
	(41, '주차장', NULL);
/*!40000 ALTER TABLE `PLANTS` ENABLE KEYS */;

-- 테이블 project.QNA 구조 내보내기
CREATE TABLE IF NOT EXISTS `QNA` (
  `qna_no` int(11) NOT NULL AUTO_INCREMENT,
  `qst_title` varchar(120) NOT NULL,
  `qst_contents` varchar(300) NOT NULL,
  `alram_type` char(1) NOT NULL,
  `regist_date` date NOT NULL,
  `state` char(1) NOT NULL,
  `answer` varchar(300) DEFAULT NULL,
  `answer_date` date DEFAULT NULL,
  `answer_no` int(11) DEFAULT NULL,
  `member_no` int(11) NOT NULL,
  PRIMARY KEY (`qna_no`),
  UNIQUE KEY `qna_no` (`qna_no`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- 테이블 데이터 project.QNA:~17 rows (대략적) 내보내기
/*!40000 ALTER TABLE `QNA` DISABLE KEYS */;
INSERT INTO `QNA` (`qna_no`, `qst_title`, `qst_contents`, `alram_type`, `regist_date`, `state`, `answer`, `answer_date`, `answer_no`, `member_no`) VALUES
	(2, '문의2', '문의내용', 'E', '2019-07-12', 'Y', '답변', '2019-07-12', 3, 7),
	(3, '문의3', '내용', 'E', '2019-07-10', 'N', NULL, NULL, NULL, 7),
	(4, '문의4', '내용', 'E', '2019-07-17', 'N', NULL, NULL, NULL, 7),
	(5, '문의4', '내용', 'E', '2019-07-17', 'N', NULL, NULL, NULL, 7),
	(6, '문의4', '내용', 'E', '2019-07-17', 'N', NULL, NULL, NULL, 7),
	(7, '문의4', '내용', 'E', '2019-07-17', 'N', NULL, NULL, NULL, 7),
	(8, '문의4', '내용', 'E', '2019-07-17', 'N', NULL, NULL, NULL, 7),
	(9, '문의4', '내용', 'E', '2019-07-17', 'N', NULL, NULL, NULL, 7),
	(10, '문의4', '내용', 'E', '2019-07-17', 'N', NULL, NULL, NULL, 7),
	(11, '문의4', '내용', 'E', '2019-07-17', 'N', NULL, NULL, NULL, 7),
	(12, '문의4', '내용', 'E', '2019-07-17', 'N', NULL, NULL, NULL, 7),
	(13, '문의4', '내용', 'E', '2019-07-17', 'N', NULL, NULL, NULL, 7),
	(14, '문의4', '내용', 'E', '2019-07-17', 'N', NULL, NULL, NULL, 7),
	(15, '문의4', '내용', 'E', '2019-07-17', 'N', NULL, NULL, NULL, 7),
	(16, '문의4', '내용', 'E', '2019-07-17', 'Y', 'TESTEST', '2019-07-17', 3, 7),
	(18, '문의4', '내용', 'E', '2019-07-17', 'Y', 'TEST', '2019-07-17', 3, 7);
/*!40000 ALTER TABLE `QNA` ENABLE KEYS */;

-- 테이블 project.REVIEW 구조 내보내기
CREATE TABLE IF NOT EXISTS `REVIEW` (
  `review_no` int(11) NOT NULL AUTO_INCREMENT,
  `contents` varchar(300) NOT NULL,
  `score` double NOT NULL,
  `regist_date` date NOT NULL,
  `company_no` int(11) NOT NULL,
  `member_no` int(11) NOT NULL,
  PRIMARY KEY (`review_no`),
  UNIQUE KEY `review_no` (`review_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 project.REVIEW:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `REVIEW` DISABLE KEYS */;
/*!40000 ALTER TABLE `REVIEW` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
