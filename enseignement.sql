-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 27 sep. 2023 à 12:09
-- Version du serveur :  5.7.17
-- Version de PHP :  5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `cmr504`
--

-- --------------------------------------------------------

--
-- Structure de la table `enseigne`
--

CREATE TABLE `enseigne` (
  `id` int(11) NOT NULL,
  `professeur` int(11) NOT NULL,
  `matiere` int(11) NOT NULL,
  `dateDebut` date NOT NULL,
  `dateFin` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `enseigne`
--

INSERT INTO `enseigne` (`id`, `professeur`, `matiere`, `dateDebut`, `dateFin`) VALUES
(1, 4, 1, '2022-09-22', '2022-12-31'),
(2, 4, 1, '2023-09-01', '2023-12-31'),
(3, 7, 5, '2023-01-01', '2023-06-30'),
(4, 5, 9, '2023-09-01', '2023-09-30'),
(5, 8, 10, '2023-01-01', '2023-06-30'),
(6, 8, 9, '2023-01-01', '2023-06-30'),
(7, 2, 11, '2023-03-01', '2023-06-30'),
(8, 9, 15, '2023-01-01', '2023-05-25');

-- --------------------------------------------------------

--
-- Structure de la table `matiere`
--

CREATE TABLE `matiere` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `matiere`
--

INSERT INTO `matiere` (`id`, `nom`) VALUES
(1, 'Mathématiques'),
(2, 'Economie'),
(3, 'Statistiques'),
(4, 'Probabilité'),
(5, 'Finances'),
(6, 'Informatique'),
(7, 'RH'),
(8, 'Gestion'),
(9, 'Marketing'),
(10, 'Management'),
(11, 'Commerce'),
(12, 'Digitalisation'),
(13, 'Communication'),
(14, 'Français'),
(15, 'Anglais');

-- --------------------------------------------------------

--
-- Structure de la table `professeur`
--

CREATE TABLE `professeur` (
  `id` int(11) NOT NULL,
  `nom` varchar(60) NOT NULL,
  `prenom` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `professeur`
--

INSERT INTO `professeur` (`id`, `nom`, `prenom`) VALUES
(1, 'einstein', 'albert'),
(2, 'poincarré', 'henry'),
(3, 'descartes', 'rené'),
(4, 'ABRAGAM', 'Anatole'),
(5, 'Amboise', 'Jacques'),
(6, 'BÉRAULT', 'Lucie'),
(7, 'Preynat', 'Jean-Jacques'),
(8, 'BLANC', 'Vincent'),
(9, 'BLONDEL', 'Françoise');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `enseigne`
--
ALTER TABLE `enseigne`
  ADD PRIMARY KEY (`id`),
  ADD KEY `professeur` (`professeur`),
  ADD KEY `matiere` (`matiere`);

--
-- Index pour la table `matiere`
--
ALTER TABLE `matiere`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `professeur`
--
ALTER TABLE `professeur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `enseigne`
--
ALTER TABLE `enseigne`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `matiere`
--
ALTER TABLE `matiere`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `professeur`
--
ALTER TABLE `professeur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
