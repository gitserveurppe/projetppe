-- phpMyAdmin SQL Dump
-- version 4.9.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mar. 09 juil. 2019 à 09:32
-- Version du serveur :  10.1.40-MariaDB-1~jessie
-- Version de PHP :  5.6.40-0+deb8u3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `katma918629_1qae4k`
--
CREATE DATABASE IF NOT EXISTS `katma918629_1qae4k` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `katma918629_1qae4k`;

-- --------------------------------------------------------

--
-- Structure de la table `activites`
--

CREATE TABLE `activites` (
  `id_activite` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `dteBegin` date NOT NULL,
  `dteEnd` date NOT NULL,
  `classe` varchar(255) NOT NULL,
  `optn` varchar(255) NOT NULL,
  `dteCreate` date NOT NULL,
  `badge` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `activites`
--

INSERT INTO `activites` (`id_activite`, `titre`, `description`, `dteBegin`, `dteEnd`, `classe`, `optn`, `dteCreate`, `badge`) VALUES
(2, 'PPE 1', 'detectivo', '2019-07-09', '2019-07-21', '1', '1', '2019-06-18', '[{&quot;value&quot;:&quot;PHP&quot;},{&quot;value&quot;:&quot;CSS&quot;},{&quot;value&quot;:&quot;HTML&quot;}]'),
(3, 'PPE 2', 'R&eacute;alisation d\'un site pour &eacute;valuer les bts sio', '2019-04-02', '2019-07-12', '8', '1', '2019-06-18', '[{&quot;value&quot;:&quot;CSS&quot;}]'),
(8, 'test 3', 'test dashboard', '2019-07-04', '2019-09-09', '1', '1', '2019-07-04', '[{&quot;value&quot;:&quot;PHP&quot;},{&quot;value&quot;:&quot;JavaScript&quot;},{&quot;value&quot;:&quot;CSS&quot;}]');

-- --------------------------------------------------------

--
-- Structure de la table `actualites`
--

CREATE TABLE `actualites` (
  `act_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `act_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `actualites`
--

INSERT INTO `actualites` (`act_id`, `title`, `content`, `act_date`) VALUES
(1, 'Alpha 0.1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed elit orci, ornare non diam mollis, sagittis gravida libero. Vivamus ac interdum sapien. Etiam aliquam eros tincidunt enim venenatis feugiat. Sed eu laoreet neque, sed aliquam tellus. Nam quis fringilla magna, sed eleifend augue. Praesent condimentum, odio quis mollis efficitur, nisl ipsum tempor ipsum, vitae vestibulum nulla arcu id lorem. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLes nouvelles fonctionnalités\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed elit orci, ornare non diam mollis, sagittis gravida libero. Vivamus ac interdum sapien. Etiam aliquam eros tincidunt enim venenatis feugiat. Sed eu laoreet neque, sed aliquam tellus. Nam quis fringilla magna, sed eleifend augue. Praesent condimentum, odio quis mollis efficitur, nisl ipsum tempor ipsum, vitae vestibulum nulla arcu id lorem. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '2019-06-01'),
(2, 'Alpha 0.2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed elit orci, ornare non diam mollis, sagittis gravida libero. Vivamus ac interdum sapien. Etiam aliquam eros tincidunt enim venenatis feugiat. Sed eu laoreet neque, sed aliquam tellus. Nam quis fringilla magna, sed eleifend augue. Praesent condimentum, odio quis mollis efficitur, nisl ipsum tempor ipsum, vitae vestibulum nulla arcu id lorem. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nLes nouvelles fonctionnalités\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed elit orci, ornare non diam mollis, sagittis gravida libero. Vivamus ac interdum sapien. Etiam aliquam eros tincidunt enim venenatis feugiat. Sed eu laoreet neque, sed aliquam tellus. Nam quis fringilla magna, sed eleifend augue. Praesent condimentum, odio quis mollis efficitur, nisl ipsum tempor ipsum, vitae vestibulum nulla arcu id lorem. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '2019-06-01');

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

CREATE TABLE `classe` (
  `id_classe` int(11) NOT NULL,
  `intitule` varchar(255) NOT NULL,
  `etude` varchar(255) NOT NULL,
  `promotion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `classe`
--

INSERT INTO `classe` (`id_classe`, `intitule`, `etude`, `promotion`) VALUES
(1, 'SIO alternance', 'BTS', '2018-2020'),
(8, 'SIO continue', 'BTS', '2018-2020');

-- --------------------------------------------------------

--
-- Structure de la table `competences`
--

CREATE TABLE `competences` (
  `id_comp` int(11) NOT NULL,
  `intitule` varchar(255) NOT NULL,
  `option_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `competences`
--

INSERT INTO `competences` (`id_comp`, `intitule`, `option_id`, `description`) VALUES
(1, 'A1.1.1', 0, 'Analyse du cahier des charges d\'un service à produire.'),
(2, 'A1.1.2', 0, 'Étude de l\'impact de l\'intégration d\'un service sur le système informatique.'),
(3, 'A1.1.3', 0, 'Étude des exigences liées à la qualité attendue d\'un service.'),
(4, 'A1.2.1', 0, 'Élaboration et présentation d\'un dossier de choix de solution technique.'),
(5, 'A1.2.2', 0, 'Rédaction des spécifications techniques de la solution retenue.'),
(6, 'A1.2.3', 0, 'Évaluation des risques liés à l\'utilisation d\'un service.'),
(7, 'A1.2.4', 0, 'Détermination des tests nécessaires à la validation d\'un service.'),
(8, 'A1.2.5', 0, 'Définition des niveaux d\'habilitation associés à un service.'),
(9, 'A1.3.1', 0, 'Test d\'intégration et d\'acceptation d\'un service.'),
(10, 'A1.3.2', 0, 'Définition des éléments nécessaires à la continuité d\'un service.'),
(11, 'A1.3.3', 0, 'Accompagnement de la mise en place d\'un nouveau service.'),
(12, 'A1.3.4', 0, 'Déploiement d\'un service.'),
(13, 'A1.4.1', 0, 'Participation à un projet.'),
(14, 'A1.4.2', 0, 'Évaluation des indicateurs de suivi d\'un projet et justification des écarts.'),
(15, 'A1.4.3', 0, 'Gestion des ressources.'),
(16, 'A2.1.1', 0, 'Accompagnement des utilisateurs dans la prise en main d\'un service.'),
(18, 'A2.2.1', 0, 'Suivi et résolution d\'incidents.'),
(19, 'A2.2.2', 0, 'Suivi et réponse à des demandes d\'assistance.'),
(20, 'A2.2.3', 0, 'Réponse à une interruption de service.'),
(21, 'A2.3.1', 0, 'Identification, qualification et évaluation d\'un problème.'),
(22, 'A2.3.2', 0, 'Proposition d\'amélioration d\'un service.'),
(23, 'A3.2.1', 0, 'Installation et configuration d\'éléments d\'infrastructure.'),
(24, 'A3.2.2', 0, 'Remplacement ou mise à jour d\'éléments défectueux ou obsolètes.'),
(25, 'A4.1.1', 1, 'Proposition d\'une solution applicative.'),
(27, 'A4.1.3', 0, 'Conception ou adaptation d\'une base de données.'),
(28, 'A2.1.2', 0, 'Évaluation et maintien de la qualité d\'un service.'),
(29, 'A4.1.4', 1, 'Définition des caractéristiques d\'une solution applicative.'),
(30, 'A4.1.5', 1, 'Prototypage de composants logiciels.'),
(31, 'A4.1.6', 1, 'Gestion d\'environnements de développement et de test.'),
(32, 'A4.1.7', 0, 'Développement, utilisation ou adaptation de composants logiciels.'),
(33, 'A4.1.8', 0, 'Réalisation des tests nécessaires à la validation d\'éléments adaptés ou développés.'),
(34, 'A4.1.9', 1, 'Rédaction d\'une documentation technique.'),
(35, 'A4.1.10', 1, 'Rédaction d\'une documentation d\'utilisation.'),
(36, 'A4.2.1', 1, 'Analyse et correction d\'un dysfonctionnement, d\'un problème de qualité de …'),
(37, 'A4.2.2', 1, 'Adaptation d\'une solution applicative aux évolutions de ses composants.'),
(38, 'A4.2.3', 1, 'Réalisation des tests nécessaires à la mise en production d\'éléments mis à jour.'),
(39, 'A4.2.4', 1, 'Mise à jour d\'une documentation technique.'),
(40, 'A5.1.1', 0, 'Mise en place d\'une gestion de configuration.'),
(41, 'A5.1.2', 1, 'Recueil d\'informations sur une configuration et ses éléments.'),
(42, 'A5.1.3', 0, 'Suivi d\'une configuration et de ses éléments.'),
(44, 'A5.1.5', 0, 'Évaluation d\'un élément de configuration ou d\'une configuration.'),
(45, 'A5.1.6', 0, 'Évaluation d\'un investissement informatique.'),
(46, 'A5.2.1', 0, 'Exploitation des référentiels, normes et standards adoptés par le prestataire.'),
(47, 'A5.2.2', 0, 'Veille technologique.'),
(48, 'A5.2.3', 0, 'Repérage des compléments de formation ou d\'auto-formation ...'),
(49, 'A5.2.4', 0, 'Étude d˜une technologie, d\'un composant, d\'un outil ou d\'une méthode.'),
(50, 'A3.1.1', 2, 'Proposition d\'une solution d\'infrastructure.'),
(51, 'A3.1.2', 2, 'Maquettage et prototypage d\'une solution d\'infrastructure.'),
(52, 'A3.1.3', 2, 'Prise en compte du niveau de sécurité nécessaire à une infrastructure.'),
(53, 'A3.2.3', 2, 'Mise à jour de la documentation technique d\'une solution d\'infrastructure.'),
(54, 'A3.3.1', 2, 'Administration sur site ou à distance des éléments d\'un réseau, de serveurs, …'),
(55, 'A3.3.2', 1, 'Planification des sauvegardes et gestion des restauration.'),
(56, 'A3.3.3', 2, 'Gestion des identités et des habilitations.'),
(57, 'A3.3.4', 2, 'Automatisation des tâches d\'administration.'),
(58, 'A3.3.5', 2, 'Gestion des indicateurs et des fichiers d\'activité.'),
(59, 'A4.1.2', 0, 'Conception ou adaptation de l\'interface utilisateur d\'une solution applicative.'),
(60, 'A5.1.4', 0, 'Étude de propositions de contrat de service (client, fournisseur).'),
(61, 'Situation Obligatoire', 1, 'élaboration de documents relatifs à la production et à la fourniture de services.'),
(62, 'Situation Obligatoire', 1, 'Productions relatives à la mise en place d’un dispositif de veille technologique et à l’étude d’une technologie, d’un composant, d’un outil ou d’une méthode.'),
(63, 'Situation Obligatoire', 2, 'Participation à un projet d’évolution d’un SI (solution applicative et d’infrastructure portant prioritairement sur le domaine de spécialité du candidat).'),
(64, 'Situation Obligatoire', 2, 'Prise en charge d’incidents et de demandes d’assistance liés au domaine de spécialité du candidat.'),
(65, 'Situation Obligatoire', 2, 'élaboration de documents relatifs à la production et à la fourniture de services'),
(66, 'Situation Obligatoire', 2, 'Productions relatives à la mise en place d’un dispositif de veille technologique et à l’étude d’une technologie, d’un composant, d’un outil ou d’une méthode.');

-- --------------------------------------------------------

--
-- Structure de la table `compteurVisiteur`
--

CREATE TABLE `compteurVisiteur` (
  `id_cpVr` int(11) NOT NULL,
  `vue` int(16) NOT NULL,
  `vueD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `compteurVisiteur`
--

INSERT INTO `compteurVisiteur` (`id_cpVr`, `vue`, `vueD`) VALUES
(1, 230, 186);

-- --------------------------------------------------------

--
-- Structure de la table `grade`
--

CREATE TABLE `grade` (
  `id_grade` int(11) NOT NULL,
  `name_grade` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `grade`
--

INSERT INTO `grade` (`id_grade`, `name_grade`) VALUES
(1, 'Administrateur'),
(2, 'Professeur'),
(3, 'Élève');

-- --------------------------------------------------------

--
-- Structure de la table `like_projet`
--

CREATE TABLE `like_projet` (
  `id_like` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_projet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `like_projet`
--

INSERT INTO `like_projet` (`id_like`, `id_user`, `id_projet`) VALUES
(12, 32, 6),
(16, 7, 6),
(17, 7, 8),
(22, 32, 8),
(28, 25, 7),
(29, 32, 7),
(30, 14, 7),
(31, 7, 9),
(32, 14, 12),
(33, 32, 9),
(34, 46, 9);

-- --------------------------------------------------------

--
-- Structure de la table `matter`
--

CREATE TABLE `matter` (
  `id_matter` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `matter`
--

INSERT INTO `matter` (`id_matter`, `title`) VALUES
(1, 'Programmation'),
(2, 'Réseau');

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `id_msg` int(11) NOT NULL,
  `id_sender` int(11) NOT NULL,
  `id_receiver` int(11) NOT NULL,
  `date_time` datetime NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `message`
--

INSERT INTO `message` (`id_msg`, `id_sender`, `id_receiver`, `date_time`, `message`) VALUES
(1, 36, 23, '2019-07-03 15:41:49', 'coucou seb'),
(2, 36, 23, '2019-07-03 15:45:30', '???'),
(3, 36, 23, '2019-07-03 15:47:18', 'pardon c\'est pas moi'),
(4, 32, 38, '2019-07-04 15:25:01', 'Bonjour, Alizée nous avons récement obtenu des plaintes fesant l\'utilisation de nos commandes, nous tu rappelons que l\'usage de ses commandes est propre aux administrateur comme moi, si cela dois se représenter nous devrons appliquer une sanction, Bonne continuation sur WOS ! Admin wos (arno)<img alt=\"????\" class=\"emojioneemoji\" src=\"https://cdn.jsdelivr.net/emojione/assets/3.1/png/32/1f607.png\"/>'),
(5, 32, 38, '2019-07-04 15:27:17', 'Pour tout autre information concernant ses soucis veuillez les référés aux administrateur disponnible dans le tableau de bord à la connexion. Admin wos (arno)<img alt=\"????\" class=\"emojioneemoji\" src=\"https://cdn.jsdelivr.net/emojione/assets/3.1/png/32/1f607.png\"/>'),
(6, 14, 7, '2019-07-05 16:58:30', 'tet'),
(7, 14, 7, '2019-07-05 16:58:32', 'test'),
(8, 14, 7, '2019-07-05 16:58:41', 'lol ca marche <img alt=\"????\" class=\"emojioneemoji\" src=\"https://cdn.jsdelivr.net/emojione/assets/3.1/png/32/1f923.png\"/>'),
(9, 14, 7, '2019-07-05 16:58:52', 'c resolut'),
(10, 16, 14, '2019-07-05 17:03:48', 'gg ! mec'),
(11, 14, 16, '2019-07-05 17:04:43', '<img alt=\"????\" class=\"emojioneemoji\" src=\"https://cdn.jsdelivr.net/emojione/assets/3.1/png/32/1f44d.png\"/> merci xD'),
(12, 14, 7, '2019-07-08 13:33:18', 'CACA'),
(13, 14, 32, '2019-07-08 14:49:50', 'test'),
(14, 14, 32, '2019-07-08 14:54:10', 'segegsgsg'),
(15, 46, 13, '2019-07-08 16:18:12', 'Hey bro'),
(16, 47, 7, '2019-07-08 16:25:34', 'Salut IGOR<img alt=\"????\" class=\"emojioneemoji\" src=\"https://cdn.jsdelivr.net/emojione/assets/3.1/png/32/1f920.png\"/>'),
(17, 14, 48, '2019-07-08 18:42:54', 'Bienvenue !!! <img alt=\"????\" class=\"emojioneemoji\" src=\"https://cdn.jsdelivr.net/emojione/assets/3.1/png/32/1f601.png\"/>'),
(18, 48, 14, '2019-07-08 18:45:39', '^^'),
(19, 14, 48, '2019-07-08 18:45:44', 'XD'),
(20, 14, 48, '2019-07-08 18:46:03', '<img alt=\"????\" class=\"emojioneemoji\" src=\"https://cdn.jsdelivr.net/emojione/assets/3.1/png/32/1f44c.png\"/>test');

-- --------------------------------------------------------

--
-- Structure de la table `message_projet`
--

CREATE TABLE `message_projet` (
  `id_message` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `id_sender` int(11) NOT NULL,
  `id_projet` int(11) NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `message_projet`
--

INSERT INTO `message_projet` (`id_message`, `content`, `id_sender`, `id_projet`, `date_time`) VALUES
(1, 'TEST DE COMMENTAIRE', 14, 7, '2019-07-05 12:15:23'),
(2, 'lol', 14, 7, '2019-07-05 16:32:26'),
(5, '<img alt=\"????\" class=\"emojioneemoji\" src=\"https://cdn.jsdelivr.net/emojione/assets/3.1/png/32/1f923.png\"/>', 14, 7, '2019-07-05 16:38:45'),
(6, 'CA MARCHE !!!! <img alt=\"????\" class=\"emojioneemoji\" src=\"https://cdn.jsdelivr.net/emojione/assets/3.1/png/32/1f600.png\"/>', 14, 7, '2019-07-05 16:39:30'),
(7, 'C trop bien', 25, 7, '2019-07-08 11:59:44'),
(8, '<img alt=\"????\" class=\"emojioneemoji\" src=\"https://cdn.jsdelivr.net/emojione/assets/3.1/png/32/1f62d.png\"/>', 32, 7, '2019-07-08 11:59:59');

-- --------------------------------------------------------

--
-- Structure de la table `notif`
--

CREATE TABLE `notif` (
  `id_notif` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL,
  `page` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `icon` varchar(55) NOT NULL DEFAULT 'notifications',
  `date_sended` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `notif`
--

INSERT INTO `notif` (`id_notif`, `text`, `id_user`, `page`, `active`, `icon`, `date_sended`) VALUES
(4, 'Nouveau message de <strong>John D</strong>', 10, 'profil.php?profil=14', 1, 'notifications', '0000-00-00 00:00:00'),
(24, 'Nouveau message de <strong>Maxence G</strong>', 17, 'profil.php?profil=14', 1, 'notifications', '0000-00-00 00:00:00'),
(25, 'Nouveau message de <strong>Maxence G</strong>', 17, 'profil.php?profil=14', 1, 'notifications', '0000-00-00 00:00:00'),
(52, 'Vous avez un message de <br/><strong>Arno C</strong>', 26, 'profil.php?profil=16', 1, 'chat_bubble', '2019-06-14 11:56:38'),
(64, 'Vous avez un message de <br/><strong>Maxence G</strong>', 13, 'profil.php?profil=14', 1, 'chat_bubble', '2019-06-14 12:50:00'),
(65, 'Vous avez un message de <br/><strong>Maxence G</strong>', 25, 'profil.php?profil=14', 0, 'chat_bubble', '2019-06-14 12:51:03'),
(72, 'Vous avez un message de <br/><strong>Maxence G</strong>', 30, 'profil.php?profil=14', 1, 'chat_bubble', '2019-06-17 14:57:10'),
(73, 'Vous avez un message de <br/><strong>Igor G</strong>', 10, 'profil.php?profil=7', 1, 'chat_bubble', '2019-06-17 15:13:11'),
(83, 'Vous avez un message de <br/><strong>Maxence G</strong>', 34, 'profil.php?profil=14', 1, 'chat_bubble', '2019-06-24 11:52:40'),
(84, 'Vous avez un message de <br/><strong>Maxence G</strong>', 34, 'profil.php?profil=14', 1, 'chat_bubble', '2019-06-24 11:52:45'),
(95, 'Vous avez un message de <br/><strong>Alizée F</strong>', 23, 'profil.php?profil=36', 1, 'chat_bubble', '2019-07-03 15:41:49'),
(96, 'Vous avez un message de <br/><strong>Alizée F</strong>', 23, 'profil.php?profil=36', 1, 'chat_bubble', '2019-07-03 15:45:30'),
(97, 'Vous avez un message de <br/><strong>Alizée F</strong>', 23, 'profil.php?profil=36', 1, 'chat_bubble', '2019-07-03 15:47:18'),
(98, 'Vous avez un message de <br/><strong>WOS A</strong>', 38, 'profil.php?profil=32', 1, 'chat_bubble', '2019-07-04 15:25:01'),
(99, 'Vous avez un message de <br/><strong>WOS A</strong>', 38, 'profil.php?profil=32', 1, 'chat_bubble', '2019-07-04 15:27:17'),
(114, 'Vous avez un message de <br/><strong>Maxence G</strong>', 32, 'profil.php?profil=14', 0, 'chat_bubble', '2019-07-08 14:49:50'),
(115, 'Vous avez un message de <br/><strong>Maxence G</strong>', 32, 'profil.php?profil=14', 0, 'chat_bubble', '2019-07-08 14:54:10'),
(120, 'Votre projet a été noté', 14, 'page-projets.php?projetgp=12', 0, 'school', '2019-07-08 15:54:14'),
(121, 'Vous avez un message de <br/><strong>quentin j</strong>', 13, 'profil.php?profil=46', 1, 'chat_bubble', '2019-07-08 16:18:12'),
(123, 'Vous avez un message de <br/><strong>Maxence G</strong>', 48, 'profil.php?profil=14', 0, 'chat_bubble', '2019-07-08 18:42:54'),
(124, 'Vous avez un message de <br/><strong>Lilou C</strong>', 14, 'profil.php?profil=48', 0, 'chat_bubble', '2019-07-08 18:45:39'),
(125, 'Vous avez un message de <br/><strong>Maxence G</strong>', 48, 'profil.php?profil=14', 0, 'chat_bubble', '2019-07-08 18:45:44'),
(126, 'Vous avez un message de <br/><strong>Maxence G</strong>', 48, 'profil.php?profil=14', 0, 'chat_bubble', '2019-07-08 18:46:03');

-- --------------------------------------------------------

--
-- Structure de la table `projets`
--

CREATE TABLE `projets` (
  `projet_id` int(11) NOT NULL,
  `activite_id` int(11) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `users_id` varchar(255) NOT NULL,
  `competences_id` varchar(255) NOT NULL,
  `competences_acquises` varchar(255) DEFAULT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `images_id` varchar(255) NOT NULL,
  `date_created` date NOT NULL,
  `user_creator` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `projets`
--

INSERT INTO `projets` (`projet_id`, `activite_id`, `titre`, `description`, `users_id`, `competences_id`, `competences_acquises`, `completed`, `images_id`, `date_created`, `user_creator`) VALUES
(8, 8, 'WOS A test 3', 'test', '13,19,', '1,', NULL, 0, ',,,,5,,', '2019-07-04', 32),
(9, 2, 'Igor G PPE 1', 'Blablabla', '16,31,14,', '1,2,3,4,5,', NULL, 0, '1,2,3,,,,', '2019-07-04', 7),
(12, 2, 'Maxence G PPE 1', 'test', '', '1,2,3,4,5,6,7,8,9,10,11,12,13,62,', '1,6,', 0, '1,,,,,,', '2019-07-08', 14);

-- --------------------------------------------------------

--
-- Structure de la table `specialite`
--

CREATE TABLE `specialite` (
  `id_spec` int(11) NOT NULL,
  `option` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `specialite`
--

INSERT INTO `specialite` (`id_spec`, `option`) VALUES
(1, 'SLAM'),
(2, 'SISR');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `age` date DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `grade` int(11) NOT NULL DEFAULT '3',
  `classe` int(11) NOT NULL,
  `img` int(11) DEFAULT NULL,
  `entreprise` varchar(255) NOT NULL DEFAULT 'Pas d''entreprise',
  `adresse_ent` varchar(255) NOT NULL DEFAULT 'Pas d''adresse',
  `description` varchar(1000) NOT NULL DEFAULT 'Pas de description',
  `matter_id` int(11) NOT NULL,
  `competences_selected` varchar(255) DEFAULT NULL,
  `competences_acquired` varchar(255) DEFAULT NULL,
  `spec_id` int(11) NOT NULL,
  `theme` int(11) NOT NULL,
  `notif` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id_user`, `firstname`, `lastname`, `age`, `password`, `mail`, `grade`, `classe`, `img`, `entreprise`, `adresse_ent`, `description`, `matter_id`, `competences_selected`, `competences_acquired`, `spec_id`, `theme`, `notif`) VALUES
(7, 'Igor', 'Gomes', '1999-11-16', '$2y$10$3NQi/j5kA6pO6M0OuDcEnOkhSAIO506B9fqj3Uzt7hWOiBcfS5xae', 'igorwot39@gmail.com', 1, 1, 53, 'Agence Esprit Nomade', '2, rue du curé marion, Lons-le-Saunier', 'Web front', 0, '2,5,8,10,11,21,30,54', '2,8,10,11,30', 1, 1, 1),
(10, 'John', 'Doe', NULL, '$2y$10$wqMTsORb7m1tLBBnzsEonu/rAq2BkQKwUeEbe73fiuiI9WfQSokh2', '', 2, 0, 3, 'Lycée Pasteur Mont Roland', '9 Avenue Rockefeller, 39100 Dole', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vel pellentesque dui.', 1, '4,15,35,50,42', '15,35,42', 0, 0, 0),
(13, 'Emmanuel', 'Macron', NULL, '$2y$10$PFFYiOIkyy0YVxuPvl3yF.AGufrZ3ffBLCi7OUR7Cs0sIi30gFYtu', 'manu', 2, 0, 19, 'Le Palais de L\'Élysée', '55, rue du Faubourg-Saint-Honoré à Paris', 'Président de la république française', 2, '', '', 0, 0, 0),
(14, 'Maxence', 'Garbin', NULL, '$2y$10$SnHJwP7miuBMd/SromEtC.cXlrw0SuZbNneZEJuxZOSOq9aBk9pf6', 'garbin.maxence@gmail.com', 1, 1, 777, 'Espi 21', '2 Route de Montbard, 21500 Marmagne', 'Président de la république française', 0, '1,5,3,7,20,25,60,36', '2,3,5,6,1,', 1, 1, 0),
(16, 'Arno', 'Coulat', '1999-02-13', '$2y$10$IS9qK7oJbRsMbUXLv3NQjO7iIZFJrDQOvyFdxsCTWkU11A5Lnwzr6', 'coulat.arno21110@gmail.com', 3, 1, 30, 'Ardec Métal', 'Rue Stephen Pichon, 39300 Champagnole', '', 0, '', '', 1, 0, 0),
(19, 'Julian', 'Courbez', NULL, '$2y$10$FVDSeDAGBPIJdkyvc7ZmsO9RZC7KIN1bZN4NzQSvwu6udFiPmy01S', 'totoototot', 2, 0, 4, 'Lycée Pasteur Mont Roland', '9 Avenue Rockefeller, 39100 Dole', '', 1, '', '', 0, 0, 0),
(23, 'Sébastien', 'Pernelle', NULL, '$2y$10$n.I7XUZaFGJyBkDHoXuK0ersaJYj8H/poNIP3oXA22.ad6Uk9KF6.', 'eqtseyrujhgt', 2, 0, 4, 'Lycée Pasteur Mont Roland', '9 Avenue Rockefeller, 39100 Dole', '', 1, NULL, '', 0, 0, 0),
(24, 'Arthur', 'Trouillon', NULL, '$2y$10$qnYR.CwEgJwgYwgtPLd3WO12nCSgCcoCTzrLiv2Pcw8mDo.dP2oe.', 'jean-michel-blanquer@educ.fr', 2, 0, 14, 'Lycée Pasteur Mont Roland', '9 Avenue Rockefeller, 39100 Dole', '', 2, NULL, NULL, 0, 0, 0),
(25, 'Jules', 'Urbano', NULL, '$2y$10$m6K5On6aRs6cW/ypylhF/.Gbm3iZplaI/N8cNDnMd8vV..kv4RBkm', 'coulat.arno21110@gmail.com', 3, 1, 20, 'Pas d\'entreprise', 'Pas d\'adresse', 'Pas de description', 0, NULL, NULL, 2, 0, 0),
(31, 'Luca', 'Mercier', '2000-04-26', '$2y$10$5/04hQKEqnxv5uL38qdsbeFyzu5WmKiehiFStQcVSgtZ8VUOdAMji', 'lucamm@live.fr', 3, 1, 3, 'Dealtis', '10 rue claude girard Vaux-les-près', 'Pas de description', 0, NULL, NULL, 1, 0, 0),
(32, 'WOS', 'Arno', '1999-02-13', '$2y$10$gHacmNkIE4NkZx5NuosENOreZRIDalOSaX3lfXWw3wmCGQonJbMFm', 'admin', 1, 0, 667, 'Arno Corporation', 'Zi la planchette Champagnole', 'Hey salut tout le monde !', 0, NULL, NULL, 1, 1, 1),
(34, 'Maxime', 'LeGros', '2000-06-30', '$2y$10$64Ui0hTw6JALdTHElXAmyesg/oHRoY.XwtB.DdQtsupVOlRqcz3vK', 'M.gros@gros.fr', 3, 8, 18, 'LDLC Paris', '12-14 Rue de l\'Église, 75015 Paris', 'Pas de description', 0, NULL, NULL, 2, 0, 0),
(37, 'Sonia', 'Gomes', '1991-09-19', '$2y$10$Tj1aY2aiQxWqlSHLT8OrGuA3E//witzHPqCil7qnxs1OD3YdUZefm', 'sonluxgomes@gmail.com', 3, 1, 29, 'QUALIMS', '26 avenue léon jouhoux Dole', 'Pas de description', 0, NULL, NULL, 1, 0, 0),
(46, 'quentin', 'jacot', '1999-11-02', '$2y$10$d69y.mhCyWaXJbZUC1C8SOP.wf0mOZFEcNI1HxakWyrH0inZWFcPy', 'quentin.jacot5@gmail.com', 3, 1, 17, 'Binary System Ofline', 'chemin des jardin, montcuq', 'Pas de description', 0, NULL, NULL, 2, 1, 1),
(47, 'Alizee', 'FORMENTINI', '1995-08-31', '$2y$10$zaTvZH5Jnpd8c95yYt7mE.a6NyBs/RORCihAsAAqFtRz6479KtfJ.', 'alizee.formentini@gmail.com', 3, 1, 21, 'IPneos', '5 rue des Lochés, 71100 SEVREY', 'Pas de description', 0, NULL, NULL, 2, 1, 1),
(48, 'Lilou', 'Codfert', '2000-02-10', '$2y$10$LaRmJtYbEbgfQ12iLdIxauUhHVX3XqyvZ8yWSNqopgFKhxD8ZtfMy', 'liou.codfert@free.fr', 3, 1, 16, 'Pas d\'entreprise', 'Pas d\'adresse', 'Pas de description', 0, NULL, NULL, 1, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `visiteur`
--

CREATE TABLE `visiteur` (
  `ip` varchar(255) NOT NULL,
  `temps` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `visiteur`
--

INSERT INTO `visiteur` (`ip`, `temps`) VALUES
('93.22.151.132', '1562656521'),
('93.23.14.102', '1562656812');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `activites`
--
ALTER TABLE `activites`
  ADD PRIMARY KEY (`id_activite`);

--
-- Index pour la table `actualites`
--
ALTER TABLE `actualites`
  ADD PRIMARY KEY (`act_id`);

--
-- Index pour la table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`id_classe`);

--
-- Index pour la table `competences`
--
ALTER TABLE `competences`
  ADD PRIMARY KEY (`id_comp`);

--
-- Index pour la table `compteurVisiteur`
--
ALTER TABLE `compteurVisiteur`
  ADD PRIMARY KEY (`id_cpVr`);

--
-- Index pour la table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`id_grade`);

--
-- Index pour la table `like_projet`
--
ALTER TABLE `like_projet`
  ADD PRIMARY KEY (`id_like`);

--
-- Index pour la table `matter`
--
ALTER TABLE `matter`
  ADD PRIMARY KEY (`id_matter`);

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id_msg`);

--
-- Index pour la table `message_projet`
--
ALTER TABLE `message_projet`
  ADD PRIMARY KEY (`id_message`);

--
-- Index pour la table `notif`
--
ALTER TABLE `notif`
  ADD PRIMARY KEY (`id_notif`);

--
-- Index pour la table `projets`
--
ALTER TABLE `projets`
  ADD PRIMARY KEY (`projet_id`);

--
-- Index pour la table `specialite`
--
ALTER TABLE `specialite`
  ADD PRIMARY KEY (`id_spec`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `activites`
--
ALTER TABLE `activites`
  MODIFY `id_activite` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `actualites`
--
ALTER TABLE `actualites`
  MODIFY `act_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `classe`
--
ALTER TABLE `classe`
  MODIFY `id_classe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `competences`
--
ALTER TABLE `competences`
  MODIFY `id_comp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT pour la table `compteurVisiteur`
--
ALTER TABLE `compteurVisiteur`
  MODIFY `id_cpVr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `grade`
--
ALTER TABLE `grade`
  MODIFY `id_grade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `like_projet`
--
ALTER TABLE `like_projet`
  MODIFY `id_like` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT pour la table `matter`
--
ALTER TABLE `matter`
  MODIFY `id_matter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `id_msg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `message_projet`
--
ALTER TABLE `message_projet`
  MODIFY `id_message` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `notif`
--
ALTER TABLE `notif`
  MODIFY `id_notif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT pour la table `projets`
--
ALTER TABLE `projets`
  MODIFY `projet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `specialite`
--
ALTER TABLE `specialite`
  MODIFY `id_spec` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
