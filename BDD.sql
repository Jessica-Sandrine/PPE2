-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 28 jan. 2020 à 09:33
-- Version du serveur :  10.3.15-MariaDB
-- Version de PHP :  7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ppe2`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `idType` int(11) NOT NULL,
  `prix` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL,
  `image_source` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `nom`, `idType`, `prix`, `description`, `stock`, `image_source`) VALUES
(1, 'Cartouche Imprimante 3 en', 1, 20, 'Ce lots pour la borne flash 2200++ contien toute les cartouche néssaisaire a l\'utilisateion de la borne. Il y a en moyenne de quoi faire 200 tirage', 500, ''),
(2, 'Cartouche Imprimante 1200', 1, 15, 'Ce lots pour la borne 1200 contiens toute les cartouche nécessaire a l\'utilisation de la borne. Il y a en moyenne de quoi faire 200 tirage', 500, ''),
(3, 'Cartouche discount', 1, 15, 'Cartouche pour la flash10', 500, ''),
(4, 'Flash2200++', 2, 199, 'Borne Deluxe', 3, 'img/borne3.png'),
(5, 'Flash1200++', 2, 99, 'Notre Borne la plus louer.', 5, 'img/borne2.png'),
(6, 'Flash10', 2, 69, 'Notre borne photo la moin cher', 10, 'img/borne1.png');

-- --------------------------------------------------------

--
-- Structure de la table `article_commande`
--

CREATE TABLE `article_commande` (
  `id_commande` int(11) NOT NULL,
  `id_article` int(11) NOT NULL,
  `qtt` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `article_commande`
--

INSERT INTO `article_commande` (`id_commande`, `id_article`, `qtt`, `id`) VALUES
(1, 1, 1, 1),
(1, 2, 1, 2),
(2, 1, 10, 3),
(3, 1, 10, 4),
(4, 1, 5000, 5),
(5, 1, 10, 6);

-- --------------------------------------------------------

--
-- Structure de la table `article_type`
--

CREATE TABLE `article_type` (
  `id` int(11) NOT NULL,
  `type_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `article_type`
--

INSERT INTO `article_type` (`id`, `type_name`) VALUES
(1, 'Consommable'),
(2, 'Location');

-- --------------------------------------------------------

--
-- Structure de la table `calendrier`
--

CREATE TABLE `calendrier` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `date_de_commande` date NOT NULL,
  `date_dexpedition` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id`, `id_user`, `date_de_commande`, `date_dexpedition`) VALUES
(1, 3, '2019-09-14', '0000-00-00'),
(2, 7, '2019-09-24', '0000-00-00'),
(3, 1, '2019-10-16', '0000-00-00'),
(4, 1, '2019-10-16', '0000-00-00'),
(5, 1, '2020-01-20', '0000-00-00');

-- --------------------------------------------------------

--
-- Structure de la table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `id_article` int(11) NOT NULL,
  `source` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `image`
--

INSERT INTO `image` (`id`, `id_article`, `source`) VALUES
(1, 3, 'img/borne3.png'),
(2, 4, 'img/borne2.png'),
(3, 5, 'img/borne1.png');

-- --------------------------------------------------------

--
-- Structure de la table `type_user`
--

CREATE TABLE `type_user` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `type_user`
--

INSERT INTO `type_user` (`id`, `type`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(150) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `login`, `nom`, `prenom`, `pwd`, `type`) VALUES
(1, 'ama', 'ama', 'ama', 'e292b1d68c8b480c49074ff1b6e266b8', 1),
(2, 'sandrine', 'haha', 'sandrine', '81dc9bdb52d04dc20036dbd8313ed055', 2),
(3, 'amaury.delassus@gmail.com', 'Delassus', 'Amaury', '751cb3f4aa17c36186f4856c8982bf27', 2),
(4, 'amaurydelassus@gmail.com', '1234', '1234', '81dc9bdb52d04dc20036dbd8313ed055', 2),
(7, 'greg@gmail.com', 'greg', 'greg', '81dc9bdb52d04dc20036dbd8313ed055', 2),
(8, 'coucou', 'coucou', 'coucou', '721a9b52bfceacc503c056e3b9b93cfa', 2),
(11, 'papa@gmail.com', 'papa', 'papa', '0ac6cd34e2fac333bf0ee3cd06bdcf96', 2),
(13, 'toto@gmail.com', 'toto@gmail.com', 'toto', 'f71dbe52628a3f83a77ab494817525c6', 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idType` (`idType`);

--
-- Index pour la table `article_commande`
--
ALTER TABLE `article_commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_commande` (`id_commande`),
  ADD KEY `id_article` (`id_article`);

--
-- Index pour la table `article_type`
--
ALTER TABLE `article_type`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `calendrier`
--
ALTER TABLE `calendrier`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_article` (`id_article`);

--
-- Index pour la table `type_user`
--
ALTER TABLE `type_user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`),
  ADD KEY `id` (`id`),
  ADD KEY `type` (`type`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `article_commande`
--
ALTER TABLE `article_commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `article_type`
--
ALTER TABLE `article_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `calendrier`
--
ALTER TABLE `calendrier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `commande`
--
ALTER TABLE `commande`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`idType`) REFERENCES `article_type` (`id`);

--
-- Contraintes pour la table `article_commande`
--
ALTER TABLE `article_commande`
  ADD CONSTRAINT `article_commande_ibfk_1` FOREIGN KEY (`id_commande`) REFERENCES `commande` (`id`),
  ADD CONSTRAINT `article_commande_ibfk_2` FOREIGN KEY (`id_article`) REFERENCES `article` (`id`);

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`id_article`) REFERENCES `article` (`id`);

--
-- Contraintes pour la table `type_user`
--
ALTER TABLE `type_user`
  ADD CONSTRAINT `type_user_ibfk_1` FOREIGN KEY (`id`) REFERENCES `users` (`type`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
