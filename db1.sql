-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Мар 01 2018 г., 14:42
-- Версия сервера: 5.6.37
-- Версия PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `db1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Customers`
--

CREATE TABLE IF NOT EXISTS `Customers` (
  `cnum` smallint(6) unsigned NOT NULL COMMENT 'Уникальный номер назначенный каждому заказчику',
  `cname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Имя заказчика',
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Расположение заказчика (город)',
  `rating` smallint(5) unsigned DEFAULT NULL COMMENT 'Код, указывающий уровень предпочтения данного заказчика перед другими. Более высокий номер указывают на большее предпочтение (рейтинг).',
  `snum` smallint(6) NOT NULL COMMENT 'Номер продавца, назначенного этому заказчику (из таблицы Продавцов)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Customers`
--

INSERT INTO `Customers` (`cnum`, `cname`, `city`, `rating`, `snum`) VALUES
(2001, 'Hoffman', 'London', 100, 1001),
(2002, 'Giovanni', 'Rome', 200, 1003),
(2003, 'Liu', 'San Jose', 200, 1002),
(2004, 'Grass', 'Berlin', 300, 1002),
(2006, 'Clemens', 'London', 100, 1001),
(2007, 'Pereira', 'Rome', 100, 1004),
(2008, 'Cisneros', 'San Jose', 300, 1007),
(2009, 'Anatolij', 'Kaliningrad', NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `Orders`
--

CREATE TABLE IF NOT EXISTS `Orders` (
  `onum` smallint(6) NOT NULL COMMENT 'уникальный номер данный каждому приобретению',
  `amt` decimal(10,2) NOT NULL COMMENT 'значение суммы приобретений',
  `odate` date NOT NULL COMMENT 'дата приобретения',
  `cnum` smallint(6) NOT NULL COMMENT 'номер заказчика делающего приобретение (из таблицы Заказчиков)',
  `snum` smallint(6) NOT NULL COMMENT 'номер продавца продающего приобретение (из таблицы Продавцов)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Orders`
--

INSERT INTO `Orders` (`onum`, `amt`, `odate`, `cnum`, `snum`) VALUES
(3001, '18.69', '1990-03-10', 2008, 1007),
(3003, '767.19', '1990-03-10', 2001, 1001),
(3002, '1900.10', '1990-03-10', 2007, 1004),
(3005, '5160.45', '1990-03-10', 2003, 1002),
(3006, '1098.16', '1990-03-10', 2008, 1007),
(3009, '1713.23', '1990-03-10', 2002, 1003),
(3007, '75.75', '1990-04-10', 2004, 1002),
(3008, '4723.00', '1990-05-10', 2006, 1001),
(3010, '1309.95', '1990-06-10', 2004, 1002),
(3011, '9891.88', '1990-06-10', 2006, 1001);

-- --------------------------------------------------------

--
-- Структура таблицы `Salespeople`
--

CREATE TABLE IF NOT EXISTS `Salespeople` (
  `snum` smallint(6) unsigned NOT NULL COMMENT 'уникальный номер, назначенный каждому продавцу ("номер служащего")',
  `sname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'имя продавца',
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'расположение продавца (город)',
  `comm` decimal(2,2) NOT NULL COMMENT 'комиссионные продавцов в десятичной форме'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `Salespeople`
--

INSERT INTO `Salespeople` (`snum`, `sname`, `city`, `comm`) VALUES
(1001, 'Peel', 'London', '0.12'),
(1002, 'Serres', 'San Jose', '0.13'),
(1004, 'Motika', 'London', '0.11'),
(1007, 'Rifkin', 'Barcelona', '0.15'),
(1003, 'Axelrod', 'New York', '0.10');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Customers`
--
ALTER TABLE `Customers`
  ADD PRIMARY KEY (`cnum`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
