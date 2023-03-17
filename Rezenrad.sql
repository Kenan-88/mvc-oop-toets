-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 17 mrt 2023 om 11:39
-- Serverversie: 5.7.36
-- PHP-versie: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvc-oop-toets`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `Rezenrad`
--

DROP TABLE IF EXISTS `Rezenrad`;
CREATE TABLE IF NOT EXISTS `Rezenrad` (
  `Id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `Naam` varchar(30) NOT NULL,
  `Hoogte` smallint(6) NOT NULL,
  `Land` varchar(50) NOT NULL,
  `Kosten` smallint(6) NOT NULL,
  `AantalPassagiers` smallint(6) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `Rezenrad`
--

INSERT INTO `Rezenrad` (`Id`, `Naam`, `Hoogte`, `Land`, `Kosten`, `AantalPassagiers`) VALUES
(1, 'Ain Dubai', 250, 'Verenigde Arabische Emiraten', 270, 1750),
(2, 'High Roller', 168, 'Verenigde Staten', 203, 1120),
(3, 'Singapore Flyer', 165, 'Singapore', 240, 784),
(4, 'Star of Nanchang', 160, 'China', 57, 480),
(5, 'London Eye', 135, 'Engeland', 65, 320);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
