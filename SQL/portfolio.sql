-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 08, 2020 at 01:06 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `app_portfolio_about`
--

DROP TABLE IF EXISTS `app_portfolio_about`;
CREATE TABLE IF NOT EXISTS `app_portfolio_about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `short_description` longtext NOT NULL,
  `long_description` longtext NOT NULL,
  `quote_1` longtext NOT NULL,
  `quote_2` longtext NOT NULL,
  `background_picture` varchar(100) NOT NULL,
  `profile_picture` varchar(100) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_portfolio_about`
--

INSERT INTO `app_portfolio_about` (`id`, `name`, `short_description`, `long_description`, `quote_1`, `quote_2`, `background_picture`, `profile_picture`, `designation`, `is_published`) VALUES
(1, 'Tahmid Nishat', 'I am a full-stack Web Developer, with a demonstrated history of working in the computer software industry.', '<p><strong>Tahmid Nishat</strong> is a full-stack Web Developer, with a demonstrated history of working in the computer software industry.</p>\r\n\r\n<p>Skilled in&nbsp;Python, Django, PHP, Laravel,<strong> </strong> CodeIgniter, MySQL, PostgreSQL, Bootstrap, jQuery, JavaScript and also have knowledge of Programming Java, C, C++ so that easily can switch any other programming language. Mainly, I like to work with <strong>Django and Laravel</strong>. I always ready to take challenges and learn new technology.</p>\r\n\r\n<p>Strong engineering professional with a Bachelor of Computer Science and Engineering focused on Software Engineering from the&nbsp;<strong>International University of Business Agriculture and Technology</strong>.</p>', '“Any fool can write code that a computer can understand. Good programmers write code that humans can understand.”\r\n\r\n- Martin Fowler', '“I\'m not a great programmer; I\'m just a good programmer with great habits.”\r\n\r\n- Kent Beck', 'photos/2020/03/07/bg6.jpg', 'photos/2020/03/08/PP4.1.png', 'Full stack web developer & CS Engineer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `app_portfolio_project`
--

DROP TABLE IF EXISTS `app_portfolio_project`;
CREATE TABLE IF NOT EXISTS `app_portfolio_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `description` longtext NOT NULL,
  `github_link` varchar(100) NOT NULL,
  `live_link` varchar(150) NOT NULL,
  `project_language` varchar(100) NOT NULL,
  `framework` varchar(100) NOT NULL,
  `development_year` varchar(10) NOT NULL,
  `upload_time` datetime(6) NOT NULL,
  `project_image` varchar(100) NOT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `is_published` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `app_portfolio_project`
--

INSERT INTO `app_portfolio_project` (`id`, `title`, `description`, `github_link`, `live_link`, `project_language`, `framework`, `development_year`, `upload_time`, `project_image`, `is_featured`, `is_published`) VALUES
(1, 'Django real estate website', '<p>Django real estate website. Find the property easily and a very user-friendly project.&nbsp;</p>\r\n\r\n<hr />\r\n<h3>Features:&nbsp;</h3>\r\n\r\n<ul>\r\n	<li>Featured property</li>\r\n	<li>Login / Registration</li>\r\n	<li>Dynamic about page</li>\r\n	<li><span style=\"color:#16a085\"><strong>Multiple search functionality</strong></span></li>\r\n	<li>User inquiry / contact</li>\r\n	<li>Django alert messages</li>\r\n	<li>Secured Django admin site</li>\r\n</ul>\r\n\r\n<h3>&nbsp;Database:</h3>\r\n\r\n<ul>\r\n	<li><a href=\"https://www.postgresql.org/\">PostgreSQL</a></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', 'https://github.com/tahmid-ni7/property-project', 'https://github.com/tahmid-ni7/property-project', 'Python', 'Django', '2020', '2020-03-05 17:57:39.000000', 'photos/2020/03/05/home-1.jpg', 1, 1),
(2, 'Online Bookshop with laravel', '<p>This is an online bookshop project with laravel 5.8, bootstrap 4, javaScript and jquery. In this project I use&nbsp;<a href=\"https://stripe.com/\" rel=\"nofollow\"><strong>stripe payment</strong></a>&nbsp;system, and&nbsp;<a href=\"https://github.com/bumbummen99/LaravelShoppingcart\"><strong>Laravel Shoppingcart</strong></a>&nbsp;for maintaining the user orders and payments. This project has many other cool functionality, like as&nbsp;<a href=\"https://datatables.net/\" rel=\"nofollow\"><strong>Data table</strong></a>&nbsp;and so on.</p>\r\n\r\n<h3>Key Features</h3>\r\n\r\n<h3>Users</h3>\r\n\r\n<ul>\r\n	<li>Users can search the books by book title and author name.</li>\r\n	<li>Filter the books by category and author</li>\r\n	<li>User can buy the books</li>\r\n	<li>User can make reviews for the books after login</li>\r\n	<li>User can see their orders and reviews from the user panel.</li>\r\n	<li>Registration</li>\r\n</ul>\r\n\r\n<h3>Admin</h3>\r\n\r\n<ul>\r\n	<li>Basically admin manages all activities of the application</li>\r\n	<li>Admin can add &amp; delete user, author, category, and books.</li>\r\n	<li>Admin can accept or reject the user orders.</li>\r\n	<li>Admin has control over the book reviews and so on.</li>\r\n</ul>\r\n\r\n<h3>Others</h3>\r\n\r\n<ul>\r\n	<li>Multiple secured login and registration, Use middleware route group for admin and users</li>\r\n	<li>Use database seeder</li>\r\n	<li>Secured payment system with&nbsp;<strong>stripe</strong>.</li>\r\n	<li>Resize the uploaded images.</li>\r\n</ul>\r\n\r\n<hr />\r\n<h3>Development</h3>\r\n\r\n<p>This project developed with</p>\r\n\r\n<ul>\r\n	<li><a href=\"https://laravel.com/\" rel=\"nofollow\">Laravel</a></li>\r\n	<li><a href=\"https://getbootstrap.com/docs/4.3/getting-started/introduction/\" rel=\"nofollow\">Bootstrap-4</a></li>\r\n	<li>SB-Admin-2</li>\r\n	<li>JavaScript, jQuery</li>\r\n	<li>MySql</li>\r\n	<li><a href=\"https://stripe.com/\" rel=\"nofollow\">Stripe payment</a></li>\r\n	<li><a href=\"https://github.com/bumbummen99/LaravelShoppingcart\">Laravel ShoppingCart</a></li>\r\n</ul>\r\n\r\n<h2>Getting started</h2>\r\n\r\n<p>After cloning the project, you have followed as the way how other laravel projects run. For running the project you have to follow these instructions below</p>\r\n\r\n<pre>\r\n<code>1. Rename .env-example to .env and set database name as your phpMyAdmin\r\n\r\n2. Run these below commands in project terminal\r\n   $ composer update\r\n   $ php artisan key:generate\r\n   $ php artisan migrate\r\n   $ php artisan db:seed\r\n   $ php artisan serve.\r\n   (From this link you can run the project)\r\n</code></pre>\r\n\r\n<p>Now this project is ready to run. For admin, Email&nbsp;<code>admin@bookshop.com</code>&nbsp;password&nbsp;<code>secret</code>. For the user, Email&nbsp;<code>user@bookshop.com</code>&nbsp;password&nbsp;<code>secret</code>.</p>\r\n\r\n<p><em><strong>If you would find any errors or issues you can mention in issues or raise a pull request. Fell free to contribute to this project.</strong></em></p>\r\n\r\n<hr />\r\n<p>&copy;&nbsp;<a href=\"http://tahmid-ni7.github.io/portfolio\" rel=\"nofollow\">Tahmid Nishat</a></p>\r\n\r\n<p><code>Full-stack web developer &amp; CS Engineer</code></p>', 'https://github.com/tahmid-ni7/Online-Bookshop-with-laravel', '', 'PHP', 'Laravel', '2019', '2020-03-05 18:09:13.000000', 'photos/2020/03/06/slider-image-3.jpg', 1, 1),
(3, 'Professional blog - Laravel', '<p>This is a professional blog site with laravel 5.8. Here I used&nbsp;<strong>ACL- Access Control Layer</strong>&nbsp;with laratrust package to secure the backend. This blog allows multiple users to contribute. This is an awesome blog or CMS site with various cool features.</p>\r\n\r\n<h3>FEATURES</h3>\r\n\r\n<h4>Front-end Features</h4>\r\n\r\n<ul>\r\n	<li>Popular posts based on hit count</li>\r\n	<li>Dynamic category</li>\r\n	<li>Posts filter with category</li>\r\n	<li>Posts filter by author</li>\r\n	<li>Posts filter by tags</li>\r\n	<li>Use of slug to pretty URL</li>\r\n	<li>User comments</li>\r\n</ul>\r\n\r\n<h4>Back-end Features</h4>\r\n\r\n<ul>\r\n	<li>Three types of users control the backend- admin, editor, and author.</li>\r\n	<li>Admin can manage all tasks</li>\r\n	<li>The editor can create posts and edit the posts</li>\r\n	<li>The author can create the posts and manage own posts</li>\r\n	<li>Soft deletion and restore posts</li>\r\n	<li>Scheduled and draft posts</li>\r\n	<li>Database seeder class</li>\r\n</ul>\r\n\r\n<h4>Development tools</h4>\r\n\r\n<ul>\r\n	<li><strong>Laravel 5.8</strong></li>\r\n	<li>Bootstrap</li>\r\n	<li>Javascript/ jQuery</li>\r\n	<li>Simple MDE</li>\r\n	<li>Date-time picker</li>\r\n</ul>', 'https://github.com/tahmid-ni7/Professional-blog-with-laravel-5.8', '', 'PHP', 'Laravel', '2019', '2020-03-07 12:00:32.000000', 'photos/2020/03/07/lara-blog.png', 0, 1),
(4, 'Online Bookshop & e-learning - Codeigniter', '<p>This is an online book shop project developed by the&nbsp;PHP framework (CodeIgniter). This application is like an online book market place, where the user allows to buy and sell their books. Here users can also get different types of e-books as pdf books based on the category. This project also has many other cool functionalities.</p>\r\n\r\n<h2>Key features:</h2>\r\n\r\n<h3>User</h3>\r\n\r\n<ul>\r\n	<li>Users can find the books category wise.</li>\r\n	<li>Users can see the book&#39;s details and reviews of the book.</li>\r\n	<li>Users can review a specific book after login.</li>\r\n	<li>Users can add books to the cart.</li>\r\n	<li>Users can place the order and they will notify after placing the order.</li>\r\n	<li>Users can search the books.</li>\r\n	<li>Users can read and download the e-books.</li>\r\n	<li>User can sell their books.</li>\r\n	<li>Edit their information.</li>\r\n	<li>User can see their information and activities.</li>\r\n	<li>User can track their orders.</li>\r\n</ul>\r\n\r\n<h3>Admin</h3>\r\n\r\n<ul>\r\n	<li>Admin can add, delete, update the category, books, e-books and user.</li>\r\n	<li>Admin can publish the books upload by the users also can delete them.</li>\r\n	<li>Admin will approve the user orders.</li>\r\n	<li>Admin will deliver the order and print the delivery report.</li>\r\n	<li>Admin will monitor whole the system.</li>\r\n</ul>\r\n\r\n<h2>Project Development</h2>\r\n\r\n<p>This project is developed by,</p>\r\n\r\n<ul>\r\n	<li>PHP framework (CodeIgniter 3.1.10)</li>\r\n	<li>HTML, CSS</li>\r\n	<li>CSS framework (Bootstrap-4)</li>\r\n	<li>jQuery, JavaScript</li>\r\n</ul>\r\n\r\n<p><strong>Note:</strong>&nbsp;The database name of this project is&nbsp;<strong>&quot;ebookshop&quot;</strong>&nbsp;and&nbsp;<strong>ebookshop.sql</strong>&nbsp;file is inside the&nbsp;<strong>&#39;tool&#39;</strong>&nbsp;folder. If you want to clone and use the project, then after cloning rename the base folder as&nbsp;<strong>&quot;E-Bookshop&quot;</strong>. Otherwise, this application will not work properly. If you want to make change the base folder as you want, you have to change the base_url from config and also change the .htaccess file.</p>\r\n\r\n<p><strong>Fell free to fork and contribute to this project. For more queries related to this project, contact me through email.</strong></p>\r\n\r\n<p>Thanks &amp; Regards</p>\r\n\r\n<p><em><a href=\"https://tahmid-ni7.github.io/portfolio/\" rel=\"nofollow\">Tahmid Nishat</a></em></p>\r\n\r\n<p><code>Email: tahmid.ni7@gmail.com</code></p>\r\n\r\n<h4>Have a look at project interface&nbsp;<a href=\"https://imgur.com/a/vPxwOiF\" rel=\"nofollow\">screenshots</a>&nbsp;here.</h4>', 'https://github.com/tahmid-ni7/E-Bookshop', '', 'PHP', 'Codeigniter', '2019', '2020-03-07 12:21:47.000000', 'photos/2020/03/07/slider-image-1.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add about', 7, 'add_about'),
(26, 'Can change about', 7, 'change_about'),
(27, 'Can delete about', 7, 'delete_about'),
(28, 'Can view about', 7, 'view_about'),
(29, 'Can add project', 8, 'add_project'),
(30, 'Can change project', 8, 'change_project'),
(31, 'Can delete project', 8, 'delete_project'),
(32, 'Can view project', 8, 'view_project');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$y6bzfBmNKxrB$SJ8FJtpRALyNsuPN3832mjZ7vtIvQGPlLdSnkBV9/5Y=', '2020-03-08 11:14:36.400219', 1, 'tahmid', '', '', 'tahmid.ni7@gmail.com', 1, 1, '2020-03-05 17:49:16.404573');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-03-05 17:58:31.432077', '1', 'Django real estate website', 1, '[{\"added\": {}}]', 8, 1),
(2, '2020-03-05 18:09:59.270957', '2', 'Online Bookshop with laravel', 1, '[{\"added\": {}}]', 8, 1),
(3, '2020-03-05 18:10:15.077766', '1', 'Django real estate website', 2, '[]', 8, 1),
(4, '2020-03-05 18:13:43.841229', '2', 'Online Bookshop with laravel', 2, '[]', 8, 1),
(5, '2020-03-05 18:48:28.754349', '2', 'Online Bookshop with laravel', 2, '[]', 8, 1),
(6, '2020-03-07 09:47:10.194037', '2', 'Online Bookshop with laravel', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(7, '2020-03-07 10:44:43.905953', '2', 'Online Bookshop with laravel', 2, '[]', 8, 1),
(8, '2020-03-07 11:25:20.290901', '2', 'Online Bookshop with laravel', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(9, '2020-03-07 11:36:18.612684', '1', 'Tahmid NIshat', 1, '[{\"added\": {}}]', 7, 1),
(10, '2020-03-07 11:50:36.381225', '1', 'Django real estate website', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(11, '2020-03-07 11:51:40.451577', '1', 'Django real estate website', 2, '[]', 8, 1),
(12, '2020-03-07 11:58:07.561852', '2', 'Online Bookshop with laravel', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(13, '2020-03-07 12:06:27.467713', '3', 'Professional blog with laravel', 1, '[{\"added\": {}}]', 8, 1),
(14, '2020-03-07 12:09:29.547806', '1', 'Tahmid NIshat', 2, '[{\"changed\": {\"fields\": [\"Long description\"]}}]', 7, 1),
(15, '2020-03-07 12:22:32.825648', '4', 'Online Bookshop & e-learning', 1, '[{\"added\": {}}]', 8, 1),
(16, '2020-03-07 12:24:05.187986', '1', 'Django real estate website', 2, '[{\"changed\": {\"fields\": [\"Development year\"]}}]', 8, 1),
(17, '2020-03-08 06:04:16.410013', '4', 'Online Bookshop & e-learning', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(18, '2020-03-08 06:13:04.933485', '4', 'Online Bookshop & e-learning - Codeigniter', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 8, 1),
(19, '2020-03-08 06:27:08.817254', '3', 'Professional blog - Laravel', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 8, 1),
(20, '2020-03-08 07:28:21.123863', '1', 'Django real estate website', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(21, '2020-03-08 07:29:50.737932', '1', 'Django real estate website', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Live link\"]}}]', 8, 1),
(22, '2020-03-08 07:36:29.432431', '2', 'Online Bookshop with laravel', 2, '[{\"changed\": {\"fields\": [\"Github link\"]}}]', 8, 1),
(23, '2020-03-08 07:38:43.515347', '2', 'Online Bookshop with laravel', 2, '[{\"changed\": {\"fields\": [\"Description\"]}}]', 8, 1),
(24, '2020-03-08 08:04:41.362205', '1', 'Tahmid Nishat', 2, '[{\"changed\": {\"fields\": [\"Name\", \"Long description\", \"Profile picture\"]}}]', 7, 1),
(25, '2020-03-08 08:07:56.048530', '2', 'Tahmid Uddin Mahmud Nishat', 1, '[{\"added\": {}}]', 7, 1),
(26, '2020-03-08 08:09:08.315160', '2', 'Tahmid Uddin Mahmud Nishat', 3, '', 7, 1),
(27, '2020-03-08 08:10:49.875082', '1', 'Tahmid Nishat', 2, '[]', 7, 1),
(28, '2020-03-08 08:16:23.896395', '1', 'Tahmid Nishat', 2, '[{\"changed\": {\"fields\": [\"Long description\"]}}]', 7, 1),
(29, '2020-03-08 08:18:38.387158', '1', 'Tahmid Nishat', 2, '[{\"changed\": {\"fields\": [\"Long description\"]}}]', 7, 1),
(30, '2020-03-08 08:19:12.558777', '1', 'Tahmid Nishat', 2, '[{\"changed\": {\"fields\": [\"Long description\"]}}]', 7, 1),
(31, '2020-03-08 08:19:44.108637', '1', 'Tahmid Nishat', 2, '[{\"changed\": {\"fields\": [\"Long description\"]}}]', 7, 1),
(32, '2020-03-08 08:20:31.905099', '1', 'Tahmid Nishat', 2, '[{\"changed\": {\"fields\": [\"Long description\"]}}]', 7, 1),
(33, '2020-03-08 08:33:26.832704', '1', 'Tahmid Nishat', 2, '[{\"changed\": {\"fields\": [\"Designation\"]}}]', 7, 1),
(34, '2020-03-08 08:34:22.551297', '1', 'Tahmid Nishat', 2, '[{\"changed\": {\"fields\": [\"Designation\"]}}]', 7, 1),
(35, '2020-03-08 08:55:26.970413', '2', 'Online Bookshop with laravel', 2, '[{\"changed\": {\"fields\": [\"Is published\"]}}]', 8, 1),
(36, '2020-03-08 08:55:42.427241', '3', 'Professional blog - Laravel', 2, '[{\"changed\": {\"fields\": [\"Is featured\"]}}]', 8, 1),
(37, '2020-03-08 08:57:02.955000', '2', 'Online Bookshop with laravel', 2, '[{\"changed\": {\"fields\": [\"Is published\"]}}]', 8, 1),
(38, '2020-03-08 08:59:33.102570', '3', 'Professional blog - Laravel', 2, '[{\"changed\": {\"fields\": [\"Is published\"]}}]', 8, 1),
(39, '2020-03-08 09:00:42.591363', '3', 'Professional blog - Laravel', 2, '[{\"changed\": {\"fields\": [\"Is featured\", \"Is published\"]}}]', 8, 1),
(40, '2020-03-08 09:10:34.340129', '1', 'Tahmid Nishat', 2, '[{\"changed\": {\"fields\": [\"Long description\"]}}]', 7, 1),
(41, '2020-03-08 09:13:07.921316', '4', 'Online Bookshop & e-learning - Codeigniter ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 8, 1),
(42, '2020-03-08 09:14:28.247248', '4', 'Online Bookshop & e-learniddddddddddddddddddddddd dddddddd dddddddddddddddddddddddddddddddddddddddddddddddddddd', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 8, 1),
(43, '2020-03-08 09:16:30.304533', '4', 'Online Bookshop & e-learning - Codeigniter', 2, '[{\"changed\": {\"fields\": [\"Title\"]}}]', 8, 1),
(44, '2020-03-08 11:53:58.441141', '1', 'Tahmid Nishat', 2, '[{\"changed\": {\"fields\": [\"Quote 2\"]}}]', 7, 1),
(45, '2020-03-08 11:55:01.789645', '1', 'Tahmid Nishat', 2, '[]', 7, 1),
(46, '2020-03-08 11:55:33.364590', '1', 'Tahmid Nishat', 2, '[{\"changed\": {\"fields\": [\"Quote 1\", \"Quote 2\"]}}]', 7, 1),
(47, '2020-03-08 11:56:43.978612', '1', 'Tahmid Nishat', 2, '[]', 7, 1),
(48, '2020-03-08 11:59:03.304823', '1', 'Tahmid Nishat', 2, '[{\"changed\": {\"fields\": [\"Quote 1\"]}}]', 7, 1),
(49, '2020-03-08 12:01:56.922807', '1', 'Tahmid Nishat', 2, '[{\"changed\": {\"fields\": [\"Quote 1\", \"Quote 2\"]}}]', 7, 1),
(50, '2020-03-08 12:10:41.508262', '1', 'Tahmid Nishat', 2, '[{\"changed\": {\"fields\": [\"Is published\"]}}]', 7, 1),
(51, '2020-03-08 12:17:10.635959', '1', 'Tahmid Nishat', 2, '[{\"changed\": {\"fields\": [\"Is published\"]}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'app_portfolio', 'about'),
(8, 'app_portfolio', 'project');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-03-05 17:48:07.042792'),
(2, 'auth', '0001_initial', '2020-03-05 17:48:07.527155'),
(3, 'admin', '0001_initial', '2020-03-05 17:48:08.652120'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-03-05 17:48:08.964614'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-03-05 17:48:08.964614'),
(6, 'app_portfolio', '0001_initial', '2020-03-05 17:48:09.136483'),
(7, 'contenttypes', '0002_remove_content_type_name', '2020-03-05 17:48:09.245855'),
(8, 'auth', '0002_alter_permission_name_max_length', '2020-03-05 17:48:09.292729'),
(9, 'auth', '0003_alter_user_email_max_length', '2020-03-05 17:48:09.370847'),
(10, 'auth', '0004_alter_user_username_opts', '2020-03-05 17:48:09.370847'),
(11, 'auth', '0005_alter_user_last_login_null', '2020-03-05 17:48:09.433347'),
(12, 'auth', '0006_require_contenttypes_0002', '2020-03-05 17:48:09.433347'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2020-03-05 17:48:09.433347'),
(14, 'auth', '0008_alter_user_username_max_length', '2020-03-05 17:48:09.527098'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2020-03-05 17:48:09.605219'),
(16, 'auth', '0010_alter_group_name_max_length', '2020-03-05 17:48:09.667716'),
(17, 'auth', '0011_update_proxy_permissions', '2020-03-05 17:48:09.683344'),
(18, 'sessions', '0001_initial', '2020-03-05 17:48:09.745838'),
(19, 'app_portfolio', '0002_auto_20200307_1401', '2020-03-07 08:01:41.533981'),
(20, 'app_portfolio', '0002_auto_20200307_1604', '2020-03-07 10:04:10.288070'),
(21, 'app_portfolio', '0002_auto_20200308_1431', '2020-03-08 08:32:10.257439'),
(22, 'app_portfolio', '0003_about_is_published', '2020-03-08 12:09:04.786645');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('wrikthuc9g6sdux91s5v7w6ti49t6ar8', 'YjlmYTc5ZjRmYjA1ZTIwZGRiOTk1YzQ4NDhiMTUxYzFiNDVjYzYzNzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNjYxNDAxNzQ3ODM1ODUyYjhlNTJiYmJhNThlYTAxYzg3NTFlNjhmIn0=', '2020-03-22 11:14:36.417258');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
