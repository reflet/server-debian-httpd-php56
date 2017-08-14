
/**
 * rootに権限追加
 * mysql> SHOW GRANTS FOR 'root'@'localhost';
 */
grant all privileges on *.* to 'root'@'localhost' identified by 'mysql' with grant option;

/**
 * Sample SQL
 * --
 * -- Database: myblog
 * --
 * create database myblog;
 * use myblog;
 *
 * --
 * -- Table structure for table `posts`
 * --
 * CREATE TABLE `posts` (
 *   `id` int(11) NOT NULL AUTO_INCREMENT,
 *   `title` varchar(255) NOT NULL,
 *   `summary` varchar(255) NOT NULL,
 *   `body` text NOT NULL,
 *   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
 *   `updated_at` datetime NOT NULL,
 *   PRIMARY KEY (`id`)
 * ) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
 */


