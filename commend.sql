-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 31 2017 г., 00:44
-- Версия сервера: 5.6.34
-- Версия PHP: 7.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `scalar`
--

-- --------------------------------------------------------

--
-- Структура таблицы `commend`
--

CREATE TABLE `commend` (
  `ID` int(11) NOT NULL,
  `USER_NAME` varchar(60) DEFAULT NULL,
  `USER_EMAIL` varchar(60) DEFAULT NULL,
  `COMMENT` text,
  `FILE` varchar(60) DEFAULT NULL,
  `IP_ADRES` varchar(60) DEFAULT NULL,
  `BROWSER` varchar(60) DEFAULT NULL,
  `DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `commend`
--

INSERT INTO `commend` (`ID`, `USER_NAME`, `USER_EMAIL`, `COMMENT`, `FILE`, `IP_ADRES`, `BROWSER`, `DATE`) VALUES
(46, 'rainhard', 'rainhard@gmail.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vel viverra lacus, eu accumsan massa. Sed imperdiet maximus vehicula. Donec egestas dolor vel sollicitudin consequat', '1509399637.jpg', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHT', '2017-10-31 00:40:37'),
(47, 'RoadHog', 'RoadHog@con.tt', 'Aliquam fringilla tempus est id pharetra. Nulla lobortis magna ac consequat dictum. Duis eleifend magna ut semper elementum.', '1509399659.jpg', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHT', '2017-10-31 00:40:59'),
(48, 'Orisa', 'Orisa@Orisa.dd', 'Nam non lacinia arcu. Integer id rhoncus odio. Curabitur nec quam efficitur, ultrices ante in, posuere nisl. Cras elementum leo non scelerisque iaculis. Pellentesque ac velit nibh. In sit amet ultrices libero. Phasellus et feugiat dui. Morbi elementum et est eget commodo.', '1509399679.jpg', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHT', '2017-10-31 00:41:19'),
(49, 'Zarja', 'Zarja@Zarja', 'Vivamus vitae iaculis nisl. Vestibulum eget efficitur augue.', '1509399705.jpg', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHT', '2017-10-31 00:41:45'),
(50, 'Mercy', 'Mercy@Mercy', 'Aenean condimentum commodo lacus. Aenean vitae semper sem. Donec pretium maximus faucibus. Nulla non porttitor leo, vel fringilla ipsum. Donec malesuada magna non tincidunt semper', '1509399730.jpg', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHT', '2017-10-31 00:42:10'),
(51, 'Lusio', 'Lusio@Lusio', 'Duis eget malesuada mauris. Donec dignissim pellentesque dolor, vel vestibulum metus facilisis vel. Donec eu enim vitae massa tristique aliquet et at diam. Maecenas vel convallis neque. In a placerat est.', '1509399770.jpg', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHT', '2017-10-31 00:42:50'),
(52, 'zeniata', 'zeniata@zeniata', 'Donec in commodo lectus. Mauris at porttitor ipsum, sit amet elementum ipsum. Nulla ac ligula vel tortor sodales ornare. Maecenas in suscipit elit. Morbi scelerisque sollicitudin aliquam', '1509399791.jpg', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHT', '2017-10-31 00:43:11'),
(53, 'Aha', 'Aha@Aha', 'Nulla vitae lectus venenatis, laoreet arcu eu, porta lectus. Praesent ut vulputate velit, non tempor sapien. Vestibulum et lorem ultricies urna ultricies lobortis eget id nisi. Nam quam massa, posuere in imperdiet ac, dignissim eu libero. Sed eu risus sed nisi dapibus auctor vitae vel tellus. Donec risus augue, egestas quis arcu id, faucibus interdum diam. Nam vel risus at lacus pretium semper. In dapibus felis nec felis tincidunt, eget pellentesque mauris tristique. Integer in ligula tellus. In hac habitasse platea dictumst. Fusce maximus cursus tempor.', '1509399830.jpg', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHT', '2017-10-31 00:43:50'),
(54, 'Genji', 'Genji@Genji', 'Morbi in enim mi. Cras vestibulum congue ligula, in finibus neque lacinia non. Suspendisse potenti. Duis eu ipsum malesuada, viverra nisl sit amet, congue arcu. Proin venenatis sed enim sed tincidunt. Donec nec felis sit amet turpis venenatis congue. Etiam porttitor consectetur condimentum.', '1509399846.jpg', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHT', '2017-10-31 00:44:06');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `commend`
--
ALTER TABLE `commend`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `commend`
--
ALTER TABLE `commend`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
