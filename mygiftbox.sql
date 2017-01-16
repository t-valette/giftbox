-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mer 28 Décembre 2016 à 19:45
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mygiftbox`
--

-- --------------------------------------------------------

--
-- Structure de la table `bestprest`
--

CREATE TABLE `bestprest` (
  `id_cat` int(11) NOT NULL,
  `id_prest` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `bestprest`
--

INSERT INTO `bestprest` (`id_cat`, `id_prest`) VALUES
(1, 1),
(4, 23),
(2, 3),
(3, 4);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` int(11) NOT NULL,
  `nom` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `categorie`
--

INSERT INTO `categorie` (`id`, `nom`) VALUES
(1, 'Attention'),
(2, 'Activité'),
(3, 'Restauration'),
(4, 'Hébergement');

-- --------------------------------------------------------

--
-- Structure de la table `notation`
--

CREATE TABLE `notation` (
  `id` int(11) NOT NULL,
  `note` int(1) NOT NULL,
  `pre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `notation`
--

INSERT INTO `notation` (`id`, `note`, `pre_id`) VALUES
(46, 4, 1),
(47, 3, 3),
(48, 4, 4),
(49, 5, 23);


-- --------------------------------------------------------

--
-- Structure de la table `prestation`
--

CREATE TABLE `prestation` (
  `id` int(11) NOT NULL,
  `nom` text NOT NULL,
  `descr` text NOT NULL,
  `cat_id` int(11) NOT NULL,
  `img` text NOT NULL,
  `prix` decimal(5,2) NOT NULL,
  `display` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `prestation`
--

INSERT INTO `prestation` (`id`, `nom`, `descr`, `cat_id`, `img`, `prix`) VALUES
(1, 'Champagne', 'Bouteille de champagne + flutes + jeux à gratter', 1, 'champagne.jpg', '20.00'),
(2, 'Musique', 'Partitions de piano à 4 mains', 1, 'musique.jpg', '25.00'),
(3, 'Exposition', 'Visite guidée de l’exposition ‘REGARDER’ à la galerie Poirel', 2, 'poirelregarder.jpg', '14.00'),
(4, 'Goûter', 'Goûter au FIFNL', 3, 'gouter.jpg', '20.00'),
(5, 'Projection', 'Projection courts-métrages au FIFNL', 2, 'film.jpg', '10.00'),
(6, 'Bouquet', 'Bouquet de roses et Mots de Marion Renaud', 1, 'rose.jpg', '16.00'),
(7, 'Diner Stanislas', 'Diner à La Table du Bon Roi Stanislas (Apéritif /Entrée / Plat / Vin / Dessert / Café / Digestif)', 3, 'bonroi.jpg', '60.00'),
(8, 'Origami', 'Baguettes magiques en Origami en buvant un thé', 3, 'origami.jpg', '12.00'),
(9, 'Livres', 'Livre bricolage avec petits-enfants + Roman', 1, 'bricolage.jpg', '24.00'),
(10, 'Diner  Grand Rue ', 'Diner au Grand’Ru(e) (Apéritif / Entrée / Plat / Vin / Dessert / Café)', 3, 'grandrue.jpg', '59.00'),
(11, 'Visite guidée', 'Visite guidée personnalisée de Saint-Epvre jusqu’à Stanislas', 2, 'place.jpg', '11.00'),
(12, 'Bijoux', 'Bijoux de manteau + Sous-verre pochette de disque + Lait après-soleil', 1, 'bijoux.jpg', '29.00'),
(13, 'Opéra', 'Concert commenté à l’Opéra', 2, 'opera.jpg', '15.00'),
(14, 'Thé Hotel de la reine', 'Thé de debriefing au bar de l’Hotel de la reine', 3, 'hotelreine.gif', '5.00'),
(15, 'Jeu connaissance', 'Jeu pour faire connaissance', 2, 'connaissance.jpg', '6.00'),
(16, 'Diner', 'Diner (Apéritif / Plat / Vin / Dessert / Café)', 3, 'diner.jpg', '40.00'),
(17, 'Cadeaux individuels', 'Cadeaux individuels sur le thème de la soirée', 1, 'cadeaux.jpg', '13.00'),
(18, 'Animation', 'Activité animée par un intervenant extérieur', 2, 'animateur.jpg', '9.00'),
(19, 'Jeu contacts', 'Jeu pour échange de contacts', 2, 'contact.png', '5.00'),
(20, 'Cocktail', 'Cocktail de fin de soirée', 3, 'cocktail.jpg', '12.00'),
(21, 'Star Wars', 'Star Wars - Le Réveil de la Force. Séance cinéma 3D', 2, 'starwars.jpg', '12.00'),
(22, 'Concert', 'Un concert à Nancy', 2, 'concert.jpg', '17.00'),
(23, 'Appart Hotel', 'Appart’hôtel Coeur de Ville, en plein centre-ville', 4, 'apparthotel.jpg', '56.00'),
(24, 'Hôtel d\'Haussonville', 'Hôtel d\'Haussonville, au coeur de la Vieille ville à deux pas de la place Stanislas', 4, 'hotel_haussonville_logo.jpg', '169.00'),
(25, 'Boite de nuit', 'Discothèque, Boîte tendance avec des soirées à thème & DJ invités', 2, 'boitedenuit.jpg', '32.00'),
(26, 'Planètes Laser', 'Laser game : Gilet électronique et pistolet laser comme matériel, vous voilà équipé.', 2, 'laser.jpg', '15.00'),
(27, 'Fort Aventure', 'Découvrez Fort Aventure à Bainville-sur-Madon, un site Accropierre unique en Lorraine ! Des Parcours Acrobatiques pour petits et grands, Jeu Mission Aventure, Crypte de Crapahute, Tyrolienne, Saut à l\'élastique inversé, Toboggan géant... et bien plus encore.', 2, 'fort.jpg', '25.00');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `pseudo` text NOT NULL,
  `mdp` text NOT NULL,
  `grade` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `pseudo`, `mdp`, `grade`) VALUES
(1, 'teddy', '$2y$10$EeSDa3RSu5G1paYaecXY4OcyOZyWt3Wx4ulvT5Si732uNUl1yKIfm
', 'admin'),
(2, 'alex', '$2y$10$kGI3oz.m2muxhD5BFMSbSOy1eGQAJ5YzqGyh2XJXlnbu.6toFfF16', 'admin'),
(3, 'samir', '$2y$10$uRgT.ozd.EFIs0zOtP.AleeCqhv8eDrgGCNZD0MC9oy/0htvw6fqK', 'user'),
(4, 'elias', '$2y$10$0G2o5fls9l2Ek46ZKrFlgeqZ0uXTM0jqc5.eyqgXZI0eFS2.9DI5q', 'user');

-- teddy: 123 / alex : 456 / samir : 789 / elias : 111

--
-- Index pour les tables exportées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `notation`
--
ALTER TABLE `notation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `prestation`
--
ALTER TABLE `prestation`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `notation`
--
ALTER TABLE `notation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT pour la table `prestation`
--
ALTER TABLE `prestation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;


CREATE TABLE Client(
  id int auto_increment,
  nom text,
  prenom text,
  numAdresse int,
  nomAdresse text,
  ville text,
  codePostal int,
  email text,
  pays text,
  primary key(id));

CREATE TABLE Coffret(
  id int auto_increment,
  date_creation DATE,
  paiement text,
  date_paiement DATE,
  id_cli int,
  message text,
  slug text,
  PRIMARY KEY(id),
  FOREIGN KEY (id_cli) REFERENCES Client(id));

CREATE TABLE Contient(
  id_coffret int,
  id_prestation int(11),
  nb_prestation int,
  PRIMARY KEY(id_coffret, id_prestation),
  FOREIGN KEY (id_coffret) REFERENCES Coffret(id),
  FOREIGN KEY (id_prestation) REFERENCES prestation(id));

CREATE TABLE Cagnotte(
  id int auto_increment,
  id_coffret int,
  slug text,
  motdepasse text,
  primary key(id),
  foreign key (id_coffret) references Coffret(id));

create table Contribution(
  id int auto_increment,
  id_cagnotte int,
  prenom text,
  nom text,
  montant float,
  primary key (id),
  foreign key (id_cagnotte) references Cagnotte(id));

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
