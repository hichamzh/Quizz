-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 02 juil. 2023 à 01:23
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `qcm`
--

-- --------------------------------------------------------

--
-- Structure de la table `choix`
--

CREATE TABLE `choix` (
  `id_choix` int(10) NOT NULL,
  `id_utilisateur` int(10) NOT NULL,
  `id_theme` int(10) NOT NULL,
  `niveau` text NOT NULL,
  `score` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date_user` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `choix`
--

INSERT INTO `choix` (`id_choix`, `id_utilisateur`, `id_theme`, `niveau`, `score`, `time`, `date_user`) VALUES
(59, 20, 8, 'facile', '4', '0:11', '2023-07-02');

-- --------------------------------------------------------

--
-- Structure de la table `questions`
--

CREATE TABLE `questions` (
  `id_question` int(11) NOT NULL,
  `question` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type` int(20) NOT NULL,
  `niveau` text NOT NULL,
  `id_theme` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `questions`
--

INSERT INTO `questions` (`id_question`, `question`, `type`, `niveau`, `id_theme`) VALUES
(3, 'Quel est le sport le plus populaire dans le monde ?', 1, 'facile', 7),
(4, 'Quel pays a remporté le plus de coupes du monde ?', 1, 'facile', 7),
(5, 'Combien de joueurs y a-t-il dans une équipe de football ?', 1, 'facile', 7),
(6, 'Quel est le nom du trophée remis au vainqueur de la coupe du monde ?', 1, 'facile', 7),
(7, 'Quel joueur de football est surnommé \"La Pulga\" ?', 1, 'facile', 7),
(8, 'Combien de temps dure un match de football ?', 1, 'facile', 7),
(9, 'Quel joueur a remporté le Ballon d\'Or en 2021 ?', 1, 'facile', 7),
(10, 'Quel est le nom du stade du Real Madrid ?', 1, 'facile', 7),
(11, 'Qui est l\'entraîneur actuel de l\'équipe de France de football ?', 1, 'facile', 7),
(12, 'Quel joueur est considéré comme le meilleur buteur de l\'histoire du football ?', 1, 'facile', 7),
(13, 'Quel est le nom de l\'équipe de football de Barcelone ?', 1, 'facile', 7),
(14, 'Quel joueur de football est surnommé \"CR7\" ?', 1, 'facile', 7),
(15, 'Dans quel pays a eu lieu la coupe du monde de football en 2018 ?', 1, 'facile', 7),
(16, 'Quel est le nom de l\'équipe de football de Liverpool ?', 1, 'facile', 7),
(17, 'Quel est le nom de l\'équipe de football de Manchester United ?', 1, 'facile', 7),
(18, 'Quel joueur a remporté le Ballon d\'Or le plus de fois ?', 1, 'facile', 7),
(19, 'Qui est l\'entraîneur actuel de l\'équipe de football du Real Madrid ?', 1, 'facile', 7),
(31, 'Quel joueur de football est surnommé \"Neymar Jr\" ?', 1, 'facile', 7),
(32, 'Quel est le nom de l\'équipe de football de Paris ?', 1, 'facile', 7),
(35, 'Dans quel pays a eu lieu la coupe du monde de football en 2014 ?', 1, 'facile', 7),
(37, 'Quel joueur a remporté le Ballon d\'Or en 2019 ?', 1, 'facile', 7),
(39, '28 Quel joueur a remporté le Ballon d\'Or en 2018 ?', 1, 'facile', 7),
(40, 'Dans quel pays a été créé le football moderne? ', 1, 'facile', 7),
(41, 'Dans quelle ville se trouve le stade Maracanã? ', 1, 'facile', 7),
(42, 'Qui a remporté la coupe du monde de football en 2010 ?', 1, 'facile', 7),
(43, 'Quel joueur a remporté le Ballon d\'Or en 2020 ?', 1, 'facile', 7),
(44, 'Le basketball se joue avec un ballon rond.', 0, 'facile', 8),
(45, 'Les matchs de basketball se déroulent en quatre quarts-temps ?', 0, 'facile', 8),
(46, 'Un panier réussi à l\'intérieur de l\'arc vaut 2 points ?', 0, 'facile', 8),
(47, 'Le tir à trois points est plus proche du panier que le tir à deux points ?', 0, 'facile', 8),
(48, 'Le dunk est une action où un joueur saute et met le ballon directement dans le panier ?', 0, 'facile', 8),
(49, 'Le basketball est un sport collectif opposant deux équipes de cinq joueurs ?', 0, 'facile', 8),
(50, 'Les joueurs peuvent dribbler le ballon en utilisant leurs pieds ?', 0, 'facile', 8),
(51, 'Les fautes personnelles sont sanctionnées par des lancers francs pour l\'équipe adverse ?', 0, 'facile', 8),
(52, 'Les joueurs peuvent marquer des points en lançant le ballon hors du terrain ?', 0, 'facile', 8),
(53, 'Les joueurs doivent dribbler le ballon tout en se déplaçant ?', 0, 'facile', 8),
(54, 'Le joueur ayant le plus de points à la fin du match est désigné MVP (Joueur le plus précieux) ?', 0, 'facile', 8),
(55, 'Le basketball est un sport originaire des États-Unis ?', 0, 'facile', 8),
(56, 'Les matchs de basketball durent généralement 60 minutes ?', 0, 'facile', 8),
(57, 'Les matchs de basketball se jouent à l\'intérieur seulement ?', 0, 'facile', 8),
(58, 'Les joueurs peuvent effectuer des passes à leurs coéquipiers ?', 0, 'facile', 8),
(59, 'Les joueurs portent des maillots numérotés sur le terrain ?', 0, 'facile', 8),
(60, 'Les joueurs peuvent bloquer les tirs de leurs adversaires ?', 0, 'facile', 8),
(61, 'Un match de basketball se termine lorsque l\'une des équipes atteint 100 points ?', 0, 'facile', 8),
(62, 'Les joueurs doivent dribbler le ballon toutes les cinq secondes ?', 0, 'facile', 8),
(63, 'Les équipes de basketball peuvent effectuer des remplacements pendant le match ?', 0, 'facile', 8);

-- --------------------------------------------------------

--
-- Structure de la table `reponses`
--

CREATE TABLE `reponses` (
  `id_reponse` int(11) NOT NULL,
  `id_question` int(11) NOT NULL,
  `reponse` varchar(100) NOT NULL,
  `etat` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `reponses`
--

INSERT INTO `reponses` (`id_reponse`, `id_question`, `reponse`, `etat`) VALUES
(3, 3, 'Le football.', 0),
(4, 4, 'Le brésil.', 0),
(5, 5, '11 joueurs', 0),
(6, 6, 'La coupe du monde de la FIFA.', 0),
(7, 7, 'Lionel Messi', 0),
(8, 8, '90 minutes.', 0),
(9, 9, 'Lionel Messi.', 0),
(10, 10, 'Le Santiago Bernabeu.', 0),
(11, 11, 'Didier Deschamps.', 0),
(12, 12, 'Pelé', 0),
(13, 13, 'FC Barcelone', 0),
(14, 14, 'Cristiano Ronaldo', 0),
(15, 15, 'La Russie', 0),
(16, 16, 'Liverpool FC', 0),
(17, 17, 'Manchester United FC', 0),
(18, 18, ' Lionel Messi (7 fois)', 0),
(20, 3, 'Le Rugby ', 1),
(21, 5, '15 joueurs', 1),
(22, 6, 'Le ballon d\'or', 1),
(23, 7, 'Steve Mandanda', 1),
(24, 8, '80 minutes', 1),
(25, 9, 'Olivier Giroud', 1),
(26, 10, 'Le San Siro', 1),
(27, 11, 'Laurent Blanc', 1),
(28, 4, 'L\'Algérie', 1),
(29, 12, 'Didier Deschamps', 1),
(30, 13, 'L\'olympique de Barcelone', 1),
(31, 14, 'Cavani', 1),
(32, 15, 'Corée du Nord', 1),
(33, 16, 'Les RED\'s', 1),
(34, 17, 'RC Manchester United', 1),
(35, 18, 'Karim Benzema', 1),
(36, 19, 'Igor Tudor', 1),
(37, 19, 'Carlo Ancelotti', 0),
(38, 31, 'Neymar', 0),
(39, 32, 'Paris Saint-Germain (PSG)', 0),
(40, 35, 'Le Brésil', 0),
(41, 37, 'Lionel Messi', 0),
(42, 39, 'Luka Modric', 0),
(43, 40, 'Royaume-Uni', 0),
(44, 41, 'Rio de Janeiro', 0),
(45, 42, 'L\'Espagne', 0),
(46, 43, 'Robert Lewandowski', 0),
(47, 31, 'Junior', 1),
(48, 32, 'Paris Football Club', 1),
(49, 35, 'Ghana', 1),
(50, 37, 'Karim Benzema', 1),
(51, 39, 'Manuel Neur', 1),
(52, 40, 'La Turquie', 1),
(53, 41, 'Montreal', 1),
(54, 42, 'L\'Equateur', 1),
(55, 43, 'Franck Ribéry', 1),
(56, 44, 'Vrai', 0),
(57, 44, 'Faux', 1),
(58, 45, 'Vrai', 0),
(59, 45, 'Faux', 1),
(60, 46, 'Vrai', 0),
(61, 46, 'Faux', 1),
(62, 47, 'Faux', 0),
(63, 47, 'Vrai', 1),
(64, 48, 'Vrai', 0),
(65, 48, 'Faux', 1),
(66, 49, 'Vrai', 0),
(67, 49, 'Faux', 1),
(68, 50, 'Faux', 0),
(69, 50, 'Vrai', 1),
(70, 51, 'Vrai', 0),
(71, 51, 'Faux', 1),
(72, 52, 'Faux', 0),
(73, 52, 'Vrai', 1),
(74, 53, 'Vrai', 0),
(75, 53, 'Faux', 1),
(76, 54, 'Faux', 0),
(77, 54, 'Vrai', 1),
(78, 55, 'Vrai', 0),
(79, 55, 'Faux', 1),
(80, 56, 'Faux', 0),
(81, 56, 'Vrai', 1),
(97, 57, 'Faux', 0),
(98, 57, 'Vrai', 1),
(99, 58, 'Vrai', 0),
(100, 58, 'Faux', 1),
(101, 59, 'Vrai', 0),
(102, 59, 'Faux', 1),
(103, 60, 'Vrai', 0),
(104, 60, 'Faux', 1),
(105, 61, 'Faux', 0),
(106, 61, 'Vrai', 1),
(107, 62, 'Faux', 0),
(108, 62, 'Vrai', 1),
(109, 63, 'Vrai', 0),
(110, 63, 'Faux', 1);

-- --------------------------------------------------------

--
-- Structure de la table `theme`
--

CREATE TABLE `theme` (
  `id_theme` int(11) NOT NULL,
  `id_score` int(11) DEFAULT NULL,
  `nom_theme` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image_theme` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `theme`
--

INSERT INTO `theme` (`id_theme`, `id_score`, `nom_theme`, `image_theme`) VALUES
(7, NULL, 'Football', 'football.jpg'),
(8, NULL, 'Basketball', 'basketball.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id_utilisateur` int(11) NOT NULL,
  `login` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mdp` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `roles` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id_utilisateur`, `login`, `mdp`, `roles`) VALUES
(20, 'utilisateur1', '$2y$10$exXxHCQMMo1cyY6MnHj1GuC99Pger6P/7z.sS7GgU0f6KVAGQhExu', 'user'),
(21, 'utilisateur2', '$2y$10$m9RXVsl3W1QpPIA44AcVHOoME2cmwLvDR.p/UF6YFNMj/0zzHkm2C', 'user'),
(22, 'utilisateur3', '$2y$10$//Vv0aHL0WEVtTt7/B2R4uv8aVMnJSs9Z7Zjfzk4BD7bZgP.q08zi', 'user'),
(23, 'utilisateur4', '$2y$10$/eXDFVcUEKPa3ti5v0/HGuCnDerSCejTksyMIcncPqfd4XsBmikLu', 'user'),
(24, 'utilisateur5', '$2y$10$HrvfAXrr.yqxGzrmnTfONu.T.eY20eKLjInCeKFKniO4bcMekpVne', 'user');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `choix`
--
ALTER TABLE `choix`
  ADD PRIMARY KEY (`id_choix`),
  ADD KEY `id_utilisateur` (`id_utilisateur`,`id_theme`),
  ADD KEY `id_theme` (`id_theme`);

--
-- Index pour la table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id_question`),
  ADD KEY `question` (`question`) USING BTREE,
  ADD KEY `type` (`type`) USING BTREE,
  ADD KEY `niveau` (`niveau`(768)) USING BTREE,
  ADD KEY `id_theme` (`id_theme`) USING BTREE;

--
-- Index pour la table `reponses`
--
ALTER TABLE `reponses`
  ADD PRIMARY KEY (`id_reponse`),
  ADD KEY `id_question` (`id_question`) USING BTREE,
  ADD KEY `reponse` (`reponse`) USING BTREE;

--
-- Index pour la table `theme`
--
ALTER TABLE `theme`
  ADD PRIMARY KEY (`id_theme`),
  ADD KEY `nom_theme` (`nom_theme`) USING BTREE,
  ADD KEY `id_score` (`id_score`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id_utilisateur`),
  ADD KEY `login` (`login`) USING BTREE,
  ADD KEY `mdp` (`mdp`) USING BTREE;

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `choix`
--
ALTER TABLE `choix`
  MODIFY `id_choix` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT pour la table `questions`
--
ALTER TABLE `questions`
  MODIFY `id_question` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT pour la table `reponses`
--
ALTER TABLE `reponses`
  MODIFY `id_reponse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT pour la table `theme`
--
ALTER TABLE `theme`
  MODIFY `id_theme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id_utilisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `choix`
--
ALTER TABLE `choix`
  ADD CONSTRAINT `choix_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`),
  ADD CONSTRAINT `choix_ibfk_2` FOREIGN KEY (`id_theme`) REFERENCES `theme` (`id_theme`);

--
-- Contraintes pour la table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`id_theme`) REFERENCES `theme` (`id_theme`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `reponses`
--
ALTER TABLE `reponses`
  ADD CONSTRAINT `reponses_ibfk_1` FOREIGN KEY (`id_question`) REFERENCES `questions` (`id_question`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
