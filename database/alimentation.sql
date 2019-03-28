-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2019 at 01:53 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alimentation`
--

-- --------------------------------------------------------

--
-- Table structure for table `engins`
--

CREATE TABLE `engins` (
  `id_engin` int(11) NOT NULL,
  `marque` varchar(240) NOT NULL,
  `image` varchar(240) NOT NULL,
  `categorie` varchar(240) NOT NULL,
  `position` varchar(240) NOT NULL,
  `description` varchar(240) NOT NULL,
  `proprietaire` varchar(240) NOT NULL,
  `contact` varchar(240) NOT NULL,
  `date_ajout` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_debut_dispo` varchar(240) NOT NULL,
  `date_fin_dispo` varchar(240) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `engins`
--

INSERT INTO `engins` (`id_engin`, `marque`, `image`, `categorie`, `position`, `description`, `proprietaire`, `contact`, `date_ajout`, `date_debut_dispo`, `date_fin_dispo`) VALUES
(1, 'kia', 'm6.jpg', 'camion', 'daloa', 'en forme et disponible partout', 'maloni', '7070707', '2019-03-27 13:45:21', '0000-00-00', '10/02/2020'),
(2, 'kia', 'm1.jpg', 'camion', 'yakro', 'en forme et disponible partout', 'gera', '02120204', '2019-03-27 13:45:13', '0000-00-00', '01/09/2019'),
(3, 'kia', 'm7.jpg', 'camion', 'abengourou', 'en forme et disponible partout', 'treza', '08442121', '2019-03-27 13:45:35', '0000-00-00', '25/2/2020'),
(4, 'bmw', 'm5.jpg', 'personnel', 'abidjan', 'en forme et disponible partout', 'azdey', '05551221', '2019-03-27 13:45:48', '0000-00-00', '26/8/2019'),
(5, 'bmw', 'm2.jpg', 'machine', 'abobo', 'azerty', 'gfeaz', '45612236', '2019-03-27 13:38:34', '29/04/2019', '20/5/2019'),
(6, 'mercedess', 'm1.jpg', 'cater', 'cocody', 'pour reza', 'beda', '45656565', '2019-03-27 13:39:24', '20/02/2019', '4/06/2019'),
(7, 'bmw', 'm3.jpg', 'machine', 'abobo', 'azerty', 'gfeaz', '45612236', '2019-03-27 13:39:34', '29/04/2019', '20/5/2019'),
(8, 'mercedess', 'm4.jpg', 'cater', 'cocody', 'pour reza', 'beda', '45656565', '2019-03-27 13:39:47', '20/02/2019', '4/06/2019'),
(9, 'bmw', 'm2.jpg', 'machine', 'abobo', 'azerty', 'gfeaz', '45612236', '2019-03-27 13:38:56', '29/04/2019', '20/5/2019'),
(10, 'mercedess', 'm1.jpg', 'cater', 'cocody', 'pour reza', 'beda', '45656565', '2019-03-27 13:46:22', '20/02/2019', '4/06/2019');

-- --------------------------------------------------------

--
-- Table structure for table `recettes`
--

CREATE TABLE `recettes` (
  `id` int(11) NOT NULL,
  `nom` varchar(140) NOT NULL,
  `categorie` varchar(200) NOT NULL,
  `image` varchar(140) NOT NULL,
  `description` text NOT NULL,
  `origine` varchar(200) NOT NULL,
  `ingredient` text NOT NULL,
  `preparation` text NOT NULL,
  `duree` time NOT NULL,
  `nbrepersonne` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recettes`
--

INSERT INTO `recettes` (`id`, `nom`, `categorie`, `image`, `description`, `origine`, `ingredient`, `preparation`, `duree`, `nbrepersonne`) VALUES
(1, 'kabato', 'cuisine africaine', 'i93527-fonio-au-poulet.jpg', '\r\n                                   delice d\'afrique', 'bete', '2.5 tranches de thon frais de 300 g environ\r\n2.5 boules de couscous de manioc, que l\'on trouve facilement dans les épiceries exotiques)\r\n2.5 oignons\r\n2.5 piments africain (facultatif)\r\n2.5 cubesMaggi pour salade (1/2 pour bouillon)\r\nHuile pour la friture\r\nPoivre\r\nSel\r\n2.5 grosses poignées de farine ', '     Etape 1     Matériel :     Etape 2     - une cuillère en bois, à cause du du citron     Etape 3     - un grand saladier en verre     Etape 4     - une poêle à frire     Etape 5     - une petite casserole     Etape 6     - un presse-agrumes, électrique si possible     Etape 7     - un tablier à bavette (qu\'on doit absolument porter pendant la préparation et la dégustation de cette recette, à cause de la sauce au citron et de la sauce piment qui, étant très liquides, peuvent tacher vos vêtements. Si possible, prévoyez-en pour vos invités !     Etape 8     La veille :     Etape 9     Pressez tous vos citrons.     Etape 10     Dans le grand saladier, vous mettrez une cuillerée à soupe d\'eau, une de vinaigre, une d\'huile d\'olive, une 1 cuillerée à café de harissa, du sel, du poivre, des herbes de     Etape 11     Provence.     Etape 12     Remuez tout ce mélange avec votre spatule en bois, tout en versant doucement le jus du citron pressé.     Etape 13     Ensuite, vous mettrez dans cette marinade les tranches d\'oignons (épluchées) et coupées en gros morceaux, ainsi que trois morceaux d\'ail épluchés.     Etape 14     Puis, après avoir, avec votre main, enduit (de tous les côtés) vos morceaux de viande de moutarde, vous les mettrez dans la marinade :     Etape 15     vous couvrez le tout et laissez reposer pendant 24h.     Etape 16     Le lendemain :     Etape 17     Pendant la cuisson de votre riz, à votre convenance, sortez de la marinade :     Etape 18     - la viande que vous ferez griller des deux côtés sur un gril, pendant une demi-heure par côté ;     Etape 19     - les morceaux d\'oignon et d\'ail que vous ferez revenir dans une poêle.     Etape 20     Ensuite, mettez la marinade dans une casserole et cuisez la jusqu\'à ébullition en y jettant les morceaux d\'oignon et d\'ail que vous aurez fait revenir.     Etape 21     Préparez la sauce piment, à feu doux, avec une sauce tomate et de l\'harissa     Etape 22     Présentation à table :     Etape 23     - un Plat de riz     Etape 24     - un plat de viande     Etape 25     - une saucière avec la marinade     Etape 26     - une saucière avec la sauce piment', '00:55:00', 5),
(2, 'patiti', 'cuisine africaine', 'll.jpg', 'bon week', 'gouro', '2.5 tranches de thon frais de 300 g environ\r\n2.5 boules de couscous de manioc, que l\'on trouve facilement dans les épiceries exotiques)\r\n2.5 oignons\r\n2.5 piments africain (facultatif)\r\n2.5 cubesMaggi pour salade (1/2 pour bouillon)\r\nHuile pour la friture\r\nPoivre\r\nSel\r\n2.5 grosses poignées de farine ', '     Etape 1     Matériel :     Etape 2     - une cuillère en bois, à cause du du citron     Etape 3     - un grand saladier en verre     Etape 4     - une poêle à frire     Etape 5     - une petite casserole     Etape 6     - un presse-agrumes, électrique si possible     Etape 7     - un tablier à bavette (qu\'on doit absolument porter pendant la préparation et la dégustation de cette recette, à cause de la sauce au citron et de la sauce piment qui, étant très liquides, peuvent tacher vos vêtements. Si possible, prévoyez-en pour vos invités !     Etape 8     La veille :     Etape 9     Pressez tous vos citrons.     Etape 10     Dans le grand saladier, vous mettrez une cuillerée à soupe d\'eau, une de vinaigre, une d\'huile d\'olive, une 1 cuillerée à café de harissa, du sel, du poivre, des herbes de     Etape 11     Provence.     Etape 12     Remuez tout ce mélange avec votre spatule en bois, tout en versant doucement le jus du citron pressé.     Etape 13     Ensuite, vous mettrez dans cette marinade les tranches d\'oignons (épluchées) et coupées en gros morceaux, ainsi que trois morceaux d\'ail épluchés.     Etape 14     Puis, après avoir, avec votre main, enduit (de tous les côtés) vos morceaux de viande de moutarde, vous les mettrez dans la marinade :     Etape 15     vous couvrez le tout et laissez reposer pendant 24h.     Etape 16     Le lendemain :     Etape 17     Pendant la cuisson de votre riz, à votre convenance, sortez de la marinade :     Etape 18     - la viande que vous ferez griller des deux côtés sur un gril, pendant une demi-heure par côté ;     Etape 19     - les morceaux d\'oignon et d\'ail que vous ferez revenir dans une poêle.     Etape 20     Ensuite, mettez la marinade dans une casserole et cuisez la jusqu\'à ébullition en y jettant les morceaux d\'oignon et d\'ail que vous aurez fait revenir.     Etape 21     Préparez la sauce piment, à feu doux, avec une sauce tomate et de l\'harissa     Etape 22     Présentation à table :     Etape 23     - un Plat de riz     Etape 24     - un plat de viande     Etape 25     - une saucière avec la marinade    ', '00:33:00', 5),
(3, 'parena', 'cuisine africaine', 'legum.jpg', 'incroyable', 'baoule', '2.5 tranches de thon frais de 300 g environ\r\n2.5 boules de couscous de manioc, que l\'on trouve facilement dans les épiceries exotiques)\r\n2.5 oignons\r\n2.5 piments africain (facultatif)\r\n2.5 cubesMaggi pour salade (1/2 pour bouillon)\r\nHuile pour la friture\r\nPoivre\r\nSel\r\n2.5 grosses poignées de farine ', 's pas habitué au piment frais, attention au piment africain: il brûle! Emincer l’oignon et réserver.     Etape 2     Emietter grossièrement l’attieké dans un panier vapeur, afin de le réhydrater. Il se prépare comme le couscous (personnellement, je fais passer l’attieké cinq minutes à la cocotte minute).     Etape 3     Saler, poivrer, fariner le thon et le faire frire, cinq minutes sur chaque face, dans de l’huile bien chaude.     Etape 4     Dresser une grande assiette (ou 2 si vous préférez manger à l’européenne): répartir l’attieké, l’arroser de 3-4 cuillères d’huile de friture, émietter le cube maggi sur toute la surface du plat, et bien mélanger avec la main.     Etape 5     Répartir par-dessus l’oignon. Poser le poisson frit dessus. Proposer le piment à part. C’est encore m', '00:40:40', 5),
(4, 'garba', 'afrique', 'garba.jpg', 'à gouter absolument', 'attie', '2.5 tranches de thon frais de 300 g environ\r\n2.5 boules de couscous de manioc, que l\'on trouve facilement dans les épiceries exotiques)\r\n2.5 oignons\r\n2.5 piments africain (facultatif)\r\n2.5 cubesMaggi pour salade (1/2 pour bouillon)\r\nHuile pour la friture\r\nPoivre\r\nSel\r\n2.5 grosses poignées de farine ', '\r\n    Etape 1\r\n    Hacher le piment et réserver. Si vous n’êtes pas habitué au piment frais, attention au piment africain: il brûle! Emincer l’oignon et réserver.\r\n    Etape 2\r\n    Emietter grossièrement l’attieké dans un panier vapeur, afin de le réhydrater. Il se prépare comme le couscous (personnellement, je fais passer l’attieké cinq minutes à la cocotte minute).\r\n    Etape 3\r\n    Saler, poivrer, fariner le thon et le faire frire, cinq minutes sur chaque face, dans de l’huile bien chaude.\r\n    Etape 4\r\n    Dresser une grande assiette (ou 2 si vous préférez manger à l’européenne): répartir l’attieké, l’arroser de 3-4 cuillères d’huile de friture, émietter le cube maggi sur toute la surface du plat, et bien mélanger avec la main.\r\n    Etape 5\r\n    Répartir par-dessus l’oignon. Poser le poisson frit dessus. Proposer le piment à part. C’est encore meilleur avec les doigts!\r\n\r\nNote de l\'auteur\r\n\r\nPlat national ivoirien. On peut manger des alokos (bananes plantains frites) et/ou une salade concombre-tomates en même temps. ', '01:00:30', 5),
(5, 'Yassa de poulet', 'Sénégal', 'yassa.jpg', 'tres bonne recette', 'wolof', '2 morceaux de poulet désossés (par vous-même ou votre boucher)\r\nHuile d\'olive\r\nVinaigre\r\nMoutarde\r\n2 oignons selon grosseur\r\n3 gousses d\'ail\r\n3 citrons\r\nPoivre\r\nSel\r\nHerbes de Provence\r\n500 g de riz blanc\r\nHarissa', '\r\n    Etape 1\r\n    Matériel :\r\n    Etape 2\r\n    - une cuillère en bois, à cause du du citron\r\n    Etape 3\r\n    - un grand saladier en verre\r\n    Etape 4\r\n    - une poêle à frire\r\n    Etape 5\r\n    - une petite casserole\r\n    Etape 6\r\n    - un presse-agrumes, électrique si possible\r\n    Etape 7\r\n    - un tablier à bavette (qu\'on doit absolument porter pendant la préparation et la dégustation de cette recette, à cause de la sauce au citron et de la sauce piment qui, étant très liquides, peuvent tacher vos vêtements. Si possible, prévoyez-en pour vos invités !\r\n    Etape 8\r\n    La veille :\r\n    Etape 9\r\n    Pressez tous vos citrons.\r\n    Etape 10\r\n    Dans le grand saladier, vous mettrez une cuillerée à soupe d\'eau, une de vinaigre, une d\'huile d\'olive, une 1 cuillerée à café de harissa, du sel, du poivre, des herbes de\r\n    Etape 11\r\n    Provence.\r\n    Etape 12\r\n    Remuez tout ce mélange avec votre spatule en bois, tout en versant doucement le jus du citron pressé.\r\n    Etape 13\r\n    Ensuite, vous mettrez dans cette marinade les tranches d\'oignons (épluchées) et coupées en gros morceaux, ainsi que trois morceaux d\'ail épluchés.\r\n    Etape 14\r\n    Puis, après avoir, avec votre main, enduit (de tous les côtés) vos morceaux de viande de moutarde, vous les mettrez dans la marinade :\r\n    Etape 15\r\n    vous couvrez le tout et laissez reposer pendant 24h.\r\n    Etape 16\r\n    Le lendemain :\r\n    Etape 17\r\n    Pendant la cuisson de votre riz, à votre convenance, sortez de la marinade :\r\n    Etape 18\r\n    - la viande que vous ferez griller des deux côtés sur un gril, pendant une demi-heure par côté ;\r\n    Etape 19\r\n    - les morceaux d\'oignon et d\'ail que vous ferez revenir dans une poêle.\r\n    Etape 20\r\n    Ensuite, mettez la marinade dans une casserole et cuisez la jusqu\'à ébullition en y jettant les morceaux d\'oignon et d\'ail que vous aurez fait revenir.\r\n    Etape 21\r\n    Préparez la sauce piment, à feu doux, avec une sauce tomate et de l\'harissa\r\n    Etape 22\r\n    Présentation à table :\r\n    Etape 23\r\n    - un Plat de riz\r\n    Etape 24\r\n    - un plat de viande\r\n    Etape 25\r\n    - une saucière avec la marinade\r\n    Etape 26\r\n    - une saucière avec la sauce piment\r\n', '00:31:01', 2);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id_resto` int(11) NOT NULL,
  `nom_resto` varchar(240) NOT NULL,
  `commune` varchar(240) NOT NULL,
  `proprietaire` varchar(240) NOT NULL,
  `image` text NOT NULL,
  `specialite` varchar(240) NOT NULL,
  `contact` varchar(44) NOT NULL,
  `categorie` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id_resto`, `nom_resto`, `commune`, `proprietaire`, `image`, `specialite`, `contact`, `categorie`) VALUES
(1, 'resto palace', 'abobo', 'dao lassina', 'r1.jpg', 'poulet braisé', '01010101', 'restaurant'),
(2, 'ati resto', 'Abidjan, Marcory Remblais\r\nBoulevard du cameroun', 'bompe', 'tomate.jpg', 'patisserie,grillades', '02001002', 'restaurant'),
(3, 'galerie delice', 'adjame', 'molina', 'r2.jpg', 'pain', '55555555', 'boulangerie'),
(4, 'ati resto', 'Abidjan, Marcory Remblais\r\nBoulevard du cameroun', 'bompe', 'r3.jpg', 'patisserie,grillades', '02001002', 'restaurant'),
(5, 'galerie delice', 'adjame', 'molina', 'r4.jpg', 'pain', '55555555', 'boulangerie'),
(6, 'ati resto', 'Abidjan, Marcory Remblais\r\nBoulevard du cameroun', 'bompe', 'r5.jpg', 'patisserie,grillades', '02001002', 'restaurant'),
(7, 'galerie delice', 'adjame', 'molina', 'glacier.jpg', 'pain', '55555555', 'boulangerie'),
(8, 'ati resto', 'Abidjan, Marcory Remblais\r\nBoulevard du cameroun', 'bompe', 'ati.jpg', 'patisserie,grillades', '02001002', 'restaurant'),
(9, 'galerie delice', 'adjame', 'molina', 'glacier.jpg', 'pain', '55555555', 'boulangerie');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `engins`
--
ALTER TABLE `engins`
  ADD PRIMARY KEY (`id_engin`);

--
-- Indexes for table `recettes`
--
ALTER TABLE `recettes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id_resto`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `engins`
--
ALTER TABLE `engins`
  MODIFY `id_engin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `recettes`
--
ALTER TABLE `recettes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id_resto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
