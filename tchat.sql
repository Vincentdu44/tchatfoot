-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 04 Mai 2017 à 14:56
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `tchat`
--

-- --------------------------------------------------------

--
-- Structure de la table `tchat`
--

CREATE TABLE IF NOT EXISTS `tchat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(500) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Contenu de la table `tchat`
--

INSERT INTO `tchat` (`id`, `content`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'ehehjhdthtjrh', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(2, 'salut', '2016-12-12 19:33:33', '2016-12-12 19:33:33', 1),
(3, 'salut', '2016-12-12 19:33:39', '2016-12-12 19:33:39', 2),
(4, 'gsg', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3),
(5, 'merde', '2016-12-19 14:57:53', '2016-12-19 14:57:53', 3),
(6, 'mince', '2016-12-19 15:06:36', '2016-12-19 15:06:36', 4),
(7, 'heiphfq', '2016-12-19 15:08:01', '2016-12-19 15:08:01', 5),
(8, 'heiphfq', '2016-12-19 15:08:10', '2016-12-19 15:08:10', 6),
(9, 'ddddfgè_gu_g_o', '2016-12-19 15:18:07', '2016-12-19 15:18:07', 6),
(10, 'yes', '2016-12-19 15:23:29', '2016-12-19 15:23:29', 7),
(11, 'ta gueule', '2016-12-19 15:38:44', '2016-12-19 15:38:44', 7),
(12, 'ovguuogoig', '2016-12-19 15:42:48', '2016-12-19 15:42:48', 3),
(13, 'fuguogfugogg', '2016-12-19 15:44:32', '2016-12-19 15:44:32', 1),
(14, 'ijjop', '2017-01-04 15:36:48', '2017-01-04 15:36:48', 2),
(15, 'salut', '2017-05-04 14:44:16', '2017-05-04 14:44:16', 147);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `tchat`
--
ALTER TABLE `tchat`
  ADD CONSTRAINT `tchat_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
