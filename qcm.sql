-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 19 mai 2023 à 12:54
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
-- Base de données : `bd2`
--
CREATE DATABASE IF NOT EXISTS `bd2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bd2`;

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `id_fournisseur` int(11) NOT NULL,
  `code_fournisseur` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `raison_sociale` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rue_fournisseur` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code_postal` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `localite` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pays` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tel_fournisseur` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url_fournisseur` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email_fournisseur` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fax_fournisseur` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`id_fournisseur`, `code_fournisseur`, `raison_sociale`, `rue_fournisseur`, `code_postal`, `localite`, `pays`, `tel_fournisseur`, `url_fournisseur`, `email_fournisseur`, `fax_fournisseur`) VALUES
(1, '150', 'fournitor', 'avenue de fouri', '55633', 'pourger', 'fr', '', '', '', ''),
(2, '1250', 'Libreur', '152 ave du polert', '75025', 'paris', 'fr', '+33645785214', '', 'libreur@gmail.com', '');

-- --------------------------------------------------------

--
-- Structure de la table `livres`
--

CREATE TABLE `livres` (
  `id` int(11) NOT NULL,
  `nom_L` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `auteurs_L` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `editeur_L` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `annee` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nb_pages` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `livres`
--

INSERT INTO `livres` (`id`, `nom_L`, `auteurs_L`, `editeur_L`, `annee`, `nb_pages`) VALUES
(1, 'La ferme des animaux', 'Goerge Orwell', 'Hachette', '1999', '250'),
(2, 'l\'histoire fantastique', 'el fantastico', 'Livreur', '2022', '50'),
(3, 'Le codeur du net', 'Michel script', 'Codeureditor', '2018', '98'),
(4, 'Le Policier de l\'île', 'Karim el traoui', 'editor', '2017', '243');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD PRIMARY KEY (`id_fournisseur`);

--
-- Index pour la table `livres`
--
ALTER TABLE `livres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nom-L` (`nom_L`),
  ADD UNIQUE KEY `auteurs-L` (`auteurs_L`) USING BTREE;

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  MODIFY `id_fournisseur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `livres`
--
ALTER TABLE `livres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Base de données : `bdd`
--
CREATE DATABASE IF NOT EXISTS `bdd` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bdd`;

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `id_fournisseur` int(11) NOT NULL,
  `code_fournisseur` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `raison_sociale` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `rue_fournisseur` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code_postal` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `localite` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pays` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tel_fournisseur` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url_fournisseur` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email_fournisseur` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fax_fournisseur` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`id_fournisseur`, `code_fournisseur`, `raison_sociale`, `rue_fournisseur`, `code_postal`, `localite`, `pays`, `tel_fournisseur`, `url_fournisseur`, `email_fournisseur`, `fax_fournisseur`) VALUES
(1, '150', 'fournitor', 'avenue de fouri', '55633', 'pourger', 'fr', '', '', '', ''),
(2, '1250', 'Libreur', '152 ave du polert', '75025', 'paris', 'fr', '+33645785214', '', 'libreur@gmail.com', '');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `nom` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `prenom` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ville` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `login` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mdp` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`ID`, `nom`, `prenom`, `ville`, `login`, `mdp`) VALUES
(1, 'benkou', 'fethi', 'Marseille', 'Fbenkou', '1234'),
(2, 'Dupond', 'pierre', 'PARIGO', 'PDupond', 'Dupleduc'),
(3, 'Levefre', 'Yves', 'Nantes', 'YLefevre', 'lefefe&'),
(4, 'ben milou', 'Mohamed', 'Marseille', 'MBenmilou', 'ampder'),
(5, 'Cohen', 'Marc', 'Aix-en-provence', 'MCohen', 'Porschevillamama'),
(6, 'Baraka', 'Nassim', '', '', ''),
(7, 'benkou', 'fethi', '', '', ''),
(8, 'benkou', 'fethi', '', '', ''),
(9, 'benkou', 'fethi', 'Marseille', '', ''),
(10, 'test', 'test', 'test', '[value-5]', '[value-6]'),
(12, 'insertion', 'test', 'citytest', '', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD PRIMARY KEY (`id_fournisseur`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  MODIFY `id_fournisseur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Base de données : `bdd_livres`
--
CREATE DATABASE IF NOT EXISTS `bdd_livres` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bdd_livres`;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id_commande` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `id_fournisseur` int(11) NOT NULL,
  `date_achat` date NOT NULL,
  `prix_achat` decimal(5,0) NOT NULL,
  `nbr_exemplaires` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id_commande`, `ID`, `id_fournisseur`, `date_achat`, `prix_achat`, `nbr_exemplaires`) VALUES
(2, 1, 6, '2023-03-03', '25', 4),
(3, 14, 7, '2023-03-03', '50', 4);

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `id_fournisseur` int(11) NOT NULL,
  `Code_fournisseur` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Raison_sociale` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Rue_fournisseur` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Code_postal` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Localite` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Pays` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Tel_fournisseur` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Url_fournisseur` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Email_fournisseur` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Fax_fournisseur` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`id_fournisseur`, `Code_fournisseur`, `Raison_sociale`, `Rue_fournisseur`, `Code_postal`, `Localite`, `Pays`, `Tel_fournisseur`, `Url_fournisseur`, `Email_fournisseur`, `Fax_fournisseur`) VALUES
(6, '1', 'Le Fournisseur', 'RUE DU FOURNISSEUR', '13009', 'Marseille', 'France', '0610111213', 'Lefournisseur.org', 'FOURNISSOR@GMAIL.COM', '/'),
(7, '2', 'Fournitor', 'allée des fournitures ', '89751', 'Paris', 'FR', '061231225', 'fournisseur.fr', 'reu@gmail.com', '/'),
(8, '2', 'Fournitor', 'allée des fournitures ', '89751', 'Paris', 'FR', '061231225', 'fournisseur.fr', 'reu@gmail.com', '/'),
(10, '3', 'Albert', 'Rue de la feuille', '25126', 'Angers', 'FR', '0104050604', 'Lefournisseur.org', 'reu@gmail.com', '/');

-- --------------------------------------------------------

--
-- Structure de la table `livres`
--

CREATE TABLE `livres` (
  `ID` int(11) NOT NULL,
  `isbn` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `titre` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `theme` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nb_pages` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `format` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nom_auteur` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `prenom_auteur` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `editeur` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `annee_edition` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `prix` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `langue` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `livres`
--

INSERT INTO `livres` (`ID`, `isbn`, `titre`, `theme`, `nb_pages`, `format`, `nom_auteur`, `prenom_auteur`, `editeur`, `annee_edition`, `prix`, `langue`) VALUES
(1, 'ee', 'Harry Potter 1', 'ee', '305', 'livre de poche', 'Rowling', 'Rowling', 'J.K', '1999', '', '15.99'),
(2, '', 'Les misérables', '', '1630', 'Edition poche', 'Hugo', 'Victor', 'Pocket', '1862', '10.50', 'Français'),
(12, 'test', 'Titre', 'theme', 'pages', 'Format', 'Aut', 'AutP', 'Edt', '1234', '50', 'FR'),
(13, 'test', 'Titre', 'theme', 'pages', 'Format', 'Aut', 'AutP', 'Edt', '1234', '50', 'FR'),
(14, 'test1', 'TitreA', 'themeA', '987654', 'FormatA', 'AutA', 'AutA', 'AutPA', '9876', '', '98');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `ID` int(10) NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mdp` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Nom` varchar(30) NOT NULL,
  `Prenom` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id_commande`),
  ADD KEY `ID` (`ID`,`id_fournisseur`),
  ADD KEY `id_fournisseur` (`id_fournisseur`);

--
-- Index pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD PRIMARY KEY (`id_fournisseur`);

--
-- Index pour la table `livres`
--
ALTER TABLE `livres`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id_commande` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `fournisseur`
--
ALTER TABLE `fournisseur`
  MODIFY `id_fournisseur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `livres`
--
ALTER TABLE `livres`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`id_fournisseur`) REFERENCES `fournisseur` (`id_fournisseur`),
  ADD CONSTRAINT `commande_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `livres` (`ID`);
--
-- Base de données : `bd_ventes`
--
CREATE DATABASE IF NOT EXISTS `bd_ventes` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bd_ventes`;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_Cli` int(10) NOT NULL,
  `Nom` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Ville` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_Cli`, `Nom`, `Ville`) VALUES
(1, 'Thierry', 'Paris'),
(2, 'Hakim', 'Nimes'),
(3, 'Briac', 'Nimes'),
(4, 'Nassim', 'Trouville');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `Id_Pro` int(10) NOT NULL,
  `Nom` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Prix` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Qstock` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`Id_Pro`, `Nom`, `Prix`, `Qstock`) VALUES
(1, 'Toupie Iron', '24.99', 50),
(2, 'Toupie Flash', '24.99', 50),
(3, 'Toupie Best', '34.99', 25),
(4, 'La toupie', '19.99', 50);

-- --------------------------------------------------------

--
-- Structure de la table `vente`
--

CREATE TABLE `vente` (
  `Id_Vente` int(10) NOT NULL,
  `Id_Cli` int(10) NOT NULL,
  `Id_prod` int(10) NOT NULL,
  `Date` date NOT NULL,
  `Qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `vente`
--

INSERT INTO `vente` (`Id_Vente`, `Id_Cli`, `Id_prod`, `Date`, `Qty`) VALUES
(1, 3, 4, '2023-02-20', 2),
(2, 2, 1, '2023-02-10', 5),
(3, 4, 4, '2023-02-14', 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_Cli`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`Id_Pro`);

--
-- Index pour la table `vente`
--
ALTER TABLE `vente`
  ADD PRIMARY KEY (`Id_Vente`),
  ADD KEY `Id_Cli` (`Id_Cli`,`Id_prod`),
  ADD KEY `vente_ibfk_1` (`Id_prod`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_Cli` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `produit`
--
ALTER TABLE `produit`
  MODIFY `Id_Pro` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `vente`
--
ALTER TABLE `vente`
  MODIFY `Id_Vente` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `vente`
--
ALTER TABLE `vente`
  ADD CONSTRAINT `vente_ibfk_1` FOREIGN KEY (`Id_prod`) REFERENCES `produit` (`Id_Pro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vente_ibfk_2` FOREIGN KEY (`Id_Cli`) REFERENCES `client` (`id_Cli`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Base de données : `devismaker`
--
CREATE DATABASE IF NOT EXISTS `devismaker` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `devismaker`;

-- --------------------------------------------------------

--
-- Structure de la table `answer`
--

CREATE TABLE `answer` (
  `idAnswer` int(50) NOT NULL,
  `response` varchar(100) NOT NULL,
  `typeResponse` varchar(100) NOT NULL,
  `idCompany` int(50) DEFAULT NULL,
  `idPrestation` int(50) NOT NULL,
  `IdQuestion` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `answer`
--

INSERT INTO `answer` (`idAnswer`, `response`, `typeResponse`, `idCompany`, `idPrestation`, `IdQuestion`) VALUES
(6, 'REPONSE1 Site Vitrine', '', NULL, 1, 29),
(7, 'REPONSE2 Site e-commerce', '', NULL, 1, 30),
(8, 'REPONSE3 \r\nTEST NON AFFICHER', '', NULL, 0, 30),
(9, 'Réponse', '', NULL, 0, 3);

-- --------------------------------------------------------

--
-- Structure de la table `answercompany`
--

CREATE TABLE `answercompany` (
  `idAnswerCompany` int(50) NOT NULL,
  `responseCompany` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `idAnswer` int(50) DEFAULT NULL,
  `idCompany` int(50) DEFAULT NULL,
  `IdPrestation` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `answercompany`
--

INSERT INTO `answercompany` (`idAnswerCompany`, `responseCompany`, `idAnswer`, `idCompany`, `IdPrestation`) VALUES
(4, 'REPONSE2 Site e-commerce', NULL, NULL, NULL),
(5, 'REPONSE3 \r\nTEST NON AFFICHER', NULL, NULL, NULL),
(6, 'REPONSE2 Site e-commerce', NULL, NULL, NULL),
(7, 'REPONSE2 Site e-commerce', NULL, NULL, NULL),
(8, 'REPONSE3 \r\nTEST NON AFFICHER', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `idCategory` int(50) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`idCategory`, `name`) VALUES
(1, 'general');

-- --------------------------------------------------------

--
-- Structure de la table `company`
--

CREATE TABLE `company` (
  `idCompany` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phoneNumber` varchar(100) NOT NULL,
  `adress` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `siret` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `PostalCode` varchar(50) NOT NULL,
  `idContact` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `idContact` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `codeContact` varchar(100) NOT NULL,
  `phoneNumber` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `adress` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `typeContact` varchar(100) NOT NULL,
  `PostalCode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `invoice`
--

CREATE TABLE `invoice` (
  `idInvoice` int(50) NOT NULL,
  `status` varchar(100) NOT NULL,
  `dateInvoice` date NOT NULL,
  `datePayment` date NOT NULL,
  `idQuotation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `prestation`
--

CREATE TABLE `prestation` (
  `idPrestation` int(50) NOT NULL,
  `totalHT` decimal(10,0) NOT NULL,
  `totalTTC` decimal(10,0) NOT NULL,
  `tva` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `idQuestion` int(50) NOT NULL,
  `typeQuestion` varchar(100) NOT NULL,
  `question` varchar(100) NOT NULL,
  `ordre` int(11) DEFAULT NULL,
  `idCategory` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `question`
--

INSERT INTO `question` (`idQuestion`, `typeQuestion`, `question`, `ordre`, `idCategory`) VALUES
(3, '', 'QUESTIONS', 1, NULL),
(29, 'info', 'Questions test 1', 2, 1),
(30, 'info2', 'Questions test 2', 3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `quotation`
--

CREATE TABLE `quotation` (
  `idQuotation` int(50) NOT NULL,
  `dateDevis` date NOT NULL,
  `codeDevis` varchar(100) NOT NULL,
  `idPrestation` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`idAnswer`),
  ADD KEY `IdQuestion` (`IdQuestion`),
  ADD KEY `idPrestation` (`idPrestation`,`IdQuestion`) USING BTREE,
  ADD KEY `idCompany` (`idCompany`) USING BTREE;

--
-- Index pour la table `answercompany`
--
ALTER TABLE `answercompany`
  ADD PRIMARY KEY (`idAnswerCompany`),
  ADD KEY `idAnswer` (`idAnswer`,`idCompany`,`IdPrestation`),
  ADD KEY `idCompany` (`idCompany`),
  ADD KEY `IdPrestation` (`IdPrestation`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`idCategory`);

--
-- Index pour la table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`idCompany`),
  ADD KEY `idContact` (`idContact`) USING BTREE;

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`idContact`);

--
-- Index pour la table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`idInvoice`),
  ADD KEY `idQuotation` (`idQuotation`) USING BTREE;

--
-- Index pour la table `prestation`
--
ALTER TABLE `prestation`
  ADD PRIMARY KEY (`idPrestation`);

--
-- Index pour la table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`idQuestion`),
  ADD KEY `idCategory` (`idCategory`);

--
-- Index pour la table `quotation`
--
ALTER TABLE `quotation`
  ADD PRIMARY KEY (`idQuotation`),
  ADD KEY `idPrestation` (`idPrestation`) USING BTREE;

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `answer`
--
ALTER TABLE `answer`
  MODIFY `idAnswer` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `answercompany`
--
ALTER TABLE `answercompany`
  MODIFY `idAnswerCompany` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `idCategory` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `company`
--
ALTER TABLE `company`
  MODIFY `idCompany` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `idContact` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `idInvoice` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `prestation`
--
ALTER TABLE `prestation`
  MODIFY `idPrestation` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `question`
--
ALTER TABLE `question`
  MODIFY `idQuestion` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `quotation`
--
ALTER TABLE `quotation`
  MODIFY `idQuotation` int(50) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`IdQuestion`) REFERENCES `question` (`idQuestion`),
  ADD CONSTRAINT `answer_ibfk_2` FOREIGN KEY (`idCompany`) REFERENCES `company` (`idCompany`);

--
-- Contraintes pour la table `answercompany`
--
ALTER TABLE `answercompany`
  ADD CONSTRAINT `answercompany_ibfk_1` FOREIGN KEY (`idAnswer`) REFERENCES `answer` (`idAnswer`),
  ADD CONSTRAINT `answercompany_ibfk_2` FOREIGN KEY (`idCompany`) REFERENCES `company` (`idCompany`),
  ADD CONSTRAINT `answercompany_ibfk_3` FOREIGN KEY (`IdPrestation`) REFERENCES `prestation` (`idPrestation`);

--
-- Contraintes pour la table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`idContact`) REFERENCES `company` (`idContact`);

--
-- Contraintes pour la table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`idQuotation`) REFERENCES `quotation` (`idQuotation`);

--
-- Contraintes pour la table `prestation`
--
ALTER TABLE `prestation`
  ADD CONSTRAINT `prestation_ibfk_1` FOREIGN KEY (`idPrestation`) REFERENCES `answer` (`idPrestation`);

--
-- Contraintes pour la table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`idCategory`) REFERENCES `category` (`idCategory`);

--
-- Contraintes pour la table `quotation`
--
ALTER TABLE `quotation`
  ADD CONSTRAINT `quotation_ibfk_1` FOREIGN KEY (`idPrestation`) REFERENCES `prestation` (`idPrestation`);
--
-- Base de données : `formulaire`
--
CREATE DATABASE IF NOT EXISTS `formulaire` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `formulaire`;

-- --------------------------------------------------------

--
-- Structure de la table `inscriptions`
--

CREATE TABLE `inscriptions` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `cp` varchar(10) NOT NULL,
  `mail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `inscriptions`
--

INSERT INTO `inscriptions` (`id`, `nom`, `prenom`, `adresse`, `ville`, `cp`, `mail`) VALUES
(1, 'benkou', 'fethi', '', '9 chemin du lancier', '', ''),
(2, 'benkou', 'fethi', '9 chemin du lancier', 'MARSEILLE', '13009', ''),
(3, 'benkou', 'fethi', 'a', 'a', 'a', ''),
(4, 'benkou', 'fethi', '9 chemin du lancier', 'MARSEILLE', '', ''),
(29, 'Marc', 'Dumoine', '45 avenue de la libération', 'Paris', '75001', ''),
(30, '', '', '', '', '', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `inscriptions`
--
ALTER TABLE `inscriptions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `inscriptions`
--
ALTER TABLE `inscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- Base de données : `fournisseur`
--
CREATE DATABASE IF NOT EXISTS `fournisseur` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `fournisseur`;
--
-- Base de données : `identification`
--
CREATE DATABASE IF NOT EXISTS `identification` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `identification`;

-- --------------------------------------------------------

--
-- Structure de la table `for_livres`
--

CREATE TABLE `for_livres` (
  `id` int(11) NOT NULL,
  `identifiant` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mdp` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `for_livres`
--

INSERT INTO `for_livres` (`id`, `identifiant`, `mdp`) VALUES
(1, 'test@gmail.com', '123456'),
(2, 'livre@gmail.com', 'livrebook'),
(3, 'rrrrr@gmail.fr', 'motdepassee'),
(4, 'rrrrr@gmail.fr', 'motdepassee'),
(5, 'rrrrr@gmail.fr', 'aaa'),
(6, 'aza@gmail.ae', '123456'),
(7, 'azeaz@aze', '123456'),
(8, 'azeaz@aze', 'aa'),
(9, 'test@gmail.com', '123456'),
(10, 'test1@gmail.com', '123456');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `for_livres`
--
ALTER TABLE `for_livres`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `for_livres`
--
ALTER TABLE `for_livres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Base de données : `ma_bibliotheque`
--
CREATE DATABASE IF NOT EXISTS `ma_bibliotheque` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ma_bibliotheque`;

-- --------------------------------------------------------

--
-- Structure de la table `livres`
--

CREATE TABLE `livres` (
  `id` int(11) NOT NULL,
  `titre` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `theme` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nb_pages` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `auteur` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `editeur` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `annee` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `prix` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `livres`
--

INSERT INTO `livres` (`id`, `titre`, `theme`, `nb_pages`, `auteur`, `editeur`, `annee`, `prix`) VALUES
(25, 'Le doute', 'Policier', '145', 'Pourché', 'Hachette', '2022', '14.50'),
(28, 'Bouquin', 'de lecture', '158', 'Libreur', 'Moonlivre', '2019', '40'),
(30, '', '', '', '', '', '', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `livres`
--
ALTER TABLE `livres`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `livres`
--
ALTER TABLE `livres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- Base de données : `personnes`
--
CREATE DATABASE IF NOT EXISTS `personnes` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `personnes`;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230321091630', '2023-03-21 10:16:53', 82);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `age` int(11) NOT NULL,
  `ville` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `nom`, `age`, `ville`) VALUES
(1, 'Benkou', 24, 'Marseille'),
(2, 'Zouit', 20, 'Marseille'),
(3, 'Benamara', 20, 'Marseille'),
(4, 'Alexis', 25, 'Paris');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Base de données : `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Structure de la table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Structure de la table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Structure de la table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Structure de la table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Structure de la table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Structure de la table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Structure de la table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Déchargement des données de la table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"formulaire\",\"table\":\"inscriptions\"},{\"db\":\"bdd exo 1\",\"table\":\"users\"},{\"db\":\"formulaire\",\"table\":\"formulaire inscriptions\"},{\"db\":\"bd2\",\"table\":\"livres\"},{\"db\":\"bd2\",\"table\":\"Livres\"}]');

-- --------------------------------------------------------

--
-- Structure de la table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Structure de la table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Structure de la table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Structure de la table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Déchargement des données de la table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-01-17 15:58:31', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"fr\"}');

-- --------------------------------------------------------

--
-- Structure de la table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Structure de la table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Index pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Index pour la table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Index pour la table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Index pour la table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Index pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Index pour la table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Index pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Index pour la table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Index pour la table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Index pour la table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Index pour la table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Index pour la table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Index pour la table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Index pour la table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de données : `qcm`
--
CREATE DATABASE IF NOT EXISTS `qcm` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `qcm`;

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
(19, 'Qui est l\'entraîneur actuel de l\'équipe de football du Real Madrid ?', 1, 'facile', 7);

-- --------------------------------------------------------

--
-- Structure de la table `reponses`
--

CREATE TABLE `reponses` (
  `id_reponse` int(11) NOT NULL,
  `id_question` int(11) NOT NULL,
  `reponse` varchar(100) NOT NULL,
  `niveau` text NOT NULL,
  `etat` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `reponses`
--

INSERT INTO `reponses` (`id_reponse`, `id_question`, `reponse`, `niveau`, `etat`) VALUES
(3, 3, 'Le football.', '', 0),
(4, 4, 'Le brésil.', '', 0),
(5, 5, '11 joueurs', '', 0),
(6, 6, 'La coupe du monde de la FIFA.', '', 0),
(7, 7, 'Lionel Messi', '', 0),
(8, 8, '90 minutes.', '', 0),
(9, 9, 'Lionel Messi.', '', 0),
(10, 10, 'Le Santiago Bernabeu.', '', 0),
(11, 11, 'Didier Deschamps.', '', 0),
(12, 12, 'pelé', '', 0),
(13, 13, 'FC Barcelone', '', 0),
(14, 14, 'Cristiano Ronaldo', '', 0),
(15, 15, 'La Russie', '', 0),
(16, 16, 'Liverpool FC', '', 0),
(17, 17, 'Manchester United FC', '', 0),
(18, 18, ' Lionel Messi (7 fois)', '', 0),
(19, 19, 'L\'Espagne', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `score`
--

CREATE TABLE `score` (
  `id_score` int(10) NOT NULL,
  `id_utilisateur` int(10) DEFAULT NULL,
  `score` varchar(100) DEFAULT NULL,
  `date_user` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `theme`
--

CREATE TABLE `theme` (
  `id_theme` int(11) NOT NULL,
  `id_score` int(11) DEFAULT NULL,
  `nom_theme` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `theme`
--

INSERT INTO `theme` (`id_theme`, `id_score`, `nom_theme`) VALUES
(7, NULL, 'Football'),
(8, NULL, 'Développeur Web');

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
(1, 'fethi', 'ladmin', 'admin'),
(2, 'hicham', 'ladmin', 'admin');

--
-- Index pour les tables déchargées
--

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
  ADD KEY `reponse` (`reponse`) USING BTREE,
  ADD KEY `niveau` (`niveau`(768)) USING BTREE;

--
-- Index pour la table `score`
--
ALTER TABLE `score`
  ADD PRIMARY KEY (`id_score`),
  ADD KEY `score` (`score`) USING BTREE,
  ADD KEY `date_user` (`date_user`) USING BTREE,
  ADD KEY `id_user` (`id_utilisateur`);

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
-- AUTO_INCREMENT pour la table `questions`
--
ALTER TABLE `questions`
  MODIFY `id_question` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `reponses`
--
ALTER TABLE `reponses`
  MODIFY `id_reponse` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `score`
--
ALTER TABLE `score`
  MODIFY `id_score` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `theme`
--
ALTER TABLE `theme`
  MODIFY `id_theme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id_utilisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

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

--
-- Contraintes pour la table `score`
--
ALTER TABLE `score`
  ADD CONSTRAINT `score_ibfk_1` FOREIGN KEY (`id_utilisateur`) REFERENCES `utilisateur` (`id_utilisateur`);

--
-- Contraintes pour la table `theme`
--
ALTER TABLE `theme`
  ADD CONSTRAINT `theme_ibfk_1` FOREIGN KEY (`id_score`) REFERENCES `score` (`id_score`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
