-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 18 Janvier 2016 à 19:42
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `management_concerts`
--

-- --------------------------------------------------------

--
-- Structure de la table `artists`
--

CREATE TABLE IF NOT EXISTS `artists` (
  `id` smallint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Contenu de la table `artists`
--

INSERT INTO `artists` (`id`, `name`, `description`, `image`, `tags`) VALUES
(1, 'Bassnectar', 'Bassnectar is the stage name of Lorin Ashton, a freeform electronic music producer and DJ based in Santa Cruz, California. He is best known for his live performances, light shows, and community engagement.', 'bassnectar08.jpg', 'Dubstep'),
(2, 'Boogaloo Joe Jones', 'Ivan Joseph Jones (born November 1, 1940), known professionally as Joe Jones or Boogaloo Joe Jones, is a jazz guitarist', 'Boogaloo_Joe_Jones.jpg', 'Funk, Jazz'),
(3, 'Curtis Mayfield', 'Curtis Lee Mayfield, né le 3 juin 1942 à Chicago et mort le 26 décembre 1999, était un chanteur, auteur et compositeur de soul, de funk, de rhythm and blues, notamment connu pour la bande originale du film de blaxploitation Superfly.', 'Curtis_Mayfield.png', 'Soul, Chanson'),
(4, 'Cypress Hill', 'Cypress Hill est un groupe américain de rap, formé en 1988, originaire de Californie.', 'cypress_hill.jpg', 'Hip Hop'),
(5, 'Daft Punk', 'Daft Punk est un groupe français de musique électronique, originaire de Paris. Actifs depuis 1993, Thomas Bangalter et Guy-Manuel de Homem-Christo, les deux membres, ont allié à leurs sons electro, ...', 'Daft-Punk.jpg', 'Electro'),
(6, 'Django Reinhardt', 'Jean Reinhardt, plus connu sous le nom de Django Reinhardt, est un guitariste de jazz français, né le 23 janvier 1910 à Liberchies en Belgique et mort le 16 mai 1953 à Samois-sur-Seine.', 'Django_Reinhardt_by_toadboue.jpg', 'Jazz, Gypsy'),
(7, 'The Beatles', 'The Beatles est un groupe musical originaire de Liverpool, composé de John Lennon, Paul McCartney, George Harrison et Ringo Starr. Il demeure, en dépit de sa séparation en 1970, l''un des groupes de rock les plus populaires au monde.', 'down-the-abbey-road-the-beatles.jpg', 'Pop, Rock'),
(8, 'Ennio Morricone', 'Ennio Morricone est un compositeur et chef d''orchestre italien, réputé notamment pour ses musiques de films, en particulier celles réalisées pour son ami et camarade de classe Sergio Leone. Son fils Andrea Morricone est également compositeur.', 'ennio-morricone.jpg', 'Rock, Western'),
(9, 'Flux Pavilion', 'Joshua Steele, plus connu sous le nom de Flux Pavilion, est un producteur et DJ anglais, né en 1989 et actif depuis 2008. ', 'flux-pavilion.jpg', 'Electro'),
(10, 'Gentlemans Dub Club', 'Having built a reputation on consistently delivering one of the most energetic and exhilarating live shows to emerge from the UK bass music scene, the Gents’ antics have seen them astound crowds from Goa to Glastonbury, Bestival, V Festival, Secret Garden Party, France''s Telerama Dub Festival and Poland’s Ostróda Reggae Festival, not to mention the biggest bass music festival in the world - Croatia’s Outlook Festival', 'Gentlemans-Dub-Club.jpg', 'Dub, Reggae, Pop'),
(11, 'Gramatik', 'Gramatik, de son vrai nom Denis Jasarevic, est un DJ, producteur américain, né le 19 octobre 1984 à Portorož, Slovénie.', 'Gramatik.jpeg', 'Dubstep'),
(12, 'James Brown', 'James Joseph Brown Jr. était un musicien, chanteur, auteur-compositeur, danseur et producteur américain. Un des initiateurs du funk, il est fréquemment surnommé "The Godfather of Soul".', 'james_brown.jpg', 'Soul, Funk'),
(13, 'Kavinsky', 'Kavinsky, de son vrai nom Vincent Belorgey, né le 31 juillet 1975, en Seine-Saint-Denis est un artiste de musique électronique et un acteur français', 'kavinsky.jpg', 'Electro'),
(14, 'Queen', 'Queen est un groupe de rock britannique, formé en 1970 à Londres par Freddie Mercury, Brian May et Roger Taylor, ces deux derniers étant issus du groupe Smile. L’année suivante, le bassiste John Deacon vient compléter la formation.', 'Logo_Queen.png', 'Rock'),
(15, 'Major Lazer', 'Major Lazer est un projet musical mené par le DJ/producteur Diplo. La musique de Major Lazer s''inscrit dans le reggae avec en plus des sonorités électroniques. Le groupe collabore régulièrement avec des chanteurs pour ses chansons', 'Major-Lazer.png', 'Reggae, Hip Hop'),
(16, 'Mc solaar', 'MC Solaar, de son vrai nom Claude M''Barali, est un rappeur français d''origine sénégalo-tchadienne né le 5 mars 1969 à Dakar.', 'mc_solaar.jpg', 'Hip Hop, Chanson'),
(17, 'MGMT', 'MGMT, précédemment connu sous le nom de The Management, est un groupe américain de rock alternatif. Originaire de Brooklyn, le groupe est composé initialement de Ben Goldwasser et de Andrew VanWyngarden.', 'mgmt.jpeg', 'Rock'),
(18, 'Michael Jackson', 'Michael Joseph Jackson, né le 29 août 1958 à Gary et mort le 25 juin 2009 à Los Angeles, est un chanteur, danseur-chorégraphe, auteur-compositeur-interprète acteur et réalisateur américain.', 'Michael-Jackson.jpg', 'Pop, Funk'),
(19, 'Moby', 'Moby, de son vrai nom Richard Melville Hall, est un artiste de musique électronique américain et photographe, né le 11 septembre 1965 à New York dans le quartier de Harlem.', 'moby-smile.jpg', 'Electro, Pop'),
(20, 'Mr. Oizo', 'Mr. Oizo, de son vrai nom Quentin Dupieux est un artiste de musique électronique, réalisateur et scénariste français, né le 14 avril 1974 à Paris', 'mr-oizo-flat-eric.jpg', 'Electro'),
(21, 'Mungo''s Hifi', 'Mungo''s Hi Fi is a sound system based in Glasgow, Scotland which follows the original Jamaican sound system tradition. After working together as the Dub Dentists, Tom Tattersall and Doug Paine founded the group in 2000, writing, recording, producing and performing their own brand of reggae and dub music, working in collaboration with other artists and producers.', 'mungohifi.jpg', 'Dub, Reggae'),
(22, 'Nirvana', 'Nirvana est un groupe américain de rock alternatif, souvent associé au grunge, formé en 1987 à Aberdeen, dans l''état de Washington, par le chanteur-guitariste Kurt Cobain et le bassiste Krist Novoselic.', 'nirvana.jpg', 'Rock'),
(23, 'Panda Dub', 'Le projet Panda Dub est né à Lyon en 2007. Dub maker influencé par les scènes dub françaises et Anglaises, Panda Dub a su se créer un style très personnel. Le reggae roots, le stepper anglais et l’électro dub à la française nourrissent ses compositions qui ont toutes les caractéristiques de celles dont les sound system à l’anglaise raffolent. Le son du Panda est issu d’un savant mélange de samples ethno, de mélodies electro fraîches et percutantes, de textures envoûtantes et de rythmiques lourdes.', 'panda_dub_m.jpg', 'Dub, Electro'),
(24, 'Puppetmastaz', 'The Puppetmastaz est un groupe de hip-hop allemand fondé dans les années 1990 dont les membres sont représentés par des marionnettes.', 'puppetmastaz.jpg', 'Hip Hop, Reggae'),
(25, 'Radiohead', 'Radiohead est un groupe de rock anglais originaire d''Abingdon dans l''Oxfordshire. Le groupe est composé de Thom Yorke au chant, à la guitare et au piano, de Jonny Greenwood à la guitare, piano et Ondes ...', 'radiohead.jpg', 'Rock, Electro'),
(26, 'Rusko', 'Rusko, de son vrai nom Christopher William Mercer, est né le 26 janvier 1985. Né a Leeds en Angleterre, il est producteur de dubstep et DJ.', 'rusko.jpeg', 'Dubstep'),
(27, 'Stand High Patrol', 'Pupajim est un chanteur et compositeur de reggae français né en 1983 et originaire de Brest, en Bretagne. Il fait partie du sound system Stand High Patrol, avec qui il se produit occasionnellement. Le sound system est composé de Rootystep (selecta), McGyver (operator) et Pupajim (chanteur, MC, dub builder)1, ou Marina P (chanteuse).', 'Stand-High-Patrol-midnightwalker.jpg', 'Dub, Reggae'),
(28, 'The xx', 'The xx est un groupe de rock aux sonorités épurées le rapprochant parfois de la musique minimaliste, formé à Londres en 2005.', 'the_xx_coexist.jpg', 'Rock'),
(29, 'Uppermost', 'Behdad Nejatbakhshe, better known by his stage name Uppermost, is a French electronic music producer based in Paris, France.', 'Uppermost2.jpg', 'Electro'),
(30, 'Paul Kalkbrenner', 'Paul Kalkbrenner, né à Leipzig en 1977, est un producteur et DJ allemand de musique électronique de style techno et electro, également connu sous les pseudonymes Paul dB+, Kalkito ou Grenade', 'Paul_Kalkbrenner_at_Alte_Diamantbrauerei.jpg', 'Electro');

-- --------------------------------------------------------

--
-- Structure de la table `concerts`
--

CREATE TABLE IF NOT EXISTS `concerts` (
  `id` smallint(11) NOT NULL AUTO_INCREMENT,
  `place` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `date_concert` varchar(16) DEFAULT NULL,
  `cost` decimal(4,2) NOT NULL,
  `id_artist` smallint(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_artist_idx` (`id_artist`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=118 ;

--
-- Contenu de la table `concerts`
--

INSERT INTO `concerts` (`id`, `place`, `address`, `city`, `date_concert`, `cost`, `id_artist`) VALUES
(1, 'La Maroquinerie', '23 Rue Boyer', 'Paris', '10/01/2014 20:00', '12.00', 1),
(2, 'La Flèche d''Or', '102 Bis Rue de Bagnolet', 'Paris', '13/01/2014 19:00', '39.00', 1),
(3, 'La place', '13 Rue Delandine', 'Lyon', '20/01/2014 20:00', '26.00', 1),
(4, 'Les Subsistances', '8 bis Quai Saint-Vincent', 'Lyon', '27/01/2014 19:30', '43.00', 1),
(5, 'La Flèche d''Or', '102 Bis Rue de Bagnolet', 'Paris', '09/02/2014 20:00', '28.00', 2),
(6, 'Rock School Barbey  ', '18 Cours Barbey', 'Bordeaux', '10/01/2014 20:00', '15.00', 2),
(7, 'La Flèche d''Or', '102 Bis Rue de Bagnolet', 'Paris', '18/02/2014 20:30', '30.00', 2),
(8, 'Le Bootleg  ', '4-6 Rue Lacornée', 'Bordeaux', '20/01/2014 20:00', '48.00', 2),
(9, 'Le Bootleg  ', '4-6 Rue Lacornée', 'Bordeaux', '13/01/2014 19:00', '37.00', 3),
(10, 'Le Moulin  ', '47 Boulevard Perrin', 'Marseille', '25/02/2014 20:30', '23.00', 3),
(11, 'La Flèche d''Or', '102 Bis Rue de Bagnolet', 'Paris', '04/03/2014 20:00', '36.00', 3),
(12, 'Le Dôme  ', '48 Avenue de Saint-Just', 'Marseille', '09/02/2014 20:00', '42.00', 3),
(13, 'Cabaret Aléatoire  ', '41 Rue Jobin', 'Marseille', '10/01/2014 20:00', '36.00', 4),
(14, 'La Flèche d''Or', '102 Bis Rue de Bagnolet', 'Paris', '27/01/2014 19:30', '17.00', 4),
(15, 'Le Mandala  ', '23 Rue des Amidonniers', 'Toulouse', '11/04/2014 20:00', '33.00', 4),
(16, 'La Plateforme', '4 Quai Victor Augagneur', 'Lyon', '15/04/2014 19:30', '39.00', 4),
(17, 'el Chicho  ', '52 Place des Capucins', 'Bordeaux', '18/02/2014 20:30', '16.00', 5),
(18, 'Le bijou ', '123 Avenue de Muret', 'Toulouse', '04/03/2014 20:00', '25.00', 5),
(19, 'La Maroquinerie', '23 Rue Boyer', 'Paris', '25/02/2014 20:30', '46.00', 5),
(20, 'Le Dôme  ', '48 Avenue de Saint-Just', 'Marseille', '13/01/2014 19:00', '20.00', 5),
(21, 'Café des Moines  ', '12 Rue des Menuts', 'Bordeaux', '15/04/2014 19:30', '21.00', 6),
(22, 'Espace Julien  ', '39 Cours Julien', 'Marseille', '09/02/2014 20:00', '13.00', 6),
(23, 'Le Périscope', '13 Rue Delandine', 'Lyon', '15/04/2014 19:30', '12.00', 6),
(24, 'Le Bootleg  ', '4-6 Rue Lacornée', 'Bordeaux', '20/01/2014 20:00', '30.00', 6),
(25, 'La Maroquinerie', '23 Rue Boyer', 'Paris', '12/01/2014 20:00', '40.00', 7),
(26, 'Le Bootleg  ', '4-6 Rue Lacornée', 'Bordeaux', '10/01/2014 20:00', '45.00', 7),
(27, 'Le Moulin  ', '47 Boulevard Perrin', 'Marseille', '27/01/2014 19:30', '47.00', 7),
(28, 'Le Moulin  ', '47 Boulevard Perrin', 'Marseille', '15/04/2014 19:30', '16.00', 7),
(29, 'Les Subsistances', '8 bis Quai Saint-Vincent', 'Lyon', '27/01/2014 19:30', '43.00', 8),
(30, 'Le Dôme  ', '48 Avenue de Saint-Just', 'Marseille', '25/02/2014 20:30', '10.00', 8),
(31, 'Le Moulin  ', '47 Boulevard Perrin', 'Marseille', '13/01/2014 19:00', '20.00', 8),
(32, 'Le Dôme  ', '48 Avenue de Saint-Just', 'Marseille', '04/03/2014 20:00', '27.00', 8),
(33, 'La Maroquinerie', '23 Rue Boyer', 'Paris', '09/02/2014 20:00', '14.00', 9),
(34, 'Le Périscope', '13 Rue Delandine', 'Lyon', '18/02/2014 20:30', '11.00', 9),
(35, 'Le Moulin  ', '47 Boulevard Perrin', 'Marseille', '10/01/2014 20:00', '13.00', 9),
(36, 'La Flèche d''Or', '102 Bis Rue de Bagnolet', 'Paris', '20/01/2014 20:00', '17.00', 9),
(37, 'Rock School Barbey  ', '18 Cours Barbey', 'Bordeaux', '13/01/2014 19:00', '16.00', 10),
(38, 'Le Bootleg  ', '4-6 Rue Lacornée', 'Bordeaux', '25/02/2014 20:30', '22.00', 10),
(39, 'Le Moulin  ', '47 Boulevard Perrin', 'Marseille', '27/01/2014 19:30', '16.00', 10),
(40, 'Le Périscope', '13 Rue Delandine', 'Lyon', '11/04/2014 20:00', '24.00', 10),
(41, 'La Maroquinerie', '23 Rue Boyer', 'Paris', '12/01/2014 20:00', '38.00', 11),
(42, 'Le Dôme  ', '48 Avenue de Saint-Just', 'Marseille', '09/02/2014 20:00', '20.00', 11),
(43, 'Les Subsistances', '8 bis Quai Saint-Vincent', 'Lyon', '15/04/2014 19:30', '30.00', 11),
(44, 'Le Bootleg  ', '4-6 Rue Lacornée', 'Bordeaux', '04/03/2014 20:00', '39.00', 11),
(45, 'Rock School Barbey  ', '18 Cours Barbey', 'Bordeaux', '20/01/2014 20:00', '37.00', 12),
(46, 'La Maroquinerie', '23 Rue Boyer', 'Paris', '12/01/2014 20:00', '24.00', 12),
(47, 'Le Périscope', '13 Rue Delandine', 'Lyon', '09/02/2014 20:00', '22.00', 12),
(48, 'Le Moulin  ', '47 Boulevard Perrin', 'Marseille', '11/04/2014 20:00', '26.00', 12),
(49, 'Le Dôme  ', '48 Avenue de Saint-Just', 'Marseille', '18/02/2014 20:30', '46.00', 12),
(50, 'La Maroquinerie', '23 Rue Boyer', 'Paris', '25/02/2014 20:30', '11.00', 13),
(51, 'La Maroquinerie', '23 Rue Boyer', 'Paris', '27/01/2014 19:30', '32.00', 13),
(52, 'Rock School Barbey  ', '18 Cours Barbey', 'Bordeaux', '04/03/2014 20:00', '36.00', 13),
(53, 'La Flèche d''Or', '102 Bis Rue de Bagnolet', 'Paris', '13/01/2014 19:00', '28.00', 13),
(54, 'Cabaret Aléatoire  ', '41 Rue Jobin', 'Marseille', '09/02/2014 20:00', '20.00', 14),
(55, 'La Maroquinerie', '23 Rue Boyer', 'Paris', '12/01/2014 20:00', '38.00', 14),
(56, 'Les Subsistances', '8 bis Quai Saint-Vincent', 'Lyon', '20/01/2014 20:00', '34.00', 14),
(57, 'Cabaret Aléatoire  ', '41 Rue Jobin', 'Marseille', '16/01/2014 20:00', '31.00', 14),
(58, 'Le Périscope', '13 Rue Delandine', 'Lyon', '18/02/2014 20:30', '35.00', 15),
(59, 'Le Moulin  ', '47 Boulevard Perrin', 'Marseille', '15/04/2014 19:30', '16.00', 15),
(60, 'La Flèche d''Or', '102 Bis Rue de Bagnolet', 'Paris', '10/01/2014 20:00', '49.00', 15),
(61, 'Le Bootleg  ', '4-6 Rue Lacornée', 'Bordeaux', '11/04/2014 20:00', '42.00', 15),
(62, 'Les Subsistances', '8 bis Quai Saint-Vincent', 'Lyon', '25/02/2014 20:30', '29.00', 16),
(63, 'Le Moulin  ', '47 Boulevard Perrin', 'Marseille', '27/01/2014 19:30', '36.00', 16),
(64, 'La Maroquinerie', '23 Rue Boyer', 'Paris', '18/02/2014 20:30', '46.00', 16),
(65, 'Cabaret Aléatoire  ', '41 Rue Jobin', 'Marseille', '16/01/2014 20:00', '30.00', 16),
(66, 'Le Périscope', '13 Rue Delandine', 'Lyon', '13/01/2014 19:00', '38.00', 17),
(67, 'Rock School Barbey  ', '18 Cours Barbey', 'Bordeaux', '12/01/2014 20:00', '19.00', 17),
(68, 'Le Bootleg  ', '4-6 Rue Lacornée', 'Bordeaux', '09/02/2014 20:00', '40.00', 17),
(69, 'La Maroquinerie', '23 Rue Boyer', 'Paris', '04/03/2014 20:00', '10.00', 17),
(70, 'La Maroquinerie', '23 Rue Boyer', 'Paris', '16/01/2014 20:00', '18.00', 18),
(71, 'Le Moulin  ', '47 Boulevard Perrin', 'Marseille', '25/02/2014 20:30', '24.00', 18),
(72, 'Cabaret Aléatoire  ', '41 Rue Jobin', 'Marseille', '16/01/2014 20:00', '13.00', 18),
(73, 'La Maroquinerie', '23 Rue Boyer', 'Paris', '15/04/2014 19:30', '28.00', 18),
(74, 'Le Bootleg  ', '4-6 Rue Lacornée', 'Bordeaux', '09/02/2014 20:00', '34.00', 19),
(75, 'Les Subsistances', '8 bis Quai Saint-Vincent', 'Lyon', '11/04/2014 20:00', '25.00', 19),
(76, 'La Maroquinerie', '23 Rue Boyer', 'Paris', '12/01/2014 20:00', '16.00', 19),
(77, 'Rock School Barbey  ', '18 Cours Barbey', 'Bordeaux', '18/02/2014 20:30', '33.00', 19),
(78, 'La Flèche d''Or', '102 Bis Rue de Bagnolet', 'Paris', '04/03/2014 20:00', '42.00', 20),
(79, 'Le Bootleg  ', '4-6 Rue Lacornée', 'Bordeaux', '25/02/2014 20:30', '22.00', 20),
(80, 'Le Périscope', '13 Rue Delandine', 'Lyon', '20/01/2014 20:00', '19.00', 21),
(81, 'Le Moulin  ', '47 Boulevard Perrin', 'Marseille', '16/01/2014 20:00', '30.00', 21),
(82, 'La Maroquinerie', '23 Rue Boyer', 'Paris', '11/04/2014 20:00', '15.00', 21),
(83, 'Le Moulin  ', '47 Boulevard Perrin', 'Marseille', '27/01/2014 19:30', '40.00', 22),
(84, 'Les Subsistances', '8 bis Quai Saint-Vincent', 'Lyon', '09/02/2014 20:00', '16.00', 22),
(85, 'Le Bootleg  ', '4-6 Rue Lacornée', 'Bordeaux', '16/01/2014 20:00', '28.00', 22),
(86, 'Le Moulin  ', '47 Boulevard Perrin', 'Marseille', '20/01/2014 20:00', '43.00', 22),
(87, 'La Flèche d''Or', '102 Bis Rue de Bagnolet', 'Paris', '18/02/2014 20:30', '30.00', 23),
(88, 'Cabaret Aléatoire  ', '41 Rue Jobin', 'Marseille', '11/04/2014 20:00', '15.00', 23),
(89, 'Les Subsistances', '8 bis Quai Saint-Vincent', 'Lyon', '04/03/2014 20:00', '50.00', 23),
(90, 'La Maroquinerie', '23 Rue Boyer', 'Paris', '13/01/2014 19:00', '36.00', 23),
(91, 'Cabaret Aléatoire  ', '41 Rue Jobin', 'Marseille', '15/04/2014 19:30', '49.00', 24),
(92, 'Le Périscope', '13 Rue Delandine', 'Lyon', '12/01/2014 20:00', '38.00', 24),
(93, 'Le Bootleg  ', '4-6 Rue Lacornée', 'Bordeaux', '18/02/2014 20:30', '40.00', 24),
(94, 'Le Moulin  ', '47 Boulevard Perrin', 'Marseille', '25/02/2014 20:30', '11.00', 24),
(95, 'La Flèche d''Or', '102 Bis Rue de Bagnolet', 'Paris', '09/02/2014 20:00', '41.00', 25),
(96, 'Cabaret Aléatoire  ', '41 Rue Jobin', 'Marseille', '16/01/2014 20:00', '17.00', 25),
(97, 'Le Bootleg  ', '4-6 Rue Lacornée', 'Bordeaux', '10/01/2014 20:00', '13.00', 25),
(98, 'Les Subsistances', '8 bis Quai Saint-Vincent', 'Lyon', '27/01/2014 19:30', '47.00', 25),
(99, 'Le Moulin  ', '47 Boulevard Perrin', 'Marseille', '12/01/2014 20:00', '28.00', 26),
(100, 'Le Bootleg  ', '4-6 Rue Lacornée', 'Bordeaux', '11/04/2014 20:00', '33.00', 26),
(101, 'La Maroquinerie', '23 Rue Boyer', 'Paris', '18/02/2014 20:30', '40.00', 26),
(102, 'Rock School Barbey  ', '18 Cours Barbey', 'Bordeaux', '25/02/2014 20:30', '29.00', 26),
(103, 'Les Subsistances', '8 bis Quai Saint-Vincent', 'Lyon', '09/02/2014 20:00', '12.00', 27),
(104, 'Les Subsistances', '8 bis Quai Saint-Vincent', 'Lyon', '15/04/2014 19:30', '19.00', 27),
(105, 'Rock School Barbey  ', '18 Cours Barbey', 'Bordeaux', '11/04/2014 20:00', '48.00', 27),
(106, 'Le Dôme  ', '48 Avenue de Saint-Just', 'Marseille', '20/01/2014 20:00', '15.00', 27),
(107, 'La Flèche d''Or', '102 Bis Rue de Bagnolet', 'Paris', '04/03/2014 20:00', '25.00', 28),
(108, 'Le Moulin  ', '47 Boulevard Perrin', 'Marseille', '27/01/2014 19:30', '27.00', 28),
(109, 'Les Subsistances', '8 bis Quai Saint-Vincent', 'Lyon', '18/02/2014 20:30', '11.00', 28),
(110, 'Le Bootleg  ', '4-6 Rue Lacornée', 'Bordeaux', '10/01/2014 20:00', '38.00', 29),
(111, 'Le Moulin  ', '47 Boulevard Perrin', 'Marseille', '04/03/2014 20:00', '39.00', 29),
(112, 'La Maroquinerie', '23 Rue Boyer', 'Paris', '25/02/2014 20:30', '24.00', 29),
(113, 'Rock School Barbey  ', '18 Cours Barbey', 'Bordeaux', '09/02/2014 20:00', '49.00', 29),
(114, 'Le Périscope', '13 Rue Delandine', 'Lyon', '18/02/2014 20:30', '24.00', 30),
(115, 'Les Subsistances', '8 bis Quai Saint-Vincent', 'Lyon', '27/01/2014 19:30', '25.00', 30),
(116, 'Rock School Barbey  ', '18 Cours Barbey', 'Bordeaux', '20/01/2014 20:00', '22.00', 30),
(117, 'La Maroquinerie', '23 Rue Boyer', 'Paris', '13/01/2014 19:00', '27.00', 30);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `concerts`
--
ALTER TABLE `concerts`
  ADD CONSTRAINT `fk_id_artist` FOREIGN KEY (`id_artist`) REFERENCES `artists` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
