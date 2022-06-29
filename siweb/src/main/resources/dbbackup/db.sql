-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.6.8-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- web 데이터베이스 구조 내보내기
DROP DATABASE IF EXISTS `web`;
CREATE DATABASE IF NOT EXISTS `web` /*!40100 DEFAULT CHARACTER SET utf8mb3 */;
USE `web`;

-- 테이블 web.user 구조 내보내기
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` varchar(50) NOT NULL,
  `user_pwd` varchar(50) NOT NULL,
  `user_birth` int(11) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_lv` int(11) NOT NULL DEFAULT 0,
  `user_status` int(11) NOT NULL DEFAULT 0,
  `create_date` datetime NOT NULL,
  `update_date` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- 테이블 데이터 web.user:~54 rows (대략적) 내보내기
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`user_id`, `user_pwd`, `user_birth`, `user_email`, `user_lv`, `user_status`, `create_date`, `update_date`) VALUES
	('Adele', '123', 2021, 'acasoni2@omniture.com', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('admin', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257', 2000, 'abc@example.com', 1, 0, '2022-06-21 15:12:42', '2022-06-21 15:12:42'),
	('Adolpho', '123', 2022, 'aaltonn@edublogs.org', 0, 0, '2022-06-27 00:00:00', '2022-06-27 15:47:20'),
	('Aida', '123', 2012, 'avandaalen8@census.gov', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Alexine', '123', 2015, 'agillinghamsu@mediafire.com', 0, 0, '2022-06-27 00:00:00', '2022-06-27 15:47:19'),
	('Alwin', '123', 2022, 'aholdallr@mail.ru', 0, 0, '2022-06-27 00:00:00', '2022-06-28 09:45:17'),
	('Amelina', '123', 2018, 'akondratovichv@amazon.co.jp', 0, 0, '2022-06-27 00:00:00', '2022-06-28 09:45:16'),
	('Augustina', '123', 2009, 'amcturk19@independent.co.uk', 0, 0, '2022-06-27 00:00:00', '2022-06-28 09:45:15'),
	('Barbara', '123', 2009, 'bfrankey@cmu.edu', 0, 0, '2022-06-27 00:00:00', '2022-06-28 09:41:51'),
	('Benedetta', '123', 2002, 'bsteptob@nasa.gov', 0, 0, '2022-06-27 00:00:00', '2022-06-28 10:55:05'),
	('Berti', '123', 2002, 'byurygyn1c@ning.com', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Bidget', '123', 2011, 'bdudbridge17@google.com.br', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Bobbette', '123', 2019, 'bironside10@infoseek.co.jp', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Bonnie', '123', 2018, 'bmacmakini@timesonline.co.uk', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Caddric', '123', 2000, 'cdaviddem@pen.io', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Carlie', '123', 2004, 'cdaskiewicz16@cpanel.net', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Chastity', '123', 2007, 'ckleinpeltz15@is.gd', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Darbie', '123', 2002, 'dcullityd@studiopress.com', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Daryle', '123', 2001, 'dmettetalk@uiuc.edu', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Elicia', '123', 2017, 'esutterbys@sfgate.com', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Frannie', '123', 2020, 'fdowseya@blogtalkradio.com', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Gerard', '123', 2003, 'ghanigane@tumblr.com', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Griselda', '123', 2002, 'gdavidssonh@cyberchimps.com', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Hilliard', '123', 2000, 'hduffanp@miibeian.gov.cn', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Inna', '123', 2003, 'iarnauduc1@youtu.be', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Jacquenetta', '123', 2020, 'jshillito12@meetup.com', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Janaye', '123', 2006, 'jloney3@techcrunch.com', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Janith', '123', 2000, 'jhabbeshaw6@arizona.edu', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Karita', '123', 2002, 'kgagie1a@geocities.jp', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Leonie', '123', 2000, 'lmapledorumc@ucoz.ru', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Lula', '123', 2007, 'lizakoffw@barnesandnoble.com', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Maressa', '123', 2010, 'mreanyg@amazon.co.uk', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Margarita', '123', 2012, 'mlutwidgeo@zimbio.com', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Marisa', '123', 2004, 'mlerohanj@simplemachines.org', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Mayer', '123', 2022, 'mperigoe0@lycos.com', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Mel', '123', 2000, 'mlayson1b@cpanel.net', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Molly', '123', 2016, 'mgitting7@kickstarter.com', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('nyaum', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257', 123, '123', 0, 0, '2022-06-28 16:19:24', '2022-06-28 16:19:24'),
	('Osborn', '123', 2008, 'oleadesf@earthlink.net', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Rodi', '123', 2000, 'rbaldocci9@businesswire.com', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Ronalda', '123', 2008, 'rbucher11@scientificamerican.com', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Selby', '123', 2015, 'sborrottl@php.net', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Sergeant', '123', 2007, 'shuggant@4shared.com', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Sonnie', '123', 2018, 'sgonninq@goodreads.com', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Tate', '123', 2007, 'tanslowx@behance.net', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('test', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257', 2000, 'abc@example.com', 0, 1, '2022-06-22 15:38:11', '2022-06-28 10:30:45'),
	('user', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257', 2000, 'abc@example.com', 0, 0, '2022-06-29 13:50:22', '2022-06-29 13:50:22'),
	('Vonni', '123', 2005, 'vpurton18@etsy.com', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Waiter', '123', 2014, 'wmephan14@studiopress.com', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Wallis', '123', 2005, 'wwainscot13@usa.gov', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Wanids', '123', 2002, 'wcorssen5@furl.net', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Wheeler', '123', 2020, 'wlappine4@latimes.com', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Yoshi', '123', 2005, 'yforrez@wikipedia.org', 0, 0, '2022-06-27 00:00:00', '2022-06-27 00:00:00'),
	('Zarla', '123', 2015, 'zsherborn1d@java.com', 0, 0, '2022-06-27 00:00:00', '2022-06-27 15:47:19');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
