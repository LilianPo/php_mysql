-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Loomise aeg: Märts 21, 2024 kell 03:12 PL
-- Serveri versioon: 10.4.32-MariaDB
-- PHP versioon: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Andmebaas: `muusikapood`
--

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `albumid`
--

CREATE TABLE `albumid` (
  `id` int(10) NOT NULL,
  `artist` varchar(255) NOT NULL,
  `album` varchar(255) NOT NULL,
  `aasta` year(4) NOT NULL,
  `hind` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `albumid`
--

INSERT INTO `albumid` (`id`, `artist`, `album`, `aasta`, `hind`) VALUES
(1, 'Onu Bella', 'Fiat', '1998', 100.20),
(2, 'Bernice', 'Toughjoyfax', '1999', 6.82),
(3, 'Emmye', 'Stringtough', '1996', 76.38),
(4, 'Bobbette', 'Fixflex', '2008', 47.26),
(5, 'Van', 'Konklux', '2011', 36.41),
(6, 'Katalin', 'Stronghold', '1993', 57.80),
(7, 'Fawnia', 'Andalax', '2010', 48.00),
(8, 'Giulia', 'Opela', '1994', 74.82),
(9, 'Ignaz', 'Tres-Zap', '2005', 38.42),
(10, 'Carry', 'Flexidy', '1986', 12.70),
(11, 'Martina', 'Treeflex', '2008', 44.01),
(12, 'Tamarra', 'Cardify', '1978', 84.93),
(13, 'Ezekiel', 'Fixflex', '1973', 82.97),
(14, 'Blondie', 'Ventosanzap', '2010', 57.09),
(15, 'Rick', 'Quo Lux', '2011', 62.74),
(16, 'Clem', 'Zoolab', '2008', 95.82),
(17, 'Katharina', 'Temp', '2006', 78.47),
(18, 'Gerrard', 'Rank', '2012', 60.24),
(19, 'Gradeigh', 'Duobam', '2005', 47.54),
(20, 'Grenville', 'Tresom', '2011', 14.10),
(21, 'Cinderella', 'Bitchip', '1998', 63.09),
(22, 'Aila', 'Andalax', '1997', 36.02),
(23, 'Rodina', 'Asoka', '2004', 48.20),
(24, 'Regan', 'Lotlux', '1995', 26.19),
(25, 'Bancroft', 'Fix San', '1993', 54.26),
(26, 'Lonna', 'Job', '1992', 91.21),
(27, 'Lyman', 'Bitwolf', '1999', 11.46),
(28, 'Luz', 'Zoolab', '1992', 84.55),
(29, 'Cori', 'Fixflex', '2001', 43.41),
(30, 'Annabella', 'Cardify', '2012', 71.32),
(31, 'Reamonn', 'Y-Solowarm', '1999', 19.34),
(32, 'Munmro', 'Flexidy', '1998', 26.73),
(33, 'Vivianna', 'Bamity', '2000', 93.34),
(34, 'Dore', 'Cookley', '1995', 9.94),
(35, 'Hildegarde', 'Otcom', '2011', 53.47),
(36, 'Jeramey', 'Stim', '2000', 25.27),
(37, 'Barr', 'Y-find', '1984', 7.31),
(38, 'Ogden', 'Ventosanzap', '2000', 63.10),
(39, 'Peyton', 'Cardguard', '2005', 31.56),
(40, 'Sayer', 'Opela', '1994', 18.40),
(41, 'Nisse', 'Cookley', '2000', 89.17),
(42, 'Aron', 'Wrapsafe', '1993', 15.21),
(43, 'Consuelo', 'Voyatouch', '2006', 24.84),
(44, 'Douglas', 'Job', '2010', 24.16),
(45, 'Mattheus', 'Kanlam', '1966', 38.56),
(46, 'Way', 'Lotstring', '1995', 77.30),
(47, 'Norton', 'Gembucket', '2003', 33.75),
(48, 'Anderson', 'Hatity', '1998', 87.69),
(49, 'Regine', 'Treeflex', '1989', 56.07),
(50, 'Miguel', 'Greenlam', '2006', 55.46),
(51, 'Penny', 'Temp', '1960', 47.66),
(52, 'Margarethe', 'Bigtax', '1996', 27.43),
(53, 'Dom', 'Cardguard', '1998', 70.09),
(54, 'Ingunna', 'Tampflex', '2003', 5.39),
(55, 'Scarface', 'Konklab', '1997', 28.68),
(56, 'Catha', 'Holdlamis', '2012', 11.35),
(57, 'Odell', 'Fintone', '1992', 35.79),
(58, 'Hedvige', 'Regrant', '2007', 49.97),
(59, 'Holli', 'Sonsing', '1994', 3.03),
(60, 'Sissy', 'Tempsoft', '2005', 33.59),
(61, 'Edan', 'Rank', '1994', 71.91),
(62, 'Luella', 'Domainer', '2002', 53.43),
(63, 'Yehudit', 'Voltsillam', '1997', 41.97),
(64, 'Brigitte', 'Trippledex', '2008', 7.51),
(65, 'Barnie', 'Tresom', '1988', 73.97),
(66, 'Alica', 'Ronstring', '2004', 24.32),
(67, 'Vinita', 'Transcof', '2003', 79.55),
(68, 'Barris', 'Zathin', '2008', 61.34),
(69, 'Vassily', 'Transcof', '1998', 43.92),
(70, 'Genna', 'Matsoft', '1995', 81.40),
(71, 'Elinor', 'Bytecard', '2006', 71.94),
(72, 'Freddy', 'Trippledex', '2005', 38.68),
(73, 'Deedee', 'Konklux', '2000', 63.85),
(74, 'Alikee', 'Transcof', '2006', 96.25),
(75, 'Lilli', 'Stronghold', '2008', 89.60),
(76, 'Blanche', 'Greenlam', '2006', 44.05),
(77, 'Cornelia', 'Alphazap', '2007', 30.21),
(78, 'Sim', 'Stim', '2008', 9.09),
(79, 'Jaimie', 'Zaam-Dox', '1996', 48.02),
(80, 'Josh', 'Fix San', '1992', 17.79),
(81, 'Kelly', 'Tempsoft', '2005', 11.81),
(82, 'Kienan', 'Zontrax', '2009', 57.97),
(83, 'Tommie', 'Job', '2006', 42.36),
(84, 'Rosalyn', 'Y-find', '1984', 66.45),
(85, 'Giuseppe', 'Bytecard', '2001', 2.36),
(86, 'Yoshi', 'Lotlux', '1995', 3.71),
(87, 'Jenn', 'Quo Lux', '2006', 30.24),
(88, 'Hollis', 'Home Ing', '1996', 86.48),
(89, 'Sophronia', 'Solarbreeze', '2000', 50.57),
(90, 'Lammond', 'Andalax', '1996', 81.37),
(91, 'Rosalyn', 'Kanlam', '1990', 42.37),
(92, 'Kristian', 'Keylex', '1994', 66.59),
(93, 'Lotty', 'Fintone', '2004', 60.08),
(94, 'Lorianna', 'Stronghold', '1990', 55.31),
(95, 'Baryram', 'Tres-Zap', '2003', 18.47),
(96, 'Adamo', 'Cookley', '1994', 50.29),
(97, 'Robb', 'Prodder', '2008', 33.03),
(98, 'Ty', 'Cardguard', '2011', 68.92),
(99, 'Colline', 'Job', '1999', 76.04),
(100, 'Tabbatha', 'Vagram', '2004', 86.36),
(101, 'Dre', 'Treeflex', '1989', 49.62);

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `albumid`
--
ALTER TABLE `albumid`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `albumid`
--
ALTER TABLE `albumid`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
