-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 16 2022 г., 04:39
-- Версия сервера: 5.7.19-log
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `portal`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Шиномонтаж'),
(2, 'Автосервис');

-- --------------------------------------------------------

--
-- Структура таблицы `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `status`
--

INSERT INTO `status` (`id`, `name`) VALUES
(1, 'Новая'),
(2, 'В работе');

-- --------------------------------------------------------

--
-- Структура таблицы `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL,
  `id_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `task`
--

INSERT INTO `task` (`id`, `id_user`, `id_category`, `name`, `description`, `link_photo`, `date`, `id_status`) VALUES
(13, 64, 1, 'ввввв', 'ааааааа', 'photos/Chrysanthemum.jpg', '2022-02-07 14:00:00', 1),
(14, 64, 1, 'ввввв', 'ааааааа', 'photos/Chrysanthemum.jpg', '2022-02-07 14:00:00', 1),
(19, 64, 1, 'Tect', 'stae', 'photos/Koala.jpg', '2021-12-31 14:00:00', 1),
(20, 64, 1, 'Tect', 'stae', 'photos/Koala.jpg', '2021-12-31 14:00:00', 1),
(21, 64, 1, 'Tect', 'stae', 'photos/Koala.jpg', '2021-12-31 14:00:00', 1),
(22, 64, 1, 'Tect', 'stae', 'photos/Koala.jpg', '2021-12-31 14:00:00', 1),
(23, 64, 1, 'Путин', 'купил Пентхаус', 'img/Lighthouse.jpg', '2022-02-15 17:51:41', 1),
(24, 64, 1, 'Дима', 'купил Пентхаус', 'img/Hydrangeas.jpg', '2022-02-15 18:14:52', 1),
(25, 64, 2, 'вввв', 'БББ', 'img/Hydrangeas.jpg', '2022-02-15 18:24:04', 1),
(26, 64, 2, 'вввв', 'БББ', 'img/Hydrangeas.jpg', '2022-02-15 18:33:30', 1),
(27, 64, 2, 'вввв', 'БББ', 'img/Hydrangeas.jpg', '2022-02-15 18:33:52', 1),
(28, 64, 2, 'вввв', 'БББ', 'img/Hydrangeas.jpg', '2022-02-15 18:34:45', 1),
(29, 64, 2, 'вввв', 'БББ', 'img/Hydrangeas.jpg', '2022-02-15 18:35:38', 1),
(30, 64, 1, 'кк', 'кк', 'img/Hydrangeas.jpg', '2022-02-15 18:35:47', 1),
(31, 64, 1, 'кк', 'кк', 'img/Hydrangeas.jpg', '2022-02-15 18:36:10', 1),
(32, 64, 1, 'кк', 'кк', 'img/Hydrangeas.jpg', '2022-02-15 18:37:12', 1),
(33, 64, 1, 'кк', 'кк', 'img/Hydrangeas.jpg', '2022-02-15 18:37:32', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secondname` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `secondname`, `login`, `password`, `email`) VALUES
(60, 'Дима', 'Олегович', 'Аделаида', 'еппп', 'ппп', '11@11'),
(61, 'Соня', 'Виктеева', 'Деревеева', 'sona', '123', 'mail@mail.ail'),
(63, 'Мать', 'Отец', 'Сын', 'Бог', '', ''),
(64, '1', '2', '3', '4', '5', '7'),
(65, '9', '8', '7', '6', '5', '3'),
(66, 'Дима', 'Виктеева', 'Деревеева', '1', '1', '1'),
(67, '453', '45', '45', '45', '45', '45'),
(71, 'Дима', 'Олегович', 'Деревеева', 'sona1', '12', 'mail@mail.ail'),
(73, 'Дима', 'Олегович', 'Деревеева', '111', '12', 'mail@mail.ail'),
(78, 'Дима', 'Олегович', '- - - - а', 'одноклассница', '12', 'mail@mail.ail'),
(79, 'Дима', 'Олегович', 'Деревеева', 'ckieverentineas', '1', 'mail@mail.ail'),
(88, 'Дима', 'Олегович', 'Деревеева', 'ckieverentineas1', '11', 'mail@mail.ail'),
(90, 'Соня', 'Виктеева', 'Деревеева', 'fddsss', '1', 'mail@mail.ail');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `id_status` (`id_status`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `task_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `task_ibfk_2` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `task_ibfk_3` FOREIGN KEY (`id_status`) REFERENCES `status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
