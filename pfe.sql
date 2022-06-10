-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2022 at 04:01 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pfe`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrateurs`
--

CREATE TABLE `administrateurs` (
  `id_adm` int(11) NOT NULL,
  `nom_adm` varchar(50) NOT NULL,
  `prenom_adm` varchar(50) NOT NULL,
  `login_adm` varchar(50) NOT NULL,
  `passe_adm` varchar(50) NOT NULL,
  `photo_adm` varchar(50) NOT NULL DEFAULT 'unknown.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `administrateurs`
--

INSERT INTO `administrateurs` (`id_adm`, `nom_adm`, `prenom_adm`, `login_adm`, `passe_adm`, `photo_adm`) VALUES
(1, 'Mohammed', 'BENBRAHIM', 'mohammed.benbrahim@uit.ac.ma', 'azerty1', '1adm.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `encadrants_entreprise`
--

CREATE TABLE `encadrants_entreprise` (
  `id_encadrant` int(11) NOT NULL,
  `nom_encadrant` varchar(50) NOT NULL,
  `prenom_encadrant` varchar(50) NOT NULL,
  `tel_encadrant` varchar(50) NOT NULL,
  `email_encadrant` varchar(50) NOT NULL,
  `fk_id_etr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `encadrants_entreprise`
--

INSERT INTO `encadrants_entreprise` (`id_encadrant`, `nom_encadrant`, `prenom_encadrant`, `tel_encadrant`, `email_encadrant`, `fk_id_etr`) VALUES
(1, 'amrani', 'amine', '0666884456', 'amine@gmail.com', 1),
(2, 'assil', 'ahmed', '0666884444', 'ahmed@gmail.com', 2),
(4, 'karom', 'samir', '0690679113', 'samir@gmail.com', 4),
(5, 'karom', 'samir', '0690679113', 'samir@gmail.com', 4),
(6, 'karom', 'samir', '0690679113', 'samir@gmail.com', 4),
(7, 'karom', 'samir', '0690679113', 'samir@gmail.com', 4),
(8, 'karom', 'samir', '0690679113', 'samir@gmail.com', 4),
(9, 'karom', 'samir', '0690679113', 'samir@gmail.com', 4),
(10, 'karom', 'samir', '0690679113', 'samir@gmail.com', 4),
(11, 'karom', 'samir', '0690679113', 'samir@gmail.com', 4),
(12, 'karom', 'samir', '0690679113', 'samir@gmail.com', 4),
(13, 'karom', 'samir', '0690552113', 'samir@gmail.com', 4),
(14, 'karom', 'samir', '0690552113', 'samir@gmail.com', 4),
(15, 'karom', 'samir', '0690552113', 'samir@gmail.com', 4),
(16, 'karom', 'samir', '0690552113', 'samir@gmail.com', 4),
(17, 'karom', 'samir', '0690552113', 'samir@gmail.com', 4),
(18, 'karom', 'samir', '0690552113', 'samir@gmail.com', 4),
(19, 'karom', 'samir', '0690552113', 'samir@gmail.com', 1),
(20, 'karom', 'samir', '0690552113', 'samir@gmail.com', 1),
(21, 'karom', 'samir', '0690552113', 'samir@gmail.com', 1),
(22, 'amor', 'hamid', '0690552113', 'hamid@gmail.com', 22),
(23, 'kamil', 'mounir', '0690552113', 'mounir@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `enseignants`
--

CREATE TABLE `enseignants` (
  `id_enseignant` int(11) NOT NULL,
  `prenom_enseignant` varchar(13) DEFAULT NULL,
  `nom_enseignant` varchar(22) DEFAULT NULL,
  `login_enseignant` varchar(33) DEFAULT NULL,
  `passe_enseignant` varchar(50) NOT NULL,
  `photo_enseignant` varchar(50) NOT NULL DEFAULT 'unknown.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `enseignants`
--

INSERT INTO `enseignants` (`id_enseignant`, `prenom_enseignant`, `nom_enseignant`, `login_enseignant`, `passe_enseignant`, `photo_enseignant`) VALUES
(1, 'Ibrahim', 'BOUMAZZOU', 'ibrahim.boumazzou@uit.ac.ma', 'azerty', 'unknown.png'),
(2, 'Moulay Othman', 'ABOUTAFAIL', 'moulayothman.aboutafail@uit.ac.ma', 'azerty', 'unknown.png'),
(3, 'Nabil', 'HMINA', 'nabil.hmina@uit.ac.ma', 'azerty', 'unknown.png'),
(4, 'Hassan', 'MHARZI', 'h.mharzi@uit.ac.ma', 'azerty111', 'nin.png'),
(5, 'Driss', 'GRETETE', 'driss.gretete@uit.ac.ma', 'azerty1111', 'unknown.png'),
(6, 'Mostafa', 'MASLOUHI', 'mostafa.maslouhi@uit.ac.ma', 'azerty', 'unknown.png'),
(7, 'Abdellah', 'ABOUABDELLAH', 'abdellah.abouabdellah@uit.ac.ma', 'azerty', 'unknown.png'),
(8, 'Moulay Taib', 'BELGHITI', 'moulaytaib.belghiti@uit.ac.ma', 'azerty', 'unknown.png'),
(9, 'Habiba', 'CHAOUI', 'habiba.chaoui@uit.ac.ma', 'azerty', 'unknown.png'),
(10, 'Abdelmajid', 'ELOUADI', 'abdelmajid.elouadi@uit.ac.ma', 'azerty', 'unknown.png'),
(11, 'Norelislam', 'EL HAMI', 'norelislam.elhami@uit.ac.ma', 'azerty', 'unknown.png'),
(12, 'Youssef', 'BENTALEB', 'youssef.bentaleb@uit.ac.ma', 'azerty11', '12ens.jpg'),
(13, 'Khalid', 'CHOUGDALI', 'khalid.chougdali@uit.ac.ma', 'azerty', 'unknown.png'),
(14, 'Samir', 'BELFKIH', 'samir.belfkih@uit.ac.ma', 'azerty', 'unknown.png'),
(15, 'Ilham', 'OUMAIRA', 'ilham.oumaira@uit.ac.ma', 'azerty', 'unknown.png'),
(16, 'Aouatif', 'AMINE', 'aouatif.amine@uit.ac.ma', 'azerty', 'unknown.png'),
(17, 'Anas', 'BOUAYAD', 'anas.bouayad@uit.ac.ma', 'azerty', 'unknown.png'),
(18, 'Younes', 'EL BOUZEKRI EL IDRISSI', 'y.elbouzekri@uit.ac.ma', 'azerty', 'unknown.png'),
(19, 'Ayoub', 'AIT LAHCEN', 'ayoub.aitlahcen@uit.ac.ma', 'azerty', 'unknown.png'),
(20, 'Hanaa', 'HACHIMI', 'hanaa.hachimi@uit.ac.ma', 'azerty', 'unknown.png'),
(21, 'Rachid', 'BANNARI', 'rachid.bannari@uit.ac.ma', 'azerty', 'unknown.png'),
(22, 'Samira', 'MABTOUL', 'samira.mabtoul@uit.ac.ma', 'azerty', 'unknown.png'),
(23, 'Laila', 'EL ABBADI', 'laila.elabbadi@uit.ac.ma', 'azerty', 'unknown.png');

-- --------------------------------------------------------

--
-- Table structure for table `entreprises`
--

CREATE TABLE `entreprises` (
  `id_entreprise` int(11) NOT NULL,
  `nom_entreprise` varchar(50) NOT NULL,
  `adresse_entreprise` varchar(50) NOT NULL,
  `tel_entreprise` varchar(50) NOT NULL,
  `fk_id_ville` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `entreprises`
--

INSERT INTO `entreprises` (`id_entreprise`, `nom_entreprise`, `adresse_entreprise`, `tel_entreprise`, `fk_id_ville`) VALUES
(1, 'novares', 'adr1', '0537615208', 22),
(2, 'delphi', 'adr2', '0537615208', 3),
(4, 'decastal', 'adr33', '0690332113', 4),
(5, 'decastal', 'adr33', '0690332113', 4),
(6, 'decastal', 'adr33', '0690332113', 4),
(7, 'decastal', 'adr33', '0690332113', 4),
(8, 'decastal', 'adr33', '0690332113', 4),
(9, 'decastal', 'adr33', '0690332113', 4),
(10, 'decastal', 'adr33', '0690332113', 4),
(11, 'decastal', 'adr33', '0690332113', 4),
(12, 'decastal', 'adr33', '0690332113', 4),
(13, 'decastal', 'adr33', '0690332113', 4),
(14, 'decastal', 'adr33', '0690332113', 4),
(15, 'decastal', 'adr33', '0690332113', 4),
(16, 'decastal', 'adr33', '0690332113', 5),
(17, 'decastal', 'adr33', '0690332113', 5),
(18, 'decastal', 'adr33', '0690332113', 5),
(19, 'novares', 'adr33', '0690332113', 4),
(20, 'novares', 'adr33', '0690332113', 4),
(21, 'novares', 'uvf', '0690332113', 2),
(22, 'yazaki', 'adr33', '0690332113', 10),
(23, 'novares', 'dzaad', '0690332113', 10);

-- --------------------------------------------------------

--
-- Table structure for table `etudiants`
--

CREATE TABLE `etudiants` (
  `id_apogee` int(8) NOT NULL,
  `nom_etudiant1` varchar(25) DEFAULT NULL,
  `prenom_etudiant1` varchar(19) DEFAULT NULL,
  `login_etudiant` varchar(41) DEFAULT NULL,
  `nom_etudiant2` varchar(50) DEFAULT NULL,
  `prenom_etudiant2` varchar(50) DEFAULT NULL,
  `filiere` varchar(50) DEFAULT NULL,
  `passe_etudiant` varchar(50) DEFAULT NULL,
  `photo_etudiant` varchar(50) DEFAULT 'unknown.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `etudiants`
--

INSERT INTO `etudiants` (`id_apogee`, `nom_etudiant1`, `prenom_etudiant1`, `login_etudiant`, `nom_etudiant2`, `prenom_etudiant2`, `filiere`, `passe_etudiant`, `photo_etudiant`) VALUES
(14000130, 'SAHRAOUI DOUKKALI', 'SAAD', 'saad.sahraouidoukkali@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(15006663, 'ZIAT', 'OUSSAMA', 'oussama.ziat@uit.ac.ma', NULL, NULL, NULL, 'azerty', '15006663.jpg'),
(16000022, 'EL AASSALI', 'IMADEDDINE', 'imadeddine.elaassali@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(16000050, 'EL HALABI', 'AYOUB', 'ayoub.elhalabi@uit.ac.ma', NULL, NULL, 'G-indus', 'azerty11', '16000050.jpg'),
(16000086, 'ARZIKI', 'ISMAIL', 'ismail.arziki@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(16000109, 'AKIL', 'OMAR', 'omar.akil@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(16000234, 'ELHADIOUIA', 'LEILA', 'leila.elhadiouia@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(16000360, 'AMARIR', 'ISMAIL', 'ismail.amarir@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(16003897, 'HANSALA', 'SALMA', 'salma.hansala@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(16003987, 'BENGHABRIT', 'MOHAMMED', 'mohammed.benghabrit@uit.ac.ma', NULL, NULL, NULL, 'azerty', '16003987.jpg'),
(16004718, 'LAMMARI', 'SAFOUANE', 'safouane.lammari@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(16004719, 'ZEKRI', 'AMAL', 'amal.zekri@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(16004865, 'LAMSAOURI', 'HAMZA', 'hamza.lamsaouri@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(16004931, 'TEBAA', 'MOHAMMED SAAD', 'mohammedsaad.tebaa@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17000543, 'LAKTAIBI', 'ANASS', 'anass.laktaibi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17000549, 'GOUMIDI', 'ABDERRAZZAK', 'abderrazzak.goumidi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17000711, 'GLIOULA', 'HIND', 'hind.glioula@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17003110, 'FAIZ', 'HAJAR', 'hajar.faiz@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17003784, 'KERDOUD', 'MOUAD', 'mouad.kerdoud@uit.ac.ma', NULL, NULL, NULL, 'azerty', '17003784.jpg'),
(17004061, 'SRAISAH', 'OUMAIMA', 'oumaima.sraisah@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17004178, 'AZZOUZI', 'ABDELLAH', 'abdellah.azzouzi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17004304, 'ALEM', 'AYOUB', 'ayoub.alem@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17004329, 'KANDIL', 'YAHIA', 'yahia.kandil@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17004423, 'EL GHARBI', 'DOUAA', 'douaa.elgharbi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17004484, 'ALIOUA', 'SALIM', 'salim.alioua@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17004527, 'KADIMI', 'HAMZA', 'hamza.kadimi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17004680, 'BENNANI', 'YASSINE', 'yassine.bennani@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17004777, 'BERRAGRAGUI', 'HASSAN', 'hassan.berragragui@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17004960, 'BENAYADA', 'OUSSAMA', 'oussama.benayada@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17004998, 'LAHMAMI', 'AYOUB', 'ayoub.lahmami@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17005155, 'LAHRIZI', 'TAHA', 'taha.lahrizi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17005162, 'EL BADAOUI', 'OMAR', 'omar.elbadaoui@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17005194, 'MOUNTIJ', 'YASSER', 'yasser.mountij@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17005215, 'ELKHDADI', 'AHMED', 'ahmed.elkhdadi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17005227, 'ERRAZGOUNI', 'SAAD', 'saad.errazgouni@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17005242, 'OUADRHIRI IDRISSI AZZOUZI', 'ZAKARIA', 'zakaria.ouadrhiriidrissiazzouzi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17005256, 'EL OUARTITI', 'MOHSINE', 'mohsine.elouartiti@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17005269, 'ELHARSI', 'HAMZA', 'hamza.elharsi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17005414, 'EL FEKAK', 'ISMAIL', 'ismail.elfekak@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17005436, 'FAIK', 'ABDELKHALEK', 'abdelkhalek.faik@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17005468, 'SIDATE', 'EL MAHDI', 'elmahdi.sidate@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17005529, 'TABCHI', 'ISSAM', 'issam.tabchi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17005537, 'ZEAIKOR', 'YOUSSEF', 'youssef.zeaikor@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17005624, 'HMADE', 'ABDELLAH', 'abdellah.hmade@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17005686, 'HILIA', 'ANAS', 'anas.hilia@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17005721, 'BENKIRANE', 'SOUKAINA', 'soukaina.benkirane@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17005778, 'BAKOUR', 'KAWTAR', 'kawtar.bakour@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17005812, 'BENADDI', 'OUAFAA', 'ouafaa.benaddi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17005819, 'BENSAMDI', 'IMANE', 'imane.bensamdi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17005831, 'JABAR', 'YOUNESS', 'youness.jabar@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17005847, 'JARHNI', 'AMINE', 'amine.jarhni@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17005893, 'JEBBAR', 'ABDENNOUR', 'abdennour.jebbar@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17005934, 'BENKADDOUR', 'ASSMA', 'assma.benkaddour@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17005975, 'BEKKALI', 'KAWTAR', 'kawtar.bekkali@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17006134, 'BENTASSIL', 'ZINEB', 'zineb.bentassil@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17006149, 'GHAZI', 'NERMINE', 'nermine.ghazi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17006198, 'GOUZA', 'SALMA', 'salma.gouza@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17006221, 'KRAIA', 'ZINEB', 'zineb.kraia@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17006314, 'EL JAAOUANI', 'ZAHRA', 'zahra.eljaaouani@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17006335, 'EL GHALI', 'RANIA', 'rania.elghali@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17006391, 'MRABET', 'SALMA', 'salma.mrabet@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17006468, 'EL AAZAOUZI', 'IKRAM', 'ikram.elaazaouzi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17006481, 'SAFI', 'OUMAIMA', 'oumaima.safi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17006518, 'ES SEBBANI', 'KAWTAR', 'kawtar.essebbani@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17006533, 'SAFRAOUI', 'CHAIMAE', 'chaimae.safraoui@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17006537, 'EL KHANFRI', 'HAJAR', 'hajar.elkhanfri@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17006549, 'FENNIRI', 'JIHAN', 'jihan.fenniri@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17006550, 'SABER', 'OUMAIMA', 'oumaima.saber@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17006654, 'HADIRI', 'SALOUA', 'saloua.hadiri@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17006687, 'TAYMOULI', 'ICHRAQ', 'ichraq.taymouli@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17006694, 'TADGHOUTI', 'NOUHAILA', 'nouhaila.tadghouti@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17006732, 'RADI', 'HAJAR', 'hajar.radi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17006800, 'JALAL', 'ACHRAF', 'achraf.jalal@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17006833, 'SAHLI', 'OMAYMA', 'omayma.sahli@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17006848, 'MOULAHID', 'KAWTAR', 'kawtar.moulahid@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17006852, 'FRIKICH', 'RANIA', 'rania.frikich@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17006870, 'TERFAS', 'CHAIMAE', 'chaimae.terfas@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17006903, 'RHAZI', 'YASSINE', 'yassine.rhazi1@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17006940, 'MOUSTAHIB', 'OMAR', 'omar.moustahib@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17006953, 'R GUIBI', 'CHAIMAA', 'chaimaa.rguibi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17006955, 'BOUGATTAYA', 'SOUKAINA', 'soukaina.bougattaya@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17006965, 'MAATI', 'KENZA', 'kenza.maati@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17006970, 'MELHAOUI', 'RIHAB', 'rihab.melhaoui@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17006980, 'MOSSALLI', 'WIAM', 'wiam.mossalli@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17006986, 'ELAJAJE', 'MALAK', 'malak.elajaje@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17007004, 'OUBELKACEM', 'MANAL', 'manal.oubelkacem@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17007007, 'BOUDAD', 'LATIFA', 'latifa.boudad@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17007017, 'IFKIRNE', 'KENZA', 'kenza.ifkirne@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17007030, 'NOUMA', 'IBTISSAM', 'ibtissam.nouma@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17007548, 'ZAOUI', 'MANAL', 'manal.zaoui@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17007567, 'BOUTRIG', 'OUMNIA', 'oumnia.boutrig@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17007577, 'ABOULHASSANE', 'NIAMA', 'niama.aboulhassane@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17007639, 'EL MESBAHI', 'AYA', 'aya.elmesbahi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17007831, 'EL MOUHTARIM', 'AYMANE', 'aymane.elmouhtarim@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17008374, 'BARAKAT', 'ZINEB NOHAILA', 'zinebnohaila.barakat@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17008695, 'EBOU EL HASSANI', 'AHMED MAHMOUD', 'ahmedmahmoud.ebouelhassani@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17008796, 'NDIAYE', 'DIOR', 'dior.ndiaye@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17009577, 'ABOU', 'MAWUFEMO JOSUE', 'mawufemo.abou@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(17010439, 'LOGMO ADMEO', 'GOLVEN CALIN', 'golvencalin.logmoadmeo@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000008, 'EL HAOUARI', 'ATIKA', 'ATIKA.ELHAOUARI@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000024, 'DDALLA', 'YOUSRA', 'YOUSRA.DDALLA@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000025, 'ZIYANE', 'NOUHAILA', 'nouhaila.ziyane@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000029, 'LAHLOU', 'HAJAR', 'hajar.lahlou@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000037, 'EL HANI', 'MOHAMED ACHRAF', 'mohamedachraf.elhani@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000041, 'BENZIANE', 'DOUNIA', 'dounia.benziane@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000045, 'AIT MANSOUR', 'ZINEB', 'ZINEB.AITMANSOUR@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000047, 'EL BAKKOURI', 'IMANE', 'IMANE.ELBAKKOURI@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000052, 'TIGRIOUI', 'RHITA', 'rhita.tigrioui@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000054, 'TLEMCANI', 'CHAYMA', 'CHAYMA.TLEMCANI@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000062, 'ELHARTI', 'CHAYMAA', 'chaymaa.elharti@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000081, 'EL AZZAOUI', 'MAROUA', 'MAROUA.ELAZZAOUI@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000087, 'ZALLAFI', 'NADA', 'NADA.ZALLAFI@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000091, 'JIRRARI', 'DOHA', 'DOHA.JIRRARI@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000099, 'EL MRHARRAZ', 'SALMA', 'SALMA.ELMRHARRAZ@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000103, 'DAHBI', 'HOUDA', 'dahbi.houda@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000104, 'ELKORRI', 'OUISSAL', 'OUISSAL.ELKORRI@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000111, 'ZAHI', 'ABIR', 'abir.zahi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000141, 'OUKASSOU', 'ILHAM', 'ILHAM.OUKASSOU@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000146, 'ALAOUI', 'ABDELLAH', 'ABDELLAH.ALAOUI@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000155, 'AQUIL', 'ASMAE', 'asmae.aquil@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000157, 'AOUZAL', 'OUMAIMA', 'oumaima.aouzal@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000158, 'AIT HMADOUCH', 'RANIA', 'RANIA.AITHMADOUCH@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000161, 'OUETTAS', 'INTISSAR', 'INTISSAR.OUETTAS@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000163, 'ELMESSAOUDI', 'KHADIJA', 'KHADIJA.ELMESSAOUDI@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000167, 'EL ATTAOUI', 'MOHAMED', 'mohamed.elattaoui@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000168, 'MEZOIR', 'OUSSAMA', 'oussama.mezoir@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000173, 'ZAHI', 'YOUSSEF', 'YOUSSEF.ZAHI1@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000176, 'SARDI', 'IHSSANE', 'IHSSANE.SARDI@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000179, 'ZEROUAL', 'AIMEN', 'aimen.zeroual@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000183, 'KASSI', 'AYOUB', 'AYOUB.KASSI@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000184, 'OUJAA', 'YASSINE', 'yassine.oujaa@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000187, 'EL HAJJI', 'LOUBNA', 'loubna.elhajji@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000190, 'BENSSABAHIA', 'MANAL', 'manal.benssabahia@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000193, 'EL AMRANI', 'MANAL', 'MANAL.ELAMRANI1@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000194, 'BENSAID', 'MERYEM', 'MERYEM.BENSAID@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000197, 'NASRI', 'ANAS', 'anas.nasri@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000199, 'NAJOUI', 'MOHAMMED', 'mohammed.najoui@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000203, 'FADILI', 'AYOUB', 'AYOUB.FADILI@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000205, 'EL HADY', 'ZAKARIA', 'ZAKARIA.ELHADY@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000212, 'ALLALOU', 'ABDELHAKIM', 'abdelhakim.allalou@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000215, 'EL YOUSFI-ALAOUI', 'MOHAMMED', 'MOHAMMED.ELYOUSFI-ALAOUI@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18000218, 'LAFDALI', 'HAMZA', 'hamza.lafdali@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18002375, 'FRIHAT', 'TAOUFIK', 'taoufik.frihat@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18004591, 'STITOU', 'NIZAR', 'nizar.stitou@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18005018, 'AMAL', 'AYOUB', 'ayoub.amal@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18006294, 'EL GARAA', 'AYOUB', 'ayoub.elgaraa@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18006305, 'LOUDINI', 'ABDELMALEK', 'abdelmalek.loudini@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18006321, 'ABOURRICHE', 'YOUNESS', 'youness.abourriche@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18006355, 'BARGACH', 'HAMZA', 'hamza.bargach1@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18006364, 'BENDEFA', 'AHMED KHALIL', 'ahmedkhalil.bendefa@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18006385, 'ED-DARHRI', 'EL HASSAN', 'elhassan.eddarhri@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18006400, 'ECHTOUKI', 'MOHAMED', 'mohamed.echtouki@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18006439, 'EL AMRANI', 'AYMAN', 'ayman.elamrani@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18006452, 'EL HASSNAOUI', 'AOUS', 'aous.elhassnaoui@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18006457, 'EL MEKKAOUI', 'OMAR', 'omar.elmekkaoui@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18006469, 'FETTOUKH', 'ACHRAF', 'achraf.fettoukh@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18006624, 'FANNOUCH', 'AYMEN', 'aymen.fannouch@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18006665, 'HANYF', 'OTHMANE', 'othmane.hanyf@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18006727, 'LAMZALZY', 'ABDELLAH', 'abdellah.lamzalzy@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18006772, 'ASSMOUGUE', 'ASMAE', 'asmae.assmougue@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18006791, 'AL OUARDI', 'SALMA', 'salma.alouardi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18006816, 'MAZOUZI', 'SAAD', 'saad.mazouzi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18006817, 'AGNAOU', 'MINA', 'mina.agnaou@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18006909, 'BOUTLANE', 'MERYEM', 'meryem.boutlane@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18006997, 'BOUTAIB', 'MOHAMED', 'mohamed.boutaib@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18007012, 'BENGELOUNE', 'HIBA', 'hiba.bengeloune@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18007055, 'JARJER', 'FATIMA', 'fatima.jarjer@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18007070, 'EL MOUJOUDI', 'OUMAIMA', 'oumaima.elmoujoudi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18007102, 'EL HAJJI', 'MOUNA', 'mouna.elhajji@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18007124, 'EL GUEROUANI', 'MANAL', 'manal.elguerouani1@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18007150, 'MASROUR', 'OUMAYMA', 'oumayma.masrour@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18007157, 'MOUMNI', 'CHAIMAE', 'chaimae.moumni@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18007169, 'MOFAKIR', 'NISRINE', 'nisrine.mofakir@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18007282, 'FAROUQ', 'SOMIA', 'somia.farouq@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18007304, 'HAYTOM', 'IKRAME', 'ikrame.haytom@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18007311, 'HASSINA', 'YOUSRA', 'yousra.hassina@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18007427, 'ELAITARI', 'SOUKAINA', 'soukaina.elaitari@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18007440, 'BELLAALA', 'MOHAMED', 'mohamed.bellaala@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18007488, 'ZIZI', 'LINA', 'lina.zizi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18007854, 'OURAZZOUQ', 'FATIMA EZZAHRA', 'fatimaezzahra.ourazzouq@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18007869, 'OUMAMI', 'MARYAM', 'maryam.oumami@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18007916, 'STITOU', 'NARJIS', 'narjis.stitou@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18007933, 'SMINA', 'NOUHAILA', 'nouhaila.smina@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18007936, 'ZOUHRI', 'FARAH', 'farah.zouhri@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18007937, 'TIBARI', 'ZINEB', 'zineb.tibari@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18007992, 'EL MOUSSAOUI', 'HAIFAE', 'haifae.elmoussaoui@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18007996, 'ABOUZBIBA', 'WAFAE', 'wafae.abouzbiba@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18008029, 'KHATTABI', 'AMAL', 'amal.khattabi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18008065, 'EL AZHARY', 'SOUKAINA', 'soukaina.elazhary@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18008290, 'SADRAOUI', 'HIBAT ALLAH', 'hibatallah.sadraoui@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18009005, 'EL HAOUARI', 'FAHD', 'fahd.elhaouari@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18009006, 'ESSAOUDI', 'FATIMA', 'fatima.essaoudi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18009015, 'BERBACH', 'MALIK', 'malik.berbach@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18009387, 'GHARBI', 'IHSSANE', 'ihssane.gharbi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18009404, 'VALL KHEIR', 'ZEINEBOU', 'zeinebou.vallkheir@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18009444, 'LAAMARTI', 'AKRAM', 'akram.laamarti@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18009449, 'M KHAITIR CHIEKH', 'MAMINA', 'mamina.mkhaitirchiekh@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18009494, 'BENJALLOUL', 'MONTASSIR', 'montassir.benjalloul1@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18009497, 'AZIZ', 'OUSSAMA', 'oussama.aziz@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18009590, 'MARRAKCHI', 'AHMED AYMEN', 'ahmedaymen.marrakchi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18009963, 'YAHYAOUI', 'ISMAIL', 'ismail.yahyaoui@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18009966, 'EL HAJJI', 'HASNAA', 'hasnaa.elhajji@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18009968, 'EL GHABI', 'SAFAE', 'safae.elghabi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18010142, 'PIBA', 'KOKO JEAN HUGUES', 'kokojeanhugues.piba@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18010184, 'TIOTSOP FOGUE', 'ADRIANO', 'adriano.tiotsopfogue@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18010233, 'AIT ABBOU', 'HOUYAME', 'houyame.aitabbou@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18010332, 'AZZI', 'ALAA-EDDINE', 'alaaeddine.azzi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18010337, 'ATARRACHI', 'HALIMA', 'halima.atarrachi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18010404, 'ELAZIZI', 'CHAIMAE', 'elazizi.chaimae@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18010496, 'OUBAHASSOU', 'SANAE', 'oubahassou.sanae@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(18010603, 'ECH-CHOUQI', 'NADA', 'echchouqi.nada@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000006, 'GUENDOULA', 'NOUR-EL HOUDA', 'nour-elhouda.guendoula@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000009, 'SOUKAINI', 'ADIL', 'adil.soukaini@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000010, 'OUKECHI', 'CHAIMAE', 'chaimae.oukechi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000013, 'OHASSAN', 'MOHAMED SAAD', 'mohamedsaad.ohassan@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000015, 'OUSSI', 'YASSINE', 'yassine.oussi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000018, 'DEFAOUI', 'OMAR', 'omar.defaoui@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000030, 'KABBA', 'AYMANE', 'aymane.kabba@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000033, 'FAHIM', 'AHMED', 'ahmed.fahim@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000034, 'EL KAABA', 'MOHAMED AMINE', 'mohamedamine.elkaaba@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000035, 'ZNIBER', 'ALI', 'ali.zniber@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000036, 'OUARDI', 'IKHLASSE', 'ikhlasse.ouardi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000037, 'BENZEKRI', 'ANAS', 'anas.anasbenzekri@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000043, 'AGGOUR', 'SARAH', 'sarah.aggour@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000047, 'FENNIRI', 'ABDELJALIL', 'abdeljalil.fenniri@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000049, 'BERRAS', 'NAJWA', 'najwa.berras@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000053, 'BENALI', 'MOUAD', 'mouad.benali1@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000056, 'DELLALE', 'SOUKAINA', 'soukaina.dellale@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000058, 'DRIAI', 'IMANE', 'imane.driai@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000061, 'MOUAD', 'NOUHAILA', 'nouhaila.mouad@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000063, 'OUGAAMOU', 'MEHDI', 'mehdi.mehdiougaamou@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000066, 'MKADMI', 'OUMKALTOUM', 'oumkaltoum.mkadmi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000067, 'SAAD', 'OUSSAMA', 'oussama.saad@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000076, 'OUAHI', 'KHAOULA', 'khaoula.ouahi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000077, 'LOUZAOUI', 'SAFAA', 'safaa.louzaoui@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000078, 'SOUINIA', 'KELTOUM', 'keltoum.souinia@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000080, 'GAIZI', 'HABIBA', 'habiba.gaizi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000081, 'SOFIANE', 'CHARAF EDDINE', 'charafeddine.sofiane@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000086, 'TAZI', 'HAMZA', 'hamza.tazi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000088, 'TAIB', 'HICHAM', 'hicham.taib@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000095, 'QANNOUF', 'MUSTAPHA', 'mustapha.qannouf1@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000097, 'KERCHAOUI', 'OMAR', 'omar.kerchaoui@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000098, 'RIFAY', 'WASSIM', 'wassim.rifay@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000099, 'IMANI', 'FADI', 'fadi.imani@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000100, 'BENSAR', 'OUMAIMA', 'oumaima.bensar@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000102, 'HMOUDAT', 'OUSSAMA', 'oussama.hmoudat@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000126, 'ETTAIEK', 'LAMYAE', 'lamyae.ettaiek@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000127, 'EL HIRECH', 'GHIZLANE', 'ghizlane.elhirech@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000137, 'LAGHRISSI', 'MOHAMED', 'mohamed.laghrissi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000141, 'ABOUSAADIA', 'ANAS', 'anas.abousaadia@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000145, 'BENOUAHI', 'OMAR', 'omar.benouahi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000147, 'BOUTAHLI', 'BILAL', 'bilal.boutahli@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000151, 'BOUNASSEH', 'ABDESSAMAD', 'abdessamad.bounasseh@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000157, 'EL-OTHMANI', 'YOUSSEF', 'youssef.el-othmani@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000167, 'EL HASSOUNI', 'MERYEM', 'meryem.elhassouni1@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000168, 'EL FAKER', 'LAMIAE', 'lamiae.elfaker@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000169, 'EL ABASSI', 'MALAK', 'malak.elabassi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000170, 'EL OUAHHABY', 'CHAIMAE', 'chaimae.elouahhaby@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000177, 'DAIBAZI', 'ASMAE', 'asmae.daibazi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000182, 'LOUADNI', 'CHAIMAA', 'chaimaa.louadni@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000186, 'LAGHDIRI', 'CHAIMAA', 'chaimaa.laghdiri@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000188, 'BENDEROUACH', 'KARIMA', 'karima.benderouach@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000191, 'JEBBAR', 'NASSIMA', 'nassima.jebbar@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000192, 'IDRI', 'KHAWLA', 'khawla.idri@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000194, 'TOULALI', 'MERYEM', 'meryem.toulali@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000217, 'FRIAIN', 'IMAN', 'iman.friain@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000218, 'FRIAIN', 'OMAYMA', 'omayma.friain@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000243, 'CHABANA', 'HAMZA', 'hamza.chabana@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19000244, 'BENSALIM', 'YOUSRA', 'yousra.bensalim@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19002414, 'BAHAMMOU', 'TAHA', 'taha.bahammou@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19003672, 'ZIRARI', 'MOHAMED', 'mohamed.zirari@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19006950, 'RAFILI', 'SALMA', 'salma.rafili@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19006997, 'MOUSSADIK', 'MEHDI', 'mehdi.moussadik@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19007144, 'OUDADA', 'AYOUB', 'ayoub.oudada@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19007215, 'MOTASSIM', 'AHMED TAHA', 'ahmedtaha.motassim@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19007217, 'ACHAOUI', 'YOUNES', 'younes.achaoui@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19007233, 'EL FEKAK', 'SALMA', 'salma.elfekak@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19007468, 'RAKNI', 'MOHAMED ABDELBASSET', 'mohamedabdelbasset.rakni@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19007523, 'ESSALMANI', 'YASMINE', 'yasmine.essalmani@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19007697, 'MOUSSAFI', 'AYOUB', 'ayoub.moussafi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19008604, 'MOUGTAHIDI', 'SALMA', 'salma.mougtahidi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19008615, 'LARROUSSI', 'SARA', 'sara.larroussi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19008618, 'ZENZOULI', 'IKRAM', 'ikram.zenzouli@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19008624, 'AIT OUAKRIM', 'MERYEM', 'meryem.aitouakrim@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19008627, 'KOURTAH', 'NADA', 'nada.kourtah@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19008634, 'LACHIA', 'SALMA', 'salma.lachia@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19008652, 'BENKERROUM', 'MARWA', 'marwa.benkerroum@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19008663, 'SAMIR', 'TAHA', 'taha.samir@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19008666, 'AHCINE', 'CHAYMAA', 'chaymaa.ahcine@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19008672, 'BENASSER', 'HASSAN AYOUB', 'hassanayoub.benasser@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19008673, 'OUBENMOH', 'YASSINE', 'yassine.oubenmoh@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19008679, 'EL AISSI', 'NOUHAILA', 'nouhaila.elaissi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19008684, 'SINAA', 'HAMZA', 'hamza.sinaa@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19008695, 'DRIOUICH', 'MOHAMMED', 'mohammed.driouich1@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19008711, 'EL OURRAT', 'FAYCAL', 'faycal.elourrat@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19008915, 'QAFFSSAOUI', 'MAROUANE', 'marouane.qaffssaoui@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19009650, 'BOUOUZM', 'YASSINE', 'yassine.bououzm@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19010041, 'SMINA', 'OUMAIMA', 'oumaima.smina@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19010618, 'BAHAMAD', 'IMANE', 'imane.bahamad@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19010827, 'SAIDNI', 'INASS', 'inass.saidni@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19010867, 'LAZHAR', 'NADA', 'nada.lazhar@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19010961, 'MOUMNI', 'YAHYA', 'yahya.moumni@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19010967, 'BRIBRI', 'HIND', 'hind.bribri@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19010973, 'RAIHANI', 'YOUSSRA', 'youssra.raihani@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19011023, 'BOUHADDOU', 'MARWANE', 'marwane.bouhaddou@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19011034, 'ATAOUI', 'NIZAR', 'nizar.ataoui@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19011038, 'OUKHRID', 'AMAL', 'amal.oukhrid@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19011043, 'NOR', 'NAJLAE', 'najlae.nor@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19011053, 'CHIKANDO SINOU', 'EMILIE OLIVE', 'emilieolive.chikandosinou@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19011058, 'BARIK', 'HAYTAM', 'haytam.barik@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19011062, 'MERIZAK', 'HOUSSAM', 'houssam.merizak@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19011064, 'EL HAMZAOUI', 'ABDERRAHIM', 'abderrahim.elhamzaoui@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19011072, 'FOUKHAR', 'ILIASS', 'iliass.foukhar@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19011086, 'CHEMRIH', 'YASSINE', 'yassine.chemrih@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19011102, 'BENJELLOUN', 'HAMZA', 'hamza.benjelloun@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19011104, 'BIROUK', 'NOURA', 'noura.birouk@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19011115, 'TIZIT', 'MOUAD', 'mouad.tizit@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19011119, 'ENAGRE', 'FATIMA ZAHRA', 'fatimazahra.enagre@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19011141, 'MZALI', 'SALMA', 'salma.mzali@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19011142, 'BAHNIF', 'ILYAS', 'ilyas.bahnif@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19011156, 'AIT EL KOUCH', 'ANASS', 'anass.aitelkouch@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19011200, 'BOUKHSSIBI', 'HIBA', 'hiba.boukhssibi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19011252, 'ZOETYANDE', 'NERKIETA NAFISSATOU', 'nerkietanafissatou.zoetyande@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19011266, 'ZOUNGRANA YVES ALBAN', 'SOM-BE-WENDE', 'som-be-wende.zoungranayvesalban@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19011462, 'BELHAJ-SOULAMI', 'KENZA', 'kenza.belhaj-soulami@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19012018, 'JNIHA', 'IMANE', 'imane.jniha@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(19015220, 'DEKPE', 'KOSSI ELOLO BERNARD', 'kossielolobernard.dekpe@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(20000307, 'M\'HIN', 'NIMA', 'nima.mhin@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(20000844, 'BELHAJ', 'MAJDA', 'majda.belhaj1@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(20000852, 'LBARRAH', 'YAHYA', 'yahya.lbarrah@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(20000857, 'CHLAGUE', 'OUMAIMA', 'oumaima.chlague@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(20000861, 'EL MRIHY', 'SOUHAIL', 'souhail.elmrihy@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(20005505, 'SAFI', 'EL MEHDI', 'elmehdi.safi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(20005536, 'JEMMAL', 'SOUFIANE', 'soufiane.jemmal@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(20005731, 'BEKRINE', 'OUSSAMA', 'oussama.bekrine@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(20006692, 'BOUAINE', 'OMAR', 'omar.bouaine@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(20006852, 'CHTAIBI', 'FATIMA-EZZAHRAE', 'fatima-ezzahrae.chtaibi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(20010521, 'SAHMI', 'IHSSAN', 'ihssan.sahmi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(20011375, 'KHADDAM', 'CHAIMAE', 'chaimae.khaddam@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(20012111, 'ZEROUALI', 'IBTISSAM', 'ibtissam.zerouali@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(20012117, 'BOUSSERRHINE', 'ZIYAD', 'ziyad.bousserrhine@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(20013993, 'BAKHIL', 'AISSA', 'aissa.bakhil@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(21011657, 'KENBOUCH', 'FATIMA', 'fatima.kenbouch@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(21011748, 'SAIDI', 'ZAKARIAE', 'zakariae.saidi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(21015271, 'EL KHCHINE', 'MOHAMED', 'mohamed.elkhchine1@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(21015519, 'BITI', 'AYMANE', 'aymane.biti@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(21015770, 'ATIR', 'ZAYNAB', 'zaynab.atir@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(21015868, 'MEZIANE ZERHOUNI', 'HASSAN', 'hassan.mezianezerhouni@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(21015880, 'ELOMARI', 'ZAKARIAE', 'zakariae.elomari@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(21015881, 'JEBBOUR', 'WIAM', 'wiam.jebbour@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(21015883, 'LAATITINE', 'KHADIJA', 'khadija.laatitine@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(21015885, 'AGHRAZ', 'OUARDA', 'ouarda.aghraz@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(21015929, 'HAMMADI', 'MASSINA', 'massina.hammadi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(21015938, 'AIT BELAID', 'IKRAM', 'ikram.aitbelaid@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(21015951, 'CHEGDANI', 'SARA', 'sara.chegdani@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(21017117, 'GHOUMMAID', 'MOHAMMED', 'mohammed.ghoummaid@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(21017126, 'ADRAOUI', 'ANAS', 'anas.adraoui1@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(21017164, 'ABOU EL HAOUL', 'HOUSSAM EDDINE', 'houssameddine.abouelhaoul@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(21017206, 'BENAIDA', 'ZINEB', 'zineb.benaida@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(21017268, 'KAMI', 'YASMINE', 'yasmine.kami@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(21017281, 'MOUHAOUIR', 'HAMZA', 'hamza.mouhaouir@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(21017537, 'TAHER', 'IKRAM', 'ikram.taher@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(21017620, 'JALAL', 'MOHAMED', 'mohamed.jalal1@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(21017629, 'ELASSRAOUI', 'HOUSSAM', 'houssam.elassraoui@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(21017808, 'GHALLOUDI', 'ADAM', 'adam.ghalloudi@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(21017854, 'CHAGRI', 'ANASS', 'anass.chagri@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png'),
(21017855, 'LAZAAR', 'KHAOULA', 'khaoula.lazaar@uit.ac.ma', NULL, NULL, NULL, 'azerty', 'unknown.png');

-- --------------------------------------------------------

--
-- Table structure for table `stages`
--

CREATE TABLE `stages` (
  `id_stage` int(11) NOT NULL,
  `sujet` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `technologies` varchar(50) DEFAULT NULL,
  `rapport_ver1` varchar(50) DEFAULT NULL,
  `rapport_ver_corr` varchar(50) DEFAULT NULL,
  `presentation` varchar(50) DEFAULT NULL,
  `attestation` varchar(50) DEFAULT NULL,
  `fiche_evaluation` varchar(50) DEFAULT NULL,
  `validation` varchar(50) DEFAULT NULL,
  `note_finale` varchar(10) DEFAULT NULL,
  `fk_id_enseignant` int(11) DEFAULT NULL,
  `fk_id_etudiant` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stages`
--

INSERT INTO `stages` (`id_stage`, `sujet`, `description`, `technologies`, `rapport_ver1`, `rapport_ver_corr`, `presentation`, `attestation`, `fiche_evaluation`, `validation`, `note_finale`, `fk_id_enseignant`, `fk_id_etudiant`) VALUES
(19, 'dev web', 'php et sql', 'stage de 4 mois chez X1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 18000146),
(20, 'front end', 'html css', 'stage de 4 mois chez X2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 17009577),
(21, 'back end', 'php laravel', 'stage de 4 mois chez X3', NULL, NULL, NULL, NULL, NULL, 'v', '17.5', 8, 19007217),
(22, 'front end', 'bootstrap', 'stage de 4 mois chez X4', NULL, NULL, NULL, NULL, NULL, 'v', '17', 9, 18005018),
(24, 'AI', 'dnknsk cnjsncks jcbsi', 'python', NULL, '12.pdf]', NULL, NULL, NULL, 'v', '19.5', 9, 19000095),
(25, 'deep learning', 'python', 'cjinds czidsnkj zcdiksh', NULL, '15006663.pdf', NULL, NULL, NULL, 'v', '16', 9, 16000022),
(43, 'Qualite', 'cvbn', 'Vba', NULL, NULL, NULL, '17000549.pdf', '17000549.pdf', NULL, NULL, 4, 17000549),
(44, 'intelligence  artifi', 'rfg', 'python', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16004931);

-- --------------------------------------------------------

--
-- Table structure for table `villes`
--

CREATE TABLE `villes` (
  `id_ville` int(11) NOT NULL,
  `lib_ville` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `villes`
--

INSERT INTO `villes` (`id_ville`, `lib_ville`) VALUES
(1, 'Aïn Harrouda'),
(2, 'Ben Yakhlef'),
(3, 'Bouskoura'),
(4, 'Casablanca'),
(5, 'Médiouna'),
(6, 'Mohammadia'),
(7, 'Tit Mellil'),
(8, 'Ben Yakhlef'),
(9, 'Bejaâd'),
(10, 'Ben Ahmed'),
(11, 'Benslimane'),
(12, 'Berrechid'),
(13, 'Boujniba'),
(14, 'Boulanouare'),
(15, 'Bouznika'),
(16, 'Deroua'),
(17, 'El Borouj'),
(18, 'El Gara'),
(19, 'Guisser'),
(20, 'Hattane'),
(21, 'Khouribga'),
(22, 'Loulad'),
(23, 'Oued Zem'),
(24, 'Oulad Abbou'),
(25, 'Oulad H\'Riz Sahel'),
(26, 'Oulad M\'rah'),
(27, 'Oulad Saïd'),
(28, 'Oulad Sidi Ben Daoud'),
(29, 'Ras El Aïn'),
(30, 'Settat'),
(31, 'Sidi Rahhal Chataï'),
(32, 'Soualem'),
(33, 'Azemmour'),
(34, 'Bir Jdid'),
(35, 'Bouguedra'),
(36, 'Echemmaia'),
(37, 'El Jadida'),
(38, 'Hrara'),
(39, 'Ighoud'),
(40, 'Jamâat Shaim'),
(41, 'Jorf Lasfar'),
(42, 'Khemis Zemamra'),
(43, 'Laaounate'),
(44, 'Moulay Abdallah'),
(45, 'Oualidia'),
(46, 'Oulad Amrane'),
(47, 'Oulad Frej'),
(48, 'Oulad Ghadbane'),
(49, 'Safi'),
(50, 'Sebt El Maârif'),
(51, 'Sebt Gzoula'),
(52, 'Sidi Ahmed'),
(53, 'Sidi Ali Ban Hamdouche'),
(54, 'Sidi Bennour'),
(55, 'Sidi Bouzid'),
(56, 'Sidi Smaïl'),
(57, 'Youssoufia'),
(58, 'Fès'),
(59, 'Aïn Cheggag'),
(60, 'Bhalil'),
(61, 'Boulemane'),
(62, 'El Menzel'),
(63, 'Guigou'),
(64, 'Imouzzer Kandar'),
(65, 'Imouzzer Marmoucha'),
(66, 'Missour'),
(67, 'Moulay Yaâcoub'),
(68, 'Ouled Tayeb'),
(69, 'Outat El Haj'),
(70, 'Ribate El Kheir'),
(71, 'Séfrou'),
(72, 'Skhinate'),
(73, 'Tafajight'),
(74, 'Arbaoua'),
(75, 'Aïn Dorij'),
(76, 'Dar Gueddari'),
(77, 'Had Kourt'),
(78, 'Jorf El Melha'),
(79, 'Kénitra'),
(80, 'Khenichet'),
(81, 'Lalla Mimouna'),
(82, 'Mechra Bel Ksiri'),
(83, 'Mehdia'),
(84, 'Moulay Bousselham'),
(85, 'Sidi Allal Tazi'),
(86, 'Sidi Kacem'),
(87, 'Sidi Slimane'),
(88, 'Sidi Taibi'),
(89, 'Sidi Yahya El Gharb'),
(90, 'Souk El Arbaa'),
(91, 'Akka'),
(92, 'Assa'),
(93, 'Bouizakarne'),
(94, 'El Ouatia'),
(95, 'Es-Semara'),
(96, 'Fam El Hisn'),
(97, 'Foum Zguid'),
(98, 'Guelmim'),
(99, 'Taghjijt'),
(100, 'Tan-Tan'),
(101, 'Tata'),
(102, 'Zag'),
(103, 'Marrakech'),
(104, 'Ait Daoud'),
(115, 'Amizmiz'),
(116, 'Assahrij'),
(117, 'Aït Ourir'),
(118, 'Ben Guerir'),
(119, 'Chichaoua'),
(120, 'El Hanchane'),
(121, 'El Kelaâ des Sraghna'),
(122, 'Essaouira'),
(123, 'Fraïta'),
(124, 'Ghmate'),
(125, 'Ighounane'),
(126, 'Imintanoute'),
(127, 'Kattara'),
(128, 'Lalla Takerkoust'),
(129, 'Loudaya'),
(130, 'Lâattaouia'),
(131, 'Moulay Brahim'),
(132, 'Mzouda'),
(133, 'Ounagha'),
(134, 'Sid L\'Mokhtar'),
(135, 'Sid Zouin'),
(136, 'Sidi Abdallah Ghiat'),
(137, 'Sidi Bou Othmane'),
(138, 'Sidi Rahhal'),
(139, 'Skhour Rehamna'),
(140, 'Smimou'),
(141, 'Tafetachte'),
(142, 'Tahannaout'),
(143, 'Talmest'),
(144, 'Tamallalt'),
(145, 'Tamanar'),
(146, 'Tamansourt'),
(147, 'Tameslouht'),
(148, 'Tanalt'),
(149, 'Zeubelemok'),
(150, 'Meknès‎'),
(151, 'Khénifra'),
(152, 'Agourai'),
(153, 'Ain Taoujdate'),
(154, 'MyAliCherif'),
(155, 'Rissani'),
(156, 'Amalou Ighriben'),
(157, 'Aoufous'),
(158, 'Arfoud'),
(159, 'Azrou'),
(160, 'Aïn Jemaa'),
(161, 'Aïn Karma'),
(162, 'Aïn Leuh'),
(163, 'Aït Boubidmane'),
(164, 'Aït Ishaq'),
(165, 'Boudnib'),
(166, 'Boufakrane'),
(167, 'Boumia'),
(168, 'El Hajeb'),
(169, 'Elkbab'),
(170, 'Er-Rich'),
(171, 'Errachidia'),
(172, 'Gardmit'),
(173, 'Goulmima'),
(174, 'Gourrama'),
(175, 'Had Bouhssoussen'),
(176, 'Haj Kaddour'),
(177, 'Ifrane'),
(178, 'Itzer'),
(179, 'Jorf'),
(180, 'Kehf Nsour'),
(181, 'Kerrouchen'),
(182, 'M\'haya'),
(183, 'M\'rirt'),
(184, 'Midelt'),
(185, 'Moulay Ali Cherif'),
(186, 'Moulay Bouazza'),
(187, 'Moulay Idriss Zerhoun'),
(188, 'Moussaoua'),
(189, 'N\'Zalat Bni Amar'),
(190, 'Ouaoumana'),
(191, 'Oued Ifrane'),
(192, 'Sabaa Aiyoun'),
(193, 'Sebt Jahjouh'),
(194, 'Sidi Addi'),
(195, 'Tichoute'),
(196, 'Tighassaline'),
(197, 'Tighza'),
(198, 'Timahdite'),
(199, 'Tinejdad'),
(200, 'Tizguite'),
(201, 'Toulal'),
(202, 'Tounfite'),
(203, 'Zaouia d\'Ifrane'),
(204, 'Zaïda'),
(205, 'Ahfir'),
(206, 'Aklim'),
(207, 'Al Aroui'),
(208, 'Aïn Bni Mathar'),
(209, 'Aïn Erreggada'),
(210, 'Ben Taïeb'),
(211, 'Berkane'),
(212, 'Bni Ansar'),
(213, 'Bni Chiker'),
(214, 'Bni Drar'),
(215, 'Bni Tadjite'),
(216, 'Bouanane'),
(217, 'Bouarfa'),
(218, 'Bouhdila'),
(219, 'Dar El Kebdani'),
(220, 'Debdou'),
(221, 'Douar Kannine'),
(222, 'Driouch'),
(223, 'El Aïoun Sidi Mellouk'),
(224, 'Farkhana'),
(225, 'Figuig'),
(226, 'Ihddaden'),
(227, 'Jaâdar'),
(228, 'Jerada'),
(229, 'Kariat Arekmane'),
(230, 'Kassita'),
(231, 'Kerouna'),
(232, 'Laâtamna'),
(233, 'Madagh'),
(234, 'Midar'),
(235, 'Nador'),
(236, 'Naima'),
(237, 'Oued Heimer'),
(238, 'Oujda'),
(239, 'Ras El Ma'),
(240, 'Saïdia'),
(241, 'Selouane'),
(242, 'Sidi Boubker'),
(243, 'Sidi Slimane Echcharaa'),
(244, 'Talsint'),
(245, 'Taourirt'),
(246, 'Tendrara'),
(247, 'Tiztoutine'),
(248, 'Touima'),
(249, 'Touissit'),
(250, 'Zaïo'),
(251, 'Zeghanghane'),
(252, 'Rabat'),
(253, 'Salé'),
(254, 'Ain El Aouda'),
(255, 'Harhoura'),
(256, 'Khémisset'),
(257, 'Oulmès'),
(258, 'Rommani'),
(259, 'Sidi Allal El Bahraoui'),
(260, 'Sidi Bouknadel'),
(261, 'Skhirate'),
(262, 'Tamesna'),
(263, 'Témara'),
(264, 'Tiddas'),
(265, 'Tiflet'),
(266, 'Touarga'),
(267, 'Agadir'),
(268, 'Agdz'),
(269, 'Agni Izimmer'),
(270, 'Aït Melloul'),
(271, 'Alnif'),
(272, 'Anzi'),
(273, 'Aoulouz'),
(274, 'Aourir'),
(275, 'Arazane'),
(276, 'Aït Baha'),
(277, 'Aït Iaâza'),
(278, 'Aït Yalla'),
(279, 'Ben Sergao'),
(280, 'Biougra'),
(281, 'Boumalne-Dadès'),
(282, 'Dcheira El Jihadia'),
(283, 'Drargua'),
(284, 'El Guerdane'),
(285, 'Harte Lyamine'),
(286, 'Ida Ougnidif'),
(287, 'Ifri'),
(288, 'Igdamen'),
(289, 'Ighil n\'Oumgoun'),
(290, 'Imassine'),
(291, 'Inezgane'),
(292, 'Irherm'),
(293, 'Kelaat-M\'Gouna'),
(294, 'Lakhsas'),
(295, 'Lakhsass'),
(296, 'Lqliâa'),
(297, 'M\'semrir'),
(298, 'Massa (Maroc)'),
(299, 'Megousse'),
(300, 'Ouarzazate'),
(301, 'Oulad Berhil'),
(302, 'Oulad Teïma'),
(303, 'Sarghine'),
(304, 'Sidi Ifni'),
(305, 'Skoura'),
(306, 'Tabounte'),
(307, 'Tafraout'),
(308, 'Taghzout'),
(309, 'Tagzen'),
(310, 'Taliouine'),
(311, 'Tamegroute'),
(312, 'Tamraght'),
(313, 'Tanoumrite Nkob Zagora'),
(314, 'Taourirt ait zaghar'),
(315, 'Taroudannt'),
(316, 'Temsia'),
(317, 'Tifnit'),
(318, 'Tisgdal'),
(319, 'Tiznit'),
(320, 'Toundoute'),
(321, 'Zagora'),
(322, 'Afourar'),
(323, 'Aghbala'),
(324, 'Azilal'),
(325, 'Aït Majden'),
(326, 'Beni Ayat'),
(327, 'Béni Mellal'),
(328, 'Bin elouidane'),
(329, 'Bradia'),
(330, 'Bzou'),
(331, 'Dar Oulad Zidouh'),
(332, 'Demnate'),
(333, 'Dra\'a'),
(334, 'El Ksiba'),
(335, 'Foum Jamaa'),
(336, 'Fquih Ben Salah'),
(337, 'Kasba Tadla'),
(338, 'Ouaouizeght'),
(339, 'Oulad Ayad'),
(340, 'Oulad M\'Barek'),
(341, 'Oulad Yaich'),
(342, 'Sidi Jaber'),
(343, 'Souk Sebt Oulad Nemma'),
(344, 'Zaouïat Cheikh'),
(345, 'Tanger‎'),
(346, 'Tétouan‎'),
(347, 'Akchour'),
(348, 'Assilah'),
(349, 'Bab Berred'),
(350, 'Bab Taza'),
(351, 'Brikcha'),
(352, 'Chefchaouen'),
(353, 'Dar Bni Karrich'),
(354, 'Dar Chaoui'),
(355, 'Fnideq'),
(356, 'Gueznaia'),
(357, 'Jebha'),
(358, 'Karia'),
(359, 'Khémis Sahel'),
(360, 'Ksar El Kébir'),
(361, 'Larache'),
(362, 'M\'diq'),
(363, 'Martil'),
(364, 'Moqrisset'),
(365, 'Oued Laou'),
(366, 'Oued Rmel'),
(367, 'Ouazzane'),
(368, 'Point Cires'),
(369, 'Sidi Lyamani'),
(370, 'Sidi Mohamed ben Abdallah el-Raisuni'),
(371, 'Zinat'),
(372, 'Ajdir‎'),
(373, 'Aknoul‎'),
(374, 'Al Hoceïma‎'),
(375, 'Aït Hichem‎'),
(376, 'Bni Bouayach‎'),
(377, 'Bni Hadifa‎'),
(378, 'Ghafsai‎'),
(379, 'Guercif‎'),
(380, 'Imzouren‎'),
(381, 'Inahnahen‎'),
(382, 'Issaguen (Ketama)‎'),
(383, 'Karia (El Jadida)‎'),
(384, 'Karia Ba Mohamed‎'),
(385, 'Oued Amlil‎'),
(386, 'Oulad Zbair‎'),
(387, 'Tahla‎'),
(388, 'Tala Tazegwaght‎'),
(389, 'Tamassint‎'),
(390, 'Taounate‎'),
(391, 'Targuist‎'),
(392, 'Taza‎'),
(393, 'Taïnaste‎'),
(394, 'Thar Es-Souk‎'),
(395, 'Tissa‎'),
(396, 'Tizi Ouasli‎'),
(397, 'Laayoune‎'),
(398, 'El Marsa‎'),
(399, 'Tarfaya‎'),
(400, 'Boujdour‎'),
(401, 'Awsard'),
(402, 'Oued-Eddahab'),
(403, 'Stehat'),
(404, 'Aït Attab');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrateurs`
--
ALTER TABLE `administrateurs`
  ADD PRIMARY KEY (`id_adm`);

--
-- Indexes for table `encadrants_entreprise`
--
ALTER TABLE `encadrants_entreprise`
  ADD PRIMARY KEY (`id_encadrant`),
  ADD KEY `fk_id_etr` (`fk_id_etr`);

--
-- Indexes for table `enseignants`
--
ALTER TABLE `enseignants`
  ADD PRIMARY KEY (`id_enseignant`);

--
-- Indexes for table `entreprises`
--
ALTER TABLE `entreprises`
  ADD PRIMARY KEY (`id_entreprise`),
  ADD KEY `fk_id_ville` (`fk_id_ville`);

--
-- Indexes for table `etudiants`
--
ALTER TABLE `etudiants`
  ADD PRIMARY KEY (`id_apogee`);

--
-- Indexes for table `stages`
--
ALTER TABLE `stages`
  ADD PRIMARY KEY (`id_stage`),
  ADD KEY `fk_id_enseignant` (`fk_id_enseignant`),
  ADD KEY `fk_id_etudiant` (`fk_id_etudiant`);

--
-- Indexes for table `villes`
--
ALTER TABLE `villes`
  ADD PRIMARY KEY (`id_ville`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrateurs`
--
ALTER TABLE `administrateurs`
  MODIFY `id_adm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `encadrants_entreprise`
--
ALTER TABLE `encadrants_entreprise`
  MODIFY `id_encadrant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `enseignants`
--
ALTER TABLE `enseignants`
  MODIFY `id_enseignant` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `entreprises`
--
ALTER TABLE `entreprises`
  MODIFY `id_entreprise` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `stages`
--
ALTER TABLE `stages`
  MODIFY `id_stage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `villes`
--
ALTER TABLE `villes`
  MODIFY `id_ville` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=405;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `encadrants_entreprise`
--
ALTER TABLE `encadrants_entreprise`
  ADD CONSTRAINT `encadrants_entreprise_ibfk_1` FOREIGN KEY (`fk_id_etr`) REFERENCES `entreprises` (`id_entreprise`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `entreprises`
--
ALTER TABLE `entreprises`
  ADD CONSTRAINT `entreprises_ibfk_1` FOREIGN KEY (`fk_id_ville`) REFERENCES `villes` (`id_ville`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `stages`
--
ALTER TABLE `stages`
  ADD CONSTRAINT `stages_ibfk_1` FOREIGN KEY (`fk_id_enseignant`) REFERENCES `enseignants` (`id_enseignant`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stages_ibfk_2` FOREIGN KEY (`fk_id_etudiant`) REFERENCES `etudiants` (`id_apogee`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
