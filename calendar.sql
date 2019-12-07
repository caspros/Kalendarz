-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 29 Lis 2019, 16:48
-- Wersja serwera: 10.1.31-MariaDB
-- Wersja PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `calendar`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `events`
--

CREATE TABLE `events` (
  `id` int(100) NOT NULL,
  `dzien` int(100) NOT NULL,
  `miesiac` int(100) NOT NULL,
  `rok` int(100) NOT NULL DEFAULT '2019',
  `godzina` time(1) NOT NULL,
  `tytul` varchar(255) NOT NULL,
  `opis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `events`
--

INSERT INTO `events` (`id`, `dzien`, `miesiac`, `rok`, `godzina`, `tytul`, `opis`) VALUES
(10653, 2, 11, 2019, '15:00:00.0', 'Siłownia', 'Siłowania'),
(10665, 1, 11, 2019, '14:50:00.0', 'Obiad u rodziny', 'Obiad u rodziny'),
(10666, 8, 11, 2019, '14:50:00.0', 'Obiad u rodziny', 'Obiad u rodziny'),
(10667, 15, 11, 2019, '14:50:00.0', 'Obiad u rodziny', 'Obiad u rodziny'),
(10668, 22, 11, 2019, '14:50:00.0', 'Obiad u rodziny', 'Obiad u rodziny'),
(10669, 29, 11, 2019, '14:50:00.0', 'Obiad u rodziny', 'Obiad u rodziny'),
(10670, 8, 11, 2019, '15:00:00.0', 'Powrót do domu', 'Powrót do domu'),
(10671, 9, 11, 2019, '15:15:00.0', 'Dentysta', 'Dentysta'),
(10672, 12, 11, 2019, '12:12:00.0', 'Do kościoła', 'Idę do kościoła z mamą'),
(10673, 10, 12, 2019, '15:15:00.0', 'Wypłata', 'Wypłata'),
(10674, 5, 12, 2019, '15:15:00.0', 'Zupa', '');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `events`
--
ALTER TABLE `events`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10675;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
