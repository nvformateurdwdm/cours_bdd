-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 03 août 2022 à 20:35
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
-- Base de données : `world`
--

-- --------------------------------------------------------

--
-- Structure de la table `animals`
--

CREATE TABLE `animals` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `species` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `animals`
--

INSERT INTO `animals` (`id`, `name`, `species`) VALUES
(1, 'Pablo', 2),
(2, 'Kenzo', 2),
(3, 'Riton', 1),
(4, 'Rita', 1),
(5, 'Félix', 3),
(6, 'Denver', 4),
(7, 'Eliot', 5),
(8, 'Médor', 2),
(9, 'Isidor', 3);

-- --------------------------------------------------------

--
-- Structure de la table `animals_users`
--

CREATE TABLE `animals_users` (
  `id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `animals_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `animals_users`
--

INSERT INTO `animals_users` (`id`, `users_id`, `animals_id`) VALUES
(1, 4, 7),
(2, 4, 9),
(3, 4, 2),
(4, 3, 7);

-- --------------------------------------------------------

--
-- Structure de la table `animal_species`
--

CREATE TABLE `animal_species` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `animal_species`
--

INSERT INTO `animal_species` (`id`, `name`) VALUES
(1, 'racoon'),
(2, 'dog'),
(3, 'cat'),
(4, 'dinosaur'),
(5, 'dragon');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`) VALUES
(1, 'Kévin', 'KALI'),
(2, 'Bernet', 'BOISDUR'),
(3, 'Mathieu', 'LOUIS'),
(4, 'Alex', 'HUBERT');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `animals`
--
ALTER TABLE `animals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `species` (`species`);

--
-- Index pour la table `animals_users`
--
ALTER TABLE `animals_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `animals_id` (`animals_id`);

--
-- Index pour la table `animal_species`
--
ALTER TABLE `animal_species`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `animals`
--
ALTER TABLE `animals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `animals_users`
--
ALTER TABLE `animals_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `animal_species`
--
ALTER TABLE `animal_species`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `animals`
--
ALTER TABLE `animals`
  ADD CONSTRAINT `animals_ibfk_2` FOREIGN KEY (`species`) REFERENCES `animal_species` (`id`);

--
-- Contraintes pour la table `animals_users`
--
ALTER TABLE `animals_users`
  ADD CONSTRAINT `animals_users_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `animals_users_ibfk_2` FOREIGN KEY (`animals_id`) REFERENCES `animals` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
