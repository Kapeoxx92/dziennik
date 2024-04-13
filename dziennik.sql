-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 13 Kwi 2024, 21:02
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `dziennik`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klasa`
--

CREATE TABLE `klasa` (
  `id` int(11) NOT NULL,
  `rok_nauki` int(11) NOT NULL,
  `klasa` varchar(8) NOT NULL,
  `ilosc_uczniow` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `klasa`
--

INSERT INTO `klasa` (`id`, `rok_nauki`, `klasa`, `ilosc_uczniow`) VALUES
(1, 4, 'a', 17),
(2, 2, 'a', 15),
(3, 1, 'a', 25),
(4, 2, 'b', 15),
(5, 1, 'b', 18),
(6, 5, 'a', 20),
(7, 5, 'b', 29),
(8, 2, 'c', 16),
(9, 4, 'b', 27),
(10, 5, 'c', 17),
(11, 3, 'a', 30),
(12, 5, 'd', 22),
(13, 4, 'c', 22),
(14, 5, 'e', 23),
(15, 4, 'd', 26),
(16, 3, 'b', 23),
(17, 3, 'c', 15),
(18, 3, 'd', 17),
(19, 4, 'e', 28),
(20, 5, 'f', 19),
(21, 5, 'g', 22),
(22, 4, 'f', 23),
(23, 3, 'e', 30),
(24, 4, 'g', 21),
(25, 1, 'c', 26),
(26, 4, 'h', 18),
(27, 2, 'd', 19),
(28, 2, 'e', 19),
(29, 1, 'd', 20),
(30, 1, 'e', 17),
(31, 1, 'f', 17),
(32, 5, 'h', 20),
(33, 2, 'f', 15),
(34, 1, 'g', 29),
(35, 1, 'h', 29),
(36, 3, 'f', 30),
(37, 2, 'g', 16),
(38, 3, 'g', 26),
(39, 2, 'h', 16),
(40, 3, 'h', 27);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `nauczyciel`
--

CREATE TABLE `nauczyciel` (
  `id` int(11) NOT NULL,
  `imie` varchar(32) NOT NULL,
  `nazwisko` varchar(64) NOT NULL,
  `przedmiot` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `nauczyciel`
--

INSERT INTO `nauczyciel` (`id`, `imie`, `nazwisko`, `przedmiot`) VALUES
(1, 'Amalia', 'Saywell', 'język polski'),
(2, 'Nesta', 'Guinnane', 'język angielski'),
(3, 'Yank', 'Boat', 'język niemiecki'),
(4, 'Urbanus', 'Friend', 'język hiszpański'),
(5, 'Lizzy', 'Bursnoll', 'geografia'),
(6, 'Shina', 'Kear', 'matematyka'),
(7, 'Scottie', 'Challis', 'chemia'),
(8, 'Joleen', 'Camfield', 'fizyka'),
(9, 'Nonnah', 'Klesl', 'historia'),
(10, 'Eadie', 'Godthaab', 'wiedza o społeczeństwie'),
(11, 'Kerwinn', 'Lampard', 'biologia'),
(12, 'Domeniga', 'Phillips', 'bazy danych'),
(13, 'Marchelle', 'McGillecole', 'systemy operacyjne'),
(14, 'Myrilla', 'MacEntee', 'programowanie'),
(15, 'Norrie', 'Gehrts', 'grafika komputerowa'),
(16, 'Meridith', 'Krauss', 'druk 3D'),
(17, 'Fredrick', 'MacGraith', 'anatomia'),
(18, 'Lacee', 'Mussilli', 'fotografia'),
(19, 'Gennie', 'Sibylla', 'analistyka'),
(20, 'Penny', 'Mould', 'fryzjerstwo'),
(21, 'Cassandre', 'Maddin', 'weterynaria'),
(22, 'Staffard', 'Baddow', 'turystyka'),
(23, 'Tripp', 'Oakwood', 'elektryka'),
(24, 'Thorn', 'Santry', 'stylizacja'),
(25, 'Jan', 'Fance', 'kosmetologia');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oceny`
--

CREATE TABLE `oceny` (
  `id` int(11) NOT NULL,
  `ocena` int(11) NOT NULL,
  `uczen` int(11) NOT NULL,
  `przedmiot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `oceny`
--

INSERT INTO `oceny` (`id`, `ocena`, `uczen`, `przedmiot`) VALUES
(1, 4, 10, 14),
(2, 2, 77, 7),
(3, 3, 34, 18),
(4, 4, 40, 17),
(5, 5, 5, 15),
(6, 2, 28, 21),
(7, 3, 11, 11),
(8, 6, 58, 18),
(9, 1, 57, 18),
(10, 3, 55, 17),
(11, 2, 65, 17),
(12, 1, 91, 12),
(13, 1, 62, 16),
(14, 6, 91, 8),
(15, 5, 42, 21),
(16, 4, 51, 1),
(17, 2, 5, 20),
(18, 3, 18, 15),
(19, 6, 100, 15),
(20, 3, 74, 15),
(21, 5, 32, 1),
(22, 5, 45, 23),
(23, 4, 14, 16),
(24, 6, 86, 5),
(25, 1, 79, 7),
(26, 1, 9, 1),
(27, 4, 55, 24),
(28, 4, 5, 13),
(29, 1, 98, 20),
(30, 1, 34, 2),
(31, 1, 57, 11),
(32, 4, 30, 3),
(33, 1, 58, 13),
(34, 3, 88, 4),
(35, 3, 14, 4),
(36, 4, 59, 2),
(37, 2, 33, 22),
(38, 1, 55, 12),
(39, 3, 50, 19),
(40, 1, 42, 1),
(41, 5, 83, 22),
(42, 4, 86, 20),
(43, 1, 47, 17),
(44, 1, 97, 19),
(45, 5, 55, 5),
(46, 1, 23, 23),
(47, 1, 17, 22),
(48, 1, 79, 11),
(49, 3, 15, 12),
(50, 2, 74, 12),
(51, 4, 12, 16),
(52, 3, 25, 14),
(53, 5, 52, 13),
(54, 4, 67, 9),
(55, 5, 62, 13),
(56, 4, 26, 24),
(57, 3, 48, 9),
(58, 3, 53, 4),
(59, 6, 6, 15),
(60, 2, 73, 10),
(61, 5, 47, 19),
(62, 1, 42, 23),
(63, 2, 87, 10),
(64, 2, 34, 25),
(65, 2, 90, 18),
(66, 6, 61, 6),
(67, 2, 93, 21),
(68, 4, 89, 1),
(69, 6, 8, 22),
(70, 2, 25, 25),
(71, 2, 56, 25),
(72, 6, 67, 2),
(73, 2, 14, 22),
(74, 3, 38, 23),
(75, 3, 90, 12),
(76, 2, 39, 7),
(77, 6, 33, 7),
(78, 2, 14, 16),
(79, 2, 12, 16),
(80, 1, 74, 10),
(81, 4, 39, 4),
(82, 3, 71, 8),
(83, 1, 68, 14),
(84, 6, 16, 19),
(85, 6, 70, 21),
(86, 2, 7, 25),
(87, 4, 36, 18),
(88, 2, 54, 25),
(89, 2, 35, 10),
(90, 6, 7, 13),
(91, 4, 25, 10),
(92, 4, 5, 25),
(93, 1, 10, 22),
(94, 1, 82, 8),
(95, 3, 53, 22),
(96, 5, 41, 18),
(97, 1, 85, 25),
(98, 4, 82, 4),
(99, 6, 78, 13),
(100, 3, 2, 11);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `przedmioty`
--

CREATE TABLE `przedmioty` (
  `id` int(11) NOT NULL,
  `przedmiot` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `przedmioty`
--

INSERT INTO `przedmioty` (`id`, `przedmiot`) VALUES
(1, 'język polski'),
(2, 'język angielski'),
(3, 'język niemiecki'),
(4, 'język hiszpański'),
(5, 'geografia'),
(6, 'matematyka'),
(7, 'chemia'),
(8, 'fizyka'),
(9, 'historia'),
(10, 'wiedza o społeczeństwie'),
(11, 'biologia'),
(12, 'bazy danych'),
(13, 'systemy operacyjne'),
(14, 'programowanie'),
(15, 'grafika komputerowa'),
(16, 'druk 3D'),
(17, 'anatomia'),
(18, 'fotografia'),
(19, 'analistyka'),
(20, 'fryzjerstwo'),
(21, 'weterynaria'),
(22, 'turystyka'),
(23, 'elektryka'),
(24, 'stylizacja'),
(25, 'kosmetologia');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rodzice`
--

CREATE TABLE `rodzice` (
  `id` int(11) NOT NULL,
  `imie_ojca` varchar(32) NOT NULL,
  `imie_matki` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `rodzice`
--

INSERT INTO `rodzice` (`id`, `imie_ojca`, `imie_matki`) VALUES
(1, 'Hillier', 'Phaedra'),
(2, 'Alfred', 'Rana'),
(3, 'Leroy', 'Corrie'),
(4, 'Geri', 'Kelcie'),
(5, 'Pebrook', 'Koral'),
(6, 'Riobard', 'Janelle'),
(7, 'See', 'Brunhilde'),
(8, 'Paton', 'Lyndy'),
(9, 'Chevy', 'Perrine'),
(10, 'Godfrey', 'Phebe'),
(11, 'Alexis', 'Alisha'),
(12, 'Irwinn', 'Lisha'),
(13, 'Corrie', 'Sande'),
(14, 'Bradley', 'Genia'),
(15, 'Neils', 'Basia'),
(16, 'Freddy', 'Hedwiga'),
(17, 'Arte', 'Yoshiko'),
(18, 'Kris', 'Ted'),
(19, 'Winfield', 'Lanny'),
(20, 'Theobald', 'Heather'),
(21, 'Tam', 'Dniren'),
(22, 'Hewet', 'Desdemona'),
(23, 'Aldis', 'Clare'),
(24, 'Werner', 'Orel'),
(25, 'Petr', 'Nelli'),
(26, 'Linn', 'Sadie'),
(27, 'Valentijn', 'Serene'),
(28, 'Janos', 'Margaretha'),
(29, 'Orion', 'Kamila'),
(30, 'Ludvig', 'Roze'),
(31, 'Edd', 'Caitrin'),
(32, 'Derby', 'Deborah'),
(33, 'Emanuel', 'Katine'),
(34, 'Ly', 'Lexi'),
(35, 'Ernst', 'Beryl'),
(36, 'Redford', 'Dahlia'),
(37, 'Abey', 'Essie'),
(38, 'Jule', 'Bridgette'),
(39, 'Hillie', 'Francisca'),
(40, 'Levon', 'Dion'),
(41, 'Berny', 'Wilmette'),
(42, 'Tymothy', 'Agatha'),
(43, 'Kahaleel', 'Ynez'),
(44, 'Rollin', 'Daryn'),
(45, 'Mauricio', 'Idaline'),
(46, 'Felic', 'Alyson'),
(47, 'Erl', 'Jessamine'),
(48, 'Tye', 'Ellynn'),
(49, 'Rollin', 'Genevieve'),
(50, 'Alano', 'Melba'),
(51, 'Granthem', 'Hynda'),
(52, 'Bondy', 'Agatha'),
(53, 'Gustavo', 'Leanora'),
(54, 'Gregory', 'Dena'),
(55, 'Travis', 'Maure'),
(56, 'Kris', 'Kendre'),
(57, 'Sigfried', 'Tamra'),
(58, 'Gayelord', 'Sianna'),
(59, 'Madison', 'Kary'),
(60, 'Gunter', 'Letti'),
(61, 'Adler', 'Gwenore'),
(62, 'Quillan', 'Rhodie'),
(63, 'Pascale', 'Ernesta'),
(64, 'Cory', 'Corenda'),
(65, 'Jaime', 'Lee'),
(66, 'Jordan', 'Siobhan'),
(67, 'Cam', 'Jeanelle'),
(68, 'Lane', 'Gretel'),
(69, 'Brewer', 'Karlee'),
(70, 'Niko', 'Morena'),
(71, 'Artemas', 'Jennette'),
(72, 'Keefe', 'Twila'),
(73, 'Ignatius', 'Fredia'),
(74, 'Lyman', 'Marna'),
(75, 'Uriah', 'Zelda'),
(76, 'Austen', 'Joice'),
(77, 'Kristoffer', 'Lindsey'),
(78, 'Zachariah', 'Hannis'),
(79, 'Rance', 'Joelly'),
(80, 'Garvey', 'Fredra'),
(81, 'Chilton', 'Ceil'),
(82, 'Pall', 'Farra'),
(83, 'Mycah', 'Dara'),
(84, 'Alister', 'Gigi'),
(85, 'Allie', 'Jocelyne'),
(86, 'Tull', 'Glennie'),
(87, 'Rufus', 'Elena'),
(88, 'Justis', 'Bobine'),
(89, 'Knox', 'Miranda'),
(90, 'Cash', 'Leola'),
(91, 'Chauncey', 'Almira'),
(92, 'Grady', 'Delcina'),
(93, 'Greggory', 'Zora'),
(94, 'Nicolis', 'Tammie'),
(95, 'Trevor', 'Charin'),
(96, 'Don', 'Hedvig'),
(97, 'Craig', 'Ivett'),
(98, 'Cy', 'Belita'),
(99, 'Ellerey', 'Henrie'),
(100, 'Lloyd', 'Karlyn');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `szkoła`
--

CREATE TABLE `szkoła` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(64) NOT NULL,
  `adres` varchar(128) NOT NULL,
  `nr_telefonu` int(32) NOT NULL,
  `email` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `szkoła`
--

INSERT INTO `szkoła` (`id`, `nazwa`, `adres`, `nr_telefonu`, `email`) VALUES
(1, 'teb edukacja', '32 Arrowood Circle', 324785879, 'mshotter0@goo.ne.jp'),
(2, 'teb edukacja', '866 Starling Lane', 179754538, 'bpascho1@cyberchimps.com'),
(3, 'teb edukacja', '16 Sunnyside Way', 708783896, 'ssayton2@ifeng.com'),
(4, 'teb edukacja', '52 Lunder Pass', 624876389, 'kcawthorne3@ucoz.ru'),
(5, 'teb edukacja', '347 Leroy Center', 855896785, 'kbrowell4@bing.com'),
(6, 'teb edukacja', '161 Bartelt Hill', 556875238, 'atowle5@spotify.com'),
(7, 'teb edukacja', '893 Anzinger Plaza', 453783896, 'vdavydkov6@uol.com.br'),
(8, 'teb edukacja', '71 Oak Valley Junction', 341877963, 'jbertl7@bluehost.com'),
(9, 'teb edukacja', '7271 Johnson Trail', 169785327, 'etilzey8@tumblr.com'),
(10, 'teb edukacja', '7 Elgar Parkway', 475789653, 'dmcgiveen9@seesaa.net');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uczen`
--

CREATE TABLE `uczen` (
  `id` int(11) NOT NULL,
  `imie` varchar(32) NOT NULL,
  `nazwisko` varchar(64) NOT NULL,
  `imiona_rodzicow` varchar(128) NOT NULL,
  `rok_nauki` int(11) NOT NULL,
  `wiek` int(11) NOT NULL,
  `nr_w_dzienniku` int(11) NOT NULL,
  `szkoła` int(11) NOT NULL,
  `klasa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `uczen`
--

INSERT INTO `uczen` (`id`, `imie`, `nazwisko`, `imiona_rodzicow`, `rok_nauki`, `wiek`, `nr_w_dzienniku`, `szkoła`, `klasa`) VALUES
(1, 'Alyssa', 'McGookin', '33', 4, 16, 18, 9, 0),
(2, 'Olympia', 'Heckney', '6', 1, 18, 25, 2, 0),
(3, 'Emanuel', 'felip', '96', 5, 20, 27, 4, 0),
(4, 'Carlin', 'Annear', '96', 1, 17, 19, 3, 0),
(5, 'Lacy', 'Beddow', '59', 5, 16, 13, 1, 0),
(6, 'Tomi', 'Heake', '66', 5, 19, 29, 8, 0),
(7, 'Arabelle', 'Glasson', '24', 2, 19, 18, 6, 0),
(8, 'Beverly', 'Gouldsmith', '60', 5, 19, 7, 9, 0),
(9, 'Perla', 'Piell', '84', 4, 18, 11, 10, 0),
(10, 'Vilhelmina', 'Dreakin', '47', 3, 15, 13, 1, 0),
(11, 'Wolfy', 'Gillett', '34', 1, 16, 7, 2, 0),
(12, 'Ash', 'Getcliff', '60', 5, 19, 4, 3, 0),
(13, 'Glad', 'Lippitt', '9', 2, 16, 20, 9, 0),
(14, 'Kassey', 'Darrington', '91', 5, 15, 18, 6, 0),
(15, 'Sandra', 'Best', '12', 3, 17, 7, 6, 0),
(16, 'Kalli', 'Gradley', '60', 1, 15, 8, 6, 0),
(17, 'Kirbee', 'Cartwight', '97', 4, 20, 12, 4, 0),
(18, 'Ariel', 'Rossbrook', '58', 1, 20, 3, 6, 0),
(19, 'Durward', 'Vondrys', '9', 3, 19, 3, 2, 0),
(20, 'Madeleine', 'Absolon', '84', 2, 17, 10, 3, 0),
(21, 'Artur', 'Dubble', '86', 1, 19, 15, 1, 0),
(22, 'Ivonne', 'Dwine', '23', 5, 20, 7, 1, 0),
(23, 'Lisetta', 'Tourville', '39', 1, 18, 4, 3, 0),
(24, 'Georgeanne', 'Squirrel', '70', 4, 20, 17, 10, 0),
(25, 'Rubia', 'Ginnell', '3', 4, 16, 1, 3, 0),
(26, 'Raf', 'Winterflood', '37', 1, 19, 22, 5, 0),
(27, 'Amalita', 'Lindl', '92', 4, 15, 7, 8, 0),
(28, 'Zonda', 'Cearley', '46', 2, 18, 21, 4, 0),
(29, 'Astrid', 'Di Pietro', '41', 1, 17, 12, 5, 0),
(30, 'Helaina', 'Thomasson', '84', 3, 15, 4, 10, 0),
(31, 'Sheilakathryn', 'Pedwell', '10', 1, 19, 13, 6, 0),
(32, 'Trisha', 'Belloch', '81', 1, 19, 27, 6, 0),
(33, 'Stefano', 'Guillard', '85', 4, 15, 10, 2, 0),
(34, 'Gayla', 'Bartlomieczak', '70', 5, 17, 24, 4, 0),
(35, 'Gayel', 'Stivers', '55', 5, 18, 9, 5, 0),
(36, 'Vally', 'Audibert', '4', 2, 16, 25, 2, 0),
(37, 'Josepha', 'Wrightham', '36', 1, 20, 2, 6, 0),
(38, 'Lionel', 'Romagosa', '35', 1, 20, 4, 6, 0),
(39, 'Roanna', 'Tunstall', '97', 4, 19, 8, 8, 0),
(40, 'Brendon', 'Woolaghan', '39', 1, 20, 24, 10, 0),
(41, 'Zed', 'Degoe', '79', 2, 15, 11, 8, 0),
(42, 'Jesselyn', 'Foxley', '42', 2, 19, 29, 7, 0),
(43, 'Binnie', 'Camock', '7', 4, 19, 3, 1, 0),
(44, 'Foss', 'Spurgeon', '43', 1, 16, 2, 2, 0),
(45, 'Yettie', 'Jouanet', '91', 5, 16, 15, 4, 0),
(46, 'Zitella', 'Yakovliv', '57', 1, 15, 16, 10, 0),
(47, 'Iolanthe', 'Hames', '76', 1, 19, 20, 1, 0),
(48, 'Ortensia', 'Booy', '48', 4, 18, 23, 10, 0),
(49, 'Myer', 'Follitt', '58', 4, 16, 21, 1, 0),
(50, 'Filberto', 'O\' Mara', '34', 2, 15, 22, 1, 0),
(51, 'Kesley', 'Giddons', '1', 2, 18, 12, 3, 0),
(52, 'Chance', 'Van den Broek', '62', 5, 19, 8, 4, 0),
(53, 'Ray', 'Lahy', '32', 4, 20, 9, 1, 0),
(54, 'Dollie', 'Amer', '55', 3, 16, 25, 7, 0),
(55, 'Ibrahim', 'Kardos-Stowe', '35', 2, 15, 23, 8, 0),
(56, 'Dacey', 'Hasley', '56', 5, 19, 23, 3, 0),
(57, 'Jacquetta', 'Gummow', '13', 4, 15, 30, 7, 0),
(58, 'Creight', 'Grey', '12', 1, 19, 11, 1, 0),
(59, 'Marrissa', 'Cockings', '28', 3, 17, 11, 7, 0),
(60, 'Sancho', 'Philippard', '35', 2, 20, 15, 7, 0),
(61, 'Ingrid', 'Vobes', '4', 2, 18, 27, 8, 0),
(62, 'Pacorro', 'Howle', '48', 4, 15, 23, 6, 0),
(63, 'Cammie', 'Woolatt', '88', 1, 20, 10, 8, 0),
(64, 'Derrek', 'Dunsire', '15', 3, 19, 12, 2, 0),
(65, 'Trumaine', 'Widdocks', '2', 3, 20, 29, 7, 0),
(66, 'La verne', 'Hatter', '57', 5, 16, 28, 5, 0),
(67, 'Farly', 'Welling', '91', 2, 17, 23, 8, 0),
(68, 'Rhett', 'Gaynesford', '97', 5, 17, 16, 7, 0),
(69, 'Valerie', 'Malicki', '39', 1, 20, 1, 2, 0),
(70, 'Daryle', 'Smither', '88', 2, 20, 1, 6, 0),
(71, 'Jewel', 'Paynes', '72', 5, 17, 19, 7, 0),
(72, 'Noby', 'Westley', '83', 4, 19, 5, 6, 0),
(73, 'Artair', 'Durbann', '86', 2, 20, 12, 9, 0),
(74, 'Rad', 'Costa', '51', 5, 16, 3, 7, 0),
(75, 'Starla', 'Janczyk', '84', 4, 19, 18, 6, 0),
(76, 'Sidonia', 'Dotson', '91', 4, 15, 14, 1, 0),
(77, 'Renee', 'Erricker', '39', 4, 16, 13, 6, 0),
(78, 'Alexis', 'Halford', '91', 1, 19, 10, 4, 0),
(79, 'Even', 'Badger', '75', 1, 18, 14, 5, 0),
(80, 'Tobey', 'Dane', '44', 4, 18, 2, 10, 0),
(81, 'Lexy', 'Knowlden', '65', 5, 19, 4, 4, 0),
(82, 'Nollie', 'Thulborn', '20', 3, 17, 6, 4, 0),
(83, 'Tiphanie', 'Gemeau', '5', 2, 17, 7, 8, 0),
(84, 'Meghann', 'Nast', '57', 3, 20, 20, 9, 0),
(85, 'Patsy', 'Cobbing', '63', 3, 17, 6, 10, 0),
(86, 'Lynnet', 'Legges', '48', 3, 15, 10, 9, 0),
(87, 'Angelique', 'Smeal', '59', 4, 16, 25, 9, 0),
(88, 'Newton', 'Tripe', '11', 4, 15, 13, 6, 0),
(89, 'Hyman', 'Carter', '31', 2, 18, 4, 6, 0),
(90, 'Irv', 'Emby', '94', 4, 15, 12, 9, 0),
(91, 'Scotty', 'Tonkin', '17', 1, 19, 2, 4, 0),
(92, 'Giordano', 'Shayes', '52', 3, 15, 7, 4, 0),
(93, 'Jude', 'Sones', '48', 2, 18, 14, 3, 0),
(94, 'Noel', 'Thickett', '6', 4, 15, 18, 4, 0),
(95, 'Jessalin', 'Plank', '90', 5, 19, 29, 5, 0),
(96, 'Farly', 'Mandres', '94', 1, 18, 22, 10, 0),
(97, 'Teodoor', 'Sharp', '44', 5, 18, 30, 9, 0),
(98, 'Waldemar', 'MacRinn', '79', 3, 15, 20, 1, 0),
(99, 'Ethelda', 'Brodest', '44', 4, 18, 29, 2, 0),
(100, 'Sherrie', 'Ferrieres', '26', 2, 17, 3, 7, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wiadomosci`
--

CREATE TABLE `wiadomosci` (
  `id` int(11) NOT NULL,
  `od_kogo` int(11) NOT NULL,
  `do_kogo` int(11) NOT NULL,
  `tresc` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `wiadomosci`
--

INSERT INTO `wiadomosci` (`id`, `od_kogo`, `do_kogo`, `tresc`) VALUES
(1, 12, 11, '134pWCvR1PetRNuDX6tuYoMSRKvL3h61GK'),
(2, 28, 4, '1BaqyjK6dhVPoWHvhijZahojUiiBq18ATx'),
(3, 8, 69, '12pWdJ3KdepRvjpQ2dxAw9APYPRHN6jVae'),
(4, 96, 100, '1GwKeu2GvxK9xDAKaQGzQg4ZmPVqJgXdoh'),
(5, 41, 68, '19z2ecSRoXcHVoZh2PAcj4mrAivbGaVrT8'),
(6, 34, 86, '14Vf9MotHnRh31r3PQkyMz6JCzYv2BUqH2'),
(7, 74, 69, '16CFSzf1hZqcqysyZwzkZS7Q8Ugp1EZWha'),
(8, 51, 65, '1J4GeSabiXNKBJ3iTezV78ESPtJGKzeBgM'),
(9, 65, 5, '1Dw28zNerqMPuCSWHhJbtqoYvj4HBuum29'),
(10, 78, 3, '1PvktFeowutcCFXxnfsn6bMudLtUWoH2ds'),
(11, 82, 24, '18QYpVFRWg9PqLnEvqFw9xCimqdgsr2gRD'),
(12, 72, 95, '1E4H9yXQZyfWsFabPxwmPgQMxH1DbbiqVZ'),
(13, 87, 1, '14RJcRqTLwT7NVTLazXcNwerx965kgmSUw'),
(14, 65, 76, '1GGNkyGqvZG5RYuRAwqt5bK9NiWJgbufzr'),
(15, 1, 70, '1GNzQCL1TH2sSVRQdmeAbTb33SohoyTVpM'),
(16, 13, 65, '12c2S1t6iDvjpAJD7pp4mLHDDzqWQt7PTR'),
(17, 84, 22, '16nuruJbZbhSkKweQoYqCz2qEwLKzZx5wv'),
(18, 13, 7, '1Jv1fEP3xho6dtMqzztE1jyvqTPdC9ZdpZ'),
(19, 79, 14, '1MSe4LxXYGXRGCCks9RTf1du1DFQaSaP8y'),
(20, 55, 73, '19wQ2RNK4w46YSt94AamGVifqxYw64siVf'),
(21, 9, 64, '16bTtnLyo21hFCBMScyu3Wbxh4mEP3vWVn'),
(22, 95, 20, '19dMFpHRgmT9CfcmjfDv5yDfCEJrSiRRv2'),
(23, 54, 12, '1KyL4eMSZsokrg58Jy2XWziCnG4VsNoFkp'),
(24, 32, 19, '1AXZNDjnTn22fEhr3HtoVkydSECdYv8qo2'),
(25, 73, 62, '1GgLziW5gX2xUXWiNW4jXwW6nG4KyxxQCE'),
(26, 35, 87, '14tB4KU8J18DGdoJF55pz7DRfZBxLLi7os'),
(27, 17, 81, '1GcKQugi5UhBcvjqDXoE6CeUn2BidE9Xp6'),
(28, 79, 64, '1EBQjMEqz277xGsoNykkdztNfqRjEvscsE'),
(29, 69, 89, '1PzokctUVrtrFrt8V3n5Q44JeikCVLMFhW'),
(30, 1, 13, '1Ch9kzVkgFuY6GYYDXmeasNtYrjhYcBEF8'),
(31, 25, 36, '13t4rUuoDXrPzTkzQ2KkLSJnXTCx7nU4Us'),
(32, 74, 20, '1LD7vxor7Y4JaFE4AhMofuwHAEmNQmsJZK'),
(33, 91, 33, '19o182iUfxVYfPbgkq3rkHHUwmUY6yDVCU'),
(34, 12, 80, '186FaumrpuyzPQGfGDs23jNNuojU9997XM'),
(35, 38, 51, '14esnCQNRFJguwXT93bRti47wMtptbDo3f'),
(36, 94, 15, '18zj4LCyq7XYUAUX3EcKMF7ziHUVub1xu9'),
(37, 57, 43, '1CVch5pV5i6mJZSEAzHkZe34KXyyVZgGr1'),
(38, 42, 95, '1ApwUoPUjpxhGBS3Yxd5Xs4bHFCa7znUWL'),
(39, 31, 14, '131GLg8LtpAYguPFQ5RAQv4HQSGXiC1dUh'),
(40, 94, 78, '12nbndPJA19eKz8KGhVycwbz3tQV22PQ3s'),
(41, 89, 98, '1HywsQ7tSwoFXEh1BAw1m5Myh88UgkLFJY'),
(42, 80, 58, '1Ke6ovMtcpw2CqXtvwurfeWb1BU8cUzKbP'),
(43, 39, 62, '1hwZ1xZEgN62GQrCirhsEpPRHiqCfizti'),
(44, 55, 51, '1Pe8H98eE1ta5CyXo8dq9MZ3TLKgTvEA7W'),
(45, 41, 58, '1EBj3qAFgjSdUJRinvsFHdZ5EoBGMBuqPj'),
(46, 89, 46, '16CuNQmCCw7grxkn15vkMKqrn2kagSHcFk'),
(47, 82, 73, '124qWVKaW5qvqbvHuGEhCEA5uc3PzyEdJA'),
(48, 56, 80, '1PVQxQD8K7djioPAEPBPsah5ojPQLbCoe8'),
(49, 79, 64, '1MfgByZF1wUBsDnNdtLwtUKzTVaJA1mpDC'),
(50, 87, 61, '151U8aWvuzbT7KfDHEp4jBooVJnj46Wghr'),
(51, 85, 78, '1DAJhdAXV7gK6TwWZBxiHeLAsQ65YavHnc'),
(52, 12, 56, '1MxieYDtZb9MoxKWx3w6hk5mg9REM8FJoW'),
(53, 24, 44, '16xe3dejYskM5wcEshb85NiRbbP4CknXs7'),
(54, 40, 62, '16LpJEBxypj9GWU5T9siryunD8Z2pLj6ya'),
(55, 70, 22, '1NvmvmwBMcoLRTZrWkH9CVZoP3KnCcdzpp'),
(56, 72, 94, '1CGdRvGFFMGjqvPC1e3C5wXFBF6SQhFZvS'),
(57, 23, 54, '12Sa99akSxs4r43C8pxJ4Bs3sLRKpYXSLx'),
(58, 5, 31, '16KB5uf2HkkGdBy4sqH8gjDq2w5Cq1HrWf'),
(59, 95, 64, '1Enj44qu7R5ZyunNe5kV3SHrE5krBuWkJ1'),
(60, 20, 83, '1CsHgLwymvLR27r765nR5zj7DJJv5SUwHD'),
(61, 57, 6, '17oU2T6mMb6gDMCpFUEKYbV6HmjE95WqFH'),
(62, 42, 92, '1NE83iCreuLU8W2D6vEWYdaW8upR1tUKPS'),
(63, 81, 67, '1KrWph99bQALFbF6VEMKZaLPzwNdytXZ2D'),
(64, 97, 6, '1MjM4cyyXG1Jr8Q4Euk8NqNUgrUsVYXENj'),
(65, 32, 35, '1AZ9VrAtkvWC3wDYcoJkw7weP91ANU4zNp'),
(66, 60, 67, '1JnbFzgVTRBU7P4LBLXAVbAD5hUbREBZre'),
(67, 6, 63, '18yu7jht88F9CNsMwBhVrgsshHDVwXef2f'),
(68, 94, 34, '1B7RyoFZxP5KmE7YrT4EkHrxBpanCjB9DM'),
(69, 99, 95, '19QHqWLB11Y7M8jnBdB8w6t7FxpG1g5tyW'),
(70, 96, 53, '14AQk7o2czQAnqLfEMcAJFKyDB9m96aYqe'),
(71, 98, 23, '1Jk9ve2kSYiRTR39LSx2W6ah6fQgTQvYv1'),
(72, 36, 66, '13TzT8Zgyxsk6iioNV2wJaYRfV2hrbiSsW'),
(73, 30, 62, '1CsKGyjh6ubjd6vwVM5psZJkXLcXKFFcGa'),
(74, 52, 93, '1wkL2nefnvCPb6RUE2vVPs9Ut8tZEfy6s'),
(75, 63, 49, '1PpYfpNnFHrmHHZ3EVkutDCV8tZYY9FodQ'),
(76, 57, 40, '136RSKLT2cYYeFVkB4FaTfcR9QDErV79zM'),
(77, 4, 66, '1E6uy6W5rF53X16neonMaHYDaGXUWqmV1Y'),
(78, 46, 8, '1Q6DRNxaf7JRPvcu83DgeDdoopp8j18VeF'),
(79, 82, 74, '1KdBde94Ee2VUmtv2TRmtCEdTeSjLURCcT'),
(80, 9, 60, '1LQhoExuahTWKuLBMeRejQ8rGgasWoyUvj'),
(81, 31, 87, '186MfHWeUKoPB9i7AnKiEtqmKrweC256WN'),
(82, 94, 96, '16toWTxMFHurWKiuFpReRbALszi3E6qsc7'),
(83, 17, 70, '12GwtnhPxxkMQTczmz9Ln1Hh1qMryg88kw'),
(84, 47, 82, '1NRgtTLBusL4cRqQroYMZUAfwqu7xQkMSe'),
(85, 24, 15, '19zaCSpCzrRWwitF7oJHAuSpywWtk44cJw'),
(86, 41, 57, '1JGZvaEQ7Xxf8hZnHs5eYQ6UT49abyehy6'),
(87, 66, 9, '1EE8zjHMGa51P8y4od6H5dDU9y7jwyhLrg'),
(88, 10, 52, '12F2EgWsBNALX9ZBNiteKGRNW9bEZJabyw'),
(89, 10, 63, '12uoZKkvZNqwsZmKx7L5o62xmkqgmEiZHV'),
(90, 59, 73, '1CWmPudUCXu93suFnFvVx4wtvmcLhMpVmq'),
(91, 44, 86, '1MimhK9FGgSkKVSYHcVwVC6aaGsGW5FkmJ'),
(92, 37, 93, '1GKawWbBVjSsz34uGkL9jq5JsVR7rGZk9E'),
(93, 73, 89, '15YMQv6fUrsNfH2WLoSFRVGE18GwB8VLmL'),
(94, 11, 100, '18KBiwMGaqp3HUSupzefoqihGZhmPvzW1A'),
(95, 73, 59, '14RENWuQFt4S9PGEe7C5KbHGiRuKag7Fqs'),
(96, 80, 1, '16qHxEN52ff6aDuC9ha67A4eQfWUFxJpJw'),
(97, 46, 81, '1899jhRzMsrpgswiGiczW9CdFzYmNuVPoZ'),
(98, 41, 18, '1BJFsrdB1Ap96oVWBWkY3dFC9WM7kkN91R'),
(99, 22, 24, '1AtywV51zTzFwU4uuJgPUHUiWpZTXAA5Bd'),
(100, 19, 9, '13qd1Dcz5YjFpiNWbZkGpxnqmkgRcEWsKu');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `klasa`
--
ALTER TABLE `klasa`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `nauczyciel`
--
ALTER TABLE `nauczyciel`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `oceny`
--
ALTER TABLE `oceny`
  ADD PRIMARY KEY (`id`),
  ADD KEY `przedmiot` (`przedmiot`);

--
-- Indeksy dla tabeli `przedmioty`
--
ALTER TABLE `przedmioty`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `rodzice`
--
ALTER TABLE `rodzice`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `szkoła`
--
ALTER TABLE `szkoła`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `uczen`
--
ALTER TABLE `uczen`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `wiadomosci`
--
ALTER TABLE `wiadomosci`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `klasa`
--
ALTER TABLE `klasa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT dla tabeli `nauczyciel`
--
ALTER TABLE `nauczyciel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT dla tabeli `oceny`
--
ALTER TABLE `oceny`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT dla tabeli `rodzice`
--
ALTER TABLE `rodzice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT dla tabeli `szkoła`
--
ALTER TABLE `szkoła`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `uczen`
--
ALTER TABLE `uczen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT dla tabeli `wiadomosci`
--
ALTER TABLE `wiadomosci`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `oceny`
--
ALTER TABLE `oceny`
  ADD CONSTRAINT `oceny_ibfk_1` FOREIGN KEY (`przedmiot`) REFERENCES `przedmioty` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
