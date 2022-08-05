-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 05 août 2022 à 15:12
-- Version du serveur : 10.4.21-MariaDB
-- Version de PHP : 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `hallucine`
--

-- --------------------------------------------------------

--
-- Structure de la table `castings`
--

CREATE TABLE `castings` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `about` text NOT NULL,
  `birthdate` date NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `castings`
--

INSERT INTO `castings` (`id`, `firstname`, `lastname`, `sex`, `about`, `birthdate`, `type`) VALUES
(1, 'Patrick', 'Swayze', 0, 'Fiche descriptive de Patrick Swayze', '2018-08-02', 1),
(2, 'James', 'Cameron', 0, 'Fiche de James Cameron.', '2022-08-03', 2),
(3, 'Viggo', 'Mortensen', 0, 'Fiche de Viggo.', '2014-08-08', 1),
(4, 'Sigourney', 'Weaver', 1, 'Fiche de Sigourney.', '2012-08-16', 1),
(7, 'Louis', 'de Funès', 1, 'Fiche de Louis de Funès', '1914-07-31', 2),
(8, 'Geneviève', 'Grad', 1, 'Fiche de Geneviève Gabrielle Grad', '1944-07-05', 3),
(9, 'Michel', 'Galabru', 1, 'Fiche de Michel Louis Edmond Galabru', '1922-10-27', 3),
(10, 'Jean', 'Girault', 1, 'Fiche de Jean GIRAULT', '1924-05-09', 1),
(11, 'Jérôme', 'Salle', 1, 'Fiche de Jérôme Salle', '1980-07-06', 4),
(12, 'Caryl', 'Ferey', 1, 'Fiche de Caryl Ferey', '1984-07-08', 1),
(13, 'Gilles', 'Lellouche', 1, 'Fiche de Gilles LELLOUCHE', '1979-06-04', 3),
(14, 'Joanna', 'Kulig', 1, 'Fiche de Joanna Kulig', '1984-05-23', 3),
(15, 'Marina', 'Foïs', 1, 'Fiche de Marina Foïs', '1970-01-21', 3),
(16, 'Kad', 'Merad', 1, 'Fiche de Kad Merrad', '1964-03-27', 3),
(17, 'Joey', 'Starr', 1, 'Fiche de Joey Starr', '1975-06-23', 3),
(18, 'Maïwenn', '', 1, 'Fiche de Maïwenn', '1967-07-21', 1),
(19, 'Rodrigo', 'Sorogoyen', 1, 'Fiche de Rodigro Sorogoyen', '1954-05-06', 4),
(20, 'Isabel', 'Peña', 1, 'Fiche de Isabel Peña', '1984-05-23', 1),
(21, 'Ludovic', 'Boukherma', 1, 'fqbgefgqfgqezrgqzrgqzrg', '1983-06-05', 1),
(22, 'Clint', 'Eastwood', 1, 'sthsrthsetgsetgestge', '1955-07-08', 3),
(23, 'Sergio', 'Leone', 1, 'sghsrghsrgsegsetghsetgqetgqetg', '1955-06-07', 1),
(24, 'Sam', 'Smith', 1, 'Fiche de Sam Smith', '1975-06-23', 3);

-- --------------------------------------------------------

--
-- Structure de la table `casting_types`
--

CREATE TABLE `casting_types` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `casting_types`
--

INSERT INTO `casting_types` (`id`, `name`) VALUES
(1, 'réalisateur'),
(2, 'producteur'),
(3, 'acteur'),
(4, 'scénariste');

-- --------------------------------------------------------

--
-- Structure de la table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'comédie'),
(2, 'fantastique'),
(3, 'horreur'),
(4, 'science fiction');

-- --------------------------------------------------------

--
-- Structure de la table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image_url` varchar(100) NOT NULL,
  `runtime` int(6) NOT NULL,
  `description` text NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `release_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `movies`
--

INSERT INTO `movies` (`id`, `title`, `image_url`, `runtime`, `description`, `rating`, `release_date`) VALUES
(1, 'Kompromat', 'image.jpg', 2500, 'Fiche de Kompromat.', NULL, '2017-08-02');

-- --------------------------------------------------------

--
-- Structure de la table `movies_castings`
--

CREATE TABLE `movies_castings` (
  `movies_id` int(11) NOT NULL,
  `castings_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `movies_castings`
--

INSERT INTO `movies_castings` (`movies_id`, `castings_id`) VALUES
(1, 1),
(1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `movies_genres`
--

CREATE TABLE `movies_genres` (
  `movies_id` int(11) NOT NULL,
  `genres_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `movies_genres`
--

INSERT INTO `movies_genres` (`movies_id`, `genres_id`) VALUES
(1, 2),
(1, 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `castings`
--
ALTER TABLE `castings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`);

--
-- Index pour la table `casting_types`
--
ALTER TABLE `casting_types`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `movies_castings`
--
ALTER TABLE `movies_castings`
  ADD KEY `movies_id` (`movies_id`),
  ADD KEY `castings_id` (`castings_id`);

--
-- Index pour la table `movies_genres`
--
ALTER TABLE `movies_genres`
  ADD KEY `movies_id` (`movies_id`),
  ADD KEY `genres_id` (`genres_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `castings`
--
ALTER TABLE `castings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `casting_types`
--
ALTER TABLE `casting_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `castings`
--
ALTER TABLE `castings`
  ADD CONSTRAINT `castings_ibfk_1` FOREIGN KEY (`type`) REFERENCES `casting_types` (`id`);

--
-- Contraintes pour la table `movies_castings`
--
ALTER TABLE `movies_castings`
  ADD CONSTRAINT `movies_castings_ibfk_1` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `movies_castings_ibfk_2` FOREIGN KEY (`castings_id`) REFERENCES `castings` (`id`);

--
-- Contraintes pour la table `movies_genres`
--
ALTER TABLE `movies_genres`
  ADD CONSTRAINT `movies_genres_ibfk_1` FOREIGN KEY (`movies_id`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `movies_genres_ibfk_2` FOREIGN KEY (`genres_id`) REFERENCES `genres` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
