-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Фев 23 2019 г., 11:17
-- Версия сервера: 10.1.37-MariaDB
-- Версия PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `landing`
--

-- --------------------------------------------------------

--
-- Структура таблицы `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `type`, `created_at`) VALUES
(2, 'h', 'h', 'h', 'h', '2019-01-19 15:31:02'),
(3, 'name', 'email', 'phone', 'type', '2019-01-22 09:49:00'),
(4, 'name', 'email', 'phone', 'type', '2019-01-22 09:52:27'),
(5, 'name', 'email', 'phone', 'type', '2019-01-22 09:52:50'),
(6, 'name', 'email', 'phone', 'type', '2019-01-22 09:53:36'),
(7, '', '', '', '', '2019-02-15 20:44:08'),
(8, '', '', '', '', '2019-02-15 20:45:19'),
(9, '', '', '', '', '2019-02-15 20:49:11'),
(10, '', '', '', '', '2019-02-15 20:52:12'),
(11, 'imya', 'imya56@gmail.com', '0547583548', 'basic', '2019-02-15 20:57:45'),
(12, 'imya', 'imya56@gmail.com', '0547583548', 'business', '2019-02-21 16:53:18'),
(13, 'imya', 'imya56@gmail.com', '0547583548', 'business', '2019-02-21 16:58:27'),
(14, 'imya', 'imya56@gmail.com', '0547583548', 'business', '2019-02-21 17:51:49'),
(15, 'imya', 'imya56@gmail.com', '0547583548', 'business', '2019-02-21 18:07:06'),
(16, 'imya', 'imya56@gmail.com', '0547583548', 'business', '2019-02-21 18:10:01');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
