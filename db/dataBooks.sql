-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Вер 24 2024 р., 17:21
-- Версія сервера: 10.4.26-MariaDB
-- Версія PHP: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `dataBooks`
--

DROP DATABASE IF EXISTS `dataBooks`;
CREATE DATABASE `dataBooks`;

USE dataBooks;

-- --------------------------------------------------------

--
-- Структура таблиці `authors`
--

DROP TABLE IF EXISTS `authors`;
CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(1, 'Андрій Богуславський'),
(2, 'Марк Саммерфільд'),
(3, 'М. Вільямс'),
(4, 'Уес Маккінні'),
(5, 'Брюс Еккель'),
(6, 'Томас Кормен'),
(7, 'Чарльз Лейзерсон'),
(8, 'Рональд Рівест'),
(9, 'Кліффорд Штайн'),
(10, 'Девид Фленаган'),
(11, 'Гері Маклін Холл'),
(12, 'Джеймс Р. Грофф'),
(13, 'Люк Веллінг'),
(14, 'Сергей Мастицький'),
(15, 'Джон Вудкок'),
(16, 'Джереми Блум'),
(17, 'А. Бєлов'),
(18, 'Семюел Грінгард'),
(19, 'Сет Грінберг'),
(20, 'Олександр Сєраков'),
(21, 'Тім Кедлек'),
(22, 'Пол Дейтел'),
(23, 'Харві Дейтел'),
(24, 'Роберт Мартін'),
(25, 'Ентони Грей'),
(26, 'Мартін Фаулер'),
(27, 'Прамодкумар Дж. Садаладж'),
(28, 'Джей Макгаврен'),
(29, 'Дрю Нейл'),
(30, 'Майкл Мейс'),
(31, 'Річард Ерп'),
(32, 'Сіха Багуі'),
(33, 'Річард Ерп'),
(34, 'Сіха Багуі'),
(35, 'Річард Ерп'),
(36, 'Сіха Багуі'),
(37, 'Річард Ерп'),
(38, 'Сіха Багуі'),
(39, 'Річард Ерп'),
(40, 'Сіха Багуі'),
(41, 'Майкл Мейс'),
(42, 'asdasd');

-- --------------------------------------------------------

--
-- Структура таблиці `books`
--
DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `pages` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authors` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(11) DEFAULT 0,
  `clicks` int(11) DEFAULT 0,
  `deleted` int(11) DEFAULT 0,
  `removal_time` bigint(20) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `books`
--

INSERT INTO `books` (`id`, `name`, `year`, `pages`, `description`, `authors`, `image`, `views`, `clicks`, `deleted`, `removal_time`) VALUES
(1, 'Python для начинающих', 2023, 300, 'Книга для начинающих, в которой подробно рассказывается о языке программирования Python.', 'Марк Лутц', 'Python для начинающих', 1, 1, 0, 0),
(2, 'JavaScript с нуля до профи', 2022, 250, 'Книга для начинающих, в которой подробно рассказывается о языке программирования JavaScript.', 'Лоренс Ларс Свекис, Майке ван Путтен, Роб Персиваль', 'JavaScript с нуля до профи', 1, 0, 0, 0),
(3, 'Java программирование для начинающих', 2021, 350, 'Книга для начинающих, в которой подробно рассказывается о языке программирования Java.', 'Майк МакГрат', 'Java программирование для начинающих', 0, 0, 0, 0),
(4, 'C++ базовый курс', 2020, 400, 'Книга для начинающих, в которой подробно рассказывается о языке программирования C++.', 'Герберт Шилдт', 'C++ базовый курс', 0, 0, 0, 0),
(5, 'HTML и CSS. Разработка и дизайн веб-сайтов', 2019, 200, 'Эта книга – самый простой и интересный способ изучить HTML и CSS. Независимо от стоящей перед вами задачи : спроектировать и разработать веб-сайт с нуля.', 'Джошуа Дэвис', 'HTML и CSS. Разработка и дизайн веб-сайтов', 0, 0, 0, 0),
(6, 'MySQL по максимуму', 2018, 150, 'Книга для начинающих, в которой подробно рассказывается о языке запросов SQL.', 'Джереми Тинли, Сильвия Ботрос', 'MySQL по максимуму', 1, 1, 0, 0),
(7, 'Pro Git', 2017, 100, 'Книга для начинающих, в которой подробно рассказывается о системе контроля версий Git.', 'Scott Chacon', 'Pro Git', 0, 0, 0, 0),
(8, 'Linux. Командная строка. Лучшие практики', 2016, 250, 'Если вы системный администратор, разработчик программного обеспечения, SRE-инженер или пользователь Linux, книга поможет вам работать быстрее, элегантнее и эффективнее.', 'Дэниел Джей Барретт', 'Linux. Командная строка. Лучшие практики', 0, 0, 0, 0),
(9, 'Python для сетевых инженеров Автоматизация сети, программирование и DevOps.', 2023, 800, 'Книга для профессионалов, в которой подробно рассказывается о языке программирования Python.', 'Эрик Чоу', 'Python для сетевых инженеров Автоматизация сети, программирование и DevOps.', 0, 0, 0, 0),
(10, 'JavaScript для профессионалов', 2016, 240, 'Книга для профессионалов, в которой подробно рассказывается о языке программирования JavaScript.', 'Резиг Джон , Фергюсон Расс, Пакстон Джон', 'JavaScript для профессионалов', 0, 0, 0, 0),
(11, 'Основы Java', 2017, 704, 'Книга для профессионалов, в которой подробно рассказывается о языке программирования Java.', 'Николай Прохоренок', 'Основы Java', 0, 0, 0, 0),
(12, 'C++ для профи. Молниеносный старт.', 2021, 816, 'Книга адресована программистам среднего и продвинутого уровней, вы продеретесь сквозь тернии к самому ядру С++..', 'Джош Лоспинозо', 'C++ для профи. Молниеносный старт.', 0, 0, 0, 0),
(13, 'Веб-дизайн для начинающих. HTML, CSS, JavaScript и веб-графики.', 2021, 956, 'Книга поможет освоить веб-дизайн без опыта. На практических примерах показано, как создать простой сайт и постепенно его усовершенствовать.', 'Дженнифер Роббинс', 'Веб-дизайн для начинающих. HTML, CSS, JavaScript и веб-графики.', 0, 0, 0, 0),
(14, 'SQL. Коллекция рецептов.', 2022, 592, 'Рассмотрены готовые рецепты для решения практических задач при работе с СУБД Oracle, DB2, SQL Server, MySQL и PostgreSQL.', 'Энтоны Молинаро, Роберт де Грааф', 'SQL. Коллекция рецептов.', 0, 0, 0, 0),
(15, 'Изучаем SQL. Генерация, выборка и обработка данных.', 2022, 402, 'Данная книга отличается широким охватом как тем (от азов SQL до таких сложных вопросов, как аналитические функции и работа с большими базами данных), так и конкретных баз данных (MySQL, Oracle Database, SQL Server).', 'Алан Болье', 'Изучаем SQL. Генерация, выборка и обработка данных.', 0, 0, 0, 0),
(16, 'Язык программирования \"GO\".', 2022, 432, 'Книга  поможет вам познакомиться с языком Go поближе, узнать о его предназначении и преимуществах, и о том, как писать программы на этом языке (причем это будут программы не начинающего а профессионального программиста — эффективные и идеоматичные).', 'Брайан У. Керниган', 'Язык программирования GO', 0, 0, 0, 0),
(17, 'Алгоритмы. Теория и практическое применение', 2016, 544, 'Данная книга — своеобразное руководство, изложенное простым языком. Разбирается масса важнейших классических алгоритмов; рассказывается, в каких случаях и какие из них необходимо применить.', 'Род Стивенс', 'Алгоритмы. Теория и практическое применение', 0, 0, 0, 0),
(18, 'Машинное обучение', 2017, 336, 'Эта книга рассчитана на тех, кто хочет решать самые разные задачи с помощью машинного обучения.', 'Хенрик Бринк', 'Машинное обучение', 0, 0, 0, 0),
(19, 'Искусственный интеллект и компьютерное зрение.', 2023, 624, 'Практические примеры из этой книги научат вас создавать приложения глубокого обучения для облачных, мобильных и краевых (edge) систем.', 'Анирад Коул', 'Искусственный интеллект и компьютерное зрение.', 0, 0, 0, 0),
(20, 'Основы блокчейна.', 2020, 300, 'Книга подробно рассматривает технические концепции технологии блокчейн, такие как пиринговые и распределенные системы, структуры данных, транзакции, криптография и хэш-значения, целостность систем и достижение консенсуса в распределенной среде.', 'Дрешер Даниэль', 'Основы блокчейна.', 0, 0, 0, 0),
(21, 'Блокчейн. Архитектура, криптовалюты, инструменты разработки, смарт-контракты', 2019, 538, 'В книге рассмотрены теоретические и практические аспекты технологии блокчейн. Вы познакомитесь с распределенными системами, криптографией и принципами безопасного хранения данных.', 'Имран Башир', 'Блокчейн. Архитектура, криптовалюты, инструменты разработки, смарт-контракты', 1, 0, 0, 0),
(22, 'СИ++ И КОМПЬЮТЕРНАЯ ГРАФИКА', 2003, 351, 'Лекции и практикум по программированию на Си++', 'Андрей Богуславский', 'СИ++ И КОМПЬЮТЕРНАЯ ГРАФИКА', 0, 0, 0, 0),
(23, 'Программирование на языке Go!', 2010, 290, 'Лекции и практикум по программированию на Go!', 'Марк Саммерфильд', 'Программирование на языке Go!', 0, 0, 0, 0),
(24, 'Head First. Программирование для Android на Kotlin.', 2022, 912, 'Книга поможет узнаеть как структурировать приложение, создавать гибкие и интерактивные пользовательские интерфейсы, сохранять информацию в базе данных и использовать новейшие возможности Android Jetpack и Jetpack Compose.', 'Дон Гриффитс', 'Head First. Программирование для Android на Kotlin.', 0, 0, 0, 0),
(25, 'Толковый словарь сетевых терминов и аббревиатур', 2007, 410, 'Толковый словарь сетевых терминов и аббревиатур', 'М. Вильямс', 'Толковый словарь сетевых терминов и аббревиатур', 0, 0, 0, 0),
(26, 'Python for Data Analysis', 2011, 327, 'Python for Data Analysis and so on', 'Уэс Маккинни', 'Python for Data Analysis', 0, 0, 0, 0),
(27, 'Thinking in Java (4th Edition)', 2000, 378, 'Лекции и практикум по программированию на Java', 'Брюс Эккель', 'Thinking in Java (4th Edition)', 0, 0, 0, 0),
(28, 'Универсальный самоучитель Android для планшетов и смартфонов.', 2018, 800, 'Эта книга станет вашим лучшим учителем для познания всех прелестей современных мобильных устройств на основе популярной системы Android.', ' Михайлов Владимир Викторович', 'Универсальный самоучитель Android для планшетов и смартфонов.', 0, 0, 0, 0),
(29, 'Introduction to Algorithms', 2017, 900, 'Книга, в которой подробно рассказывается об алгоритмах.', 'Томас Кормен, Чарльз Лейзерсон, Рональд Ривест, Клиффорд Штайн', 'Introduction to Algorithms', 0, 0, 0, 0),
(30, 'Unity 5.x. Программирование искусственного интеллекта в играх.', 2023, 272, 'Игровой движок Unity 5 включает в себя множество инструментов, помогающих разработчикам создавать потрясающие игры, снабженные мощным искусственным интеллектом.', 'Хорхе Паласиос', 'Unity 5.x. Программирование искусственного интеллекта в играх.', 0, 0, 0, 0),
(31, 'JavaScript Pocket Reference', 2023, 500, 'Книга содержит краткое справочное руководство по языку JavaScript', 'Дэвид Флэнаган', 'JavaScript Pocket Reference', 0, 0, 0, 0),
(32, 'Adaptive Code via C#: Class and Interface Design, Design Patterns, and SOLID Principles', 2022, 400, 'Книга охватывает важнейшие принципы проектирования классов и интерфейсов, а также популярные паттерны проектирования и SOLID-принципы, помогая разработчикам создавать устойчивый и легко поддерживаемый код.', 'Гэри Маклин Холл', 'Adaptive Code', 0, 0, 0, 0),
(33, 'SQL: The Complete Reference', 2023, 700, 'Книга, в которой подробно рассказывается об архитектуре программного обеспечения.', 'Джеймс Р. Грофф', 'SQL The Complete Reference', 0, 0, 0, 0),
(34, 'PHP and MySQL Web Development', 2022, 600, 'Руководство по созданию веб-приложений с использованием PHP и MySQL.', 'Люк Веллинг', 'PHP and MySQL Web Development', 0, 0, 0, 0),
(35, 'Статистический анализ и визуализация данных с помощью R', 2013, 338, 'Учебное пособие по статистическому анализу данных с использованием языка R.', 'Сергей Мастицкий', 'Статистический анализ и визуализация данных с помощью R', 0, 0, 0, 0),
(36, 'Computer Coding for Kid', 2021, 500, 'Книга предназначена для детей от 7 до 12 лет и рассказывает про основы компьютерного программирования.', 'Джон Вудкок', 'Computer Coding for Kid', 0, 0, 0, 0),
(37, 'Exploring Arduino: Tools and Techniques for Engineering Wizardry', 2020, 400, 'Книга представляет собой популярное руководство по созданию различных проектов с использованием платформы Arduino.', 'Джереми Блум', 'Exploring Arduino Tools and Techniques for Engineering Wizardry', 0, 0, 0, 0),
(38, 'Программирование микроконтроллеров для начинающих и не только.', 2014, 364, 'Книга предназначена для широкого круга читателей, стремящихся освоить основы программирования современных микроконтроллеров, создавать полезные электронные устройства и роботы.', 'Белов А.', 'Программирование микроконтроллеров для начинающих и не только.', 0, 0, 0, 0),
(39, 'The Internet of Things', 2019, 700, 'Книга рассказывает о том, что такое Интернет вещей, как он работает и как он влияет на нашу жизнь.', 'Сэмюэл Грингард', 'The Internet of Things', 0, 0, 0, 0),
(40, 'Sketching User Experiences: The Workbook.', 2018, 800, 'Книга не просто учит рисовать, а предлагает практические упражнения и техники, позволяющие эффективно визуализировать и обдумывать идеи, связанные с интерфейсами и взаимодействием с ними.', 'Сет Гринберг', 'Sketching User Experiences The Workbook.', 0, 0, 0, 0),
(41, 'InDesign CS6.', 2017, 900, 'Руководство по использованию программы Adobe InDesign CS6, которая является профессиональным настольным издательским приложением', 'Александр Сераков', 'InDesign CS6.', 0, 0, 0, 0),
(42, 'Адаптивный дизайн. Делаем сайты для любых устройств.', 2015, 293, 'Книга рассказывает о том, как создавать веб-сайты, которые будут выглядеть и работать хорошо на любых устройствах, от настольных компьютеров и ноутбуков до смартфонов и планшетов.', 'Тим Кедлек', 'Адаптивный дизайн. Делаем сайты для любых устройств.', 0, 0, 0, 0),
(43, 'Android для разработчиков.', 2019, 315, 'Разработка для Android устройств.', 'Пол Дэйтел, Харви Дейтел', 'Android для разработчиков.', 0, 0, 0, 0),
(44, 'Clean Code: A Handbook of Agile Software Craftsmanship.', 2016, 1000, 'Книга посвящена принципам и практикам написания высококачественного кода.', 'Роберт Мартин', 'Clean Code A Handbook of Agile Software Craftsmanship.', 0, 0, 0, 0),
(45, 'Swift Pocket Reference: Programming for iOS and OS X.', 2023, 800, 'Книга-справочник по языку программирования Swift, ориентированный на разработчиков приложений для iOS и OS X. Она предназначена для тех, кто уже знаком с основами Swift и нуждается в быстром и удобном способе найти информацию по конкретным темам.', 'Энтони Грей', 'Swift Pocket Reference Programming for iOS and OS X.', 0, 0, 0, 0),
(46, 'NoSQL Distilled: A Brief Guide to the Emerging World of Polyglot Persistence.', 2022, 750, 'Книга  посвящена теме NoSQL-баз данных и их применении в современном мире разработки программного обеспечения.', 'Мартин Фаулер, Прамодкумар Дж. Садаладж', 'NoSQL Distilled A Brief Guide to the Emerging World of Polyglot Persistence.', 0, 0, 0, 0),
(47, 'Head First Ruby.', 2021, 600, 'Руководство по изучению языка программирования Ruby. Она написана в стиле \"Head First\" - это означает, что она использует визуальные элементы и интерактивные упражнения для обучения.', 'Джей Макгаврен', 'Head First Ruby.', 0, 0, 0, 0),
(48, 'Practical Vim.', 2020, 500, 'Руководство по использованию текстового редактора Vim. Она написана опытным пользователем Vim и автором нескольких книг по Vim.', 'Дрю Нейл', 'Practical Vim.', 0, 0, 0, 0),
(49, 'Python. Разработка на основе тестирования.', 2018, 622, 'Книга демонстрирует преимущества методологии разработки на основе тестирования (TDD) с использованием языка Python.', 'Персиваль Г.', 'Python. Разработка на основе тестирования.', 0, 0, 1, 1708452361211);

-- --------------------------------------------------------

--
-- Структура таблиці `books-authors`
--

DROP TABLE IF EXISTS `books-authors`;
CREATE TABLE `books-authors` (
  `idBook` int(11) NOT NULL,
  `IdAuthor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `books-authors`
--

INSERT INTO `books-authors` (`idBook`, `IdAuthor`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(6, 7),
(6, 8),
(6, 9),
(7, 10),
(8, 11),
(9, 12),
(10, 13),
(11, 14),
(12, 15),
(13, 16),
(14, 17),
(15, 18),
(16, 19),
(17, 20),
(18, 21),
(19, 22),
(19, 23),
(20, 24),
(21, 25),
(22, 26),
(22, 27),
(23, 28),
(24, 29),
(25, 39),
(25, 40),
(26, 41);

-- --------------------------------------------------------

--
-- Структура таблиці `booksV2`
--

DROP TABLE IF EXISTS `booksV2`;
CREATE TABLE `booksV2` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `year` int(11) NOT NULL,
  `pages` int(11) NOT NULL,
  `clicks` int(11) DEFAULT 0,
  `views` int(11) DEFAULT 0,
  `date` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `booksV2`
--

INSERT INTO `booksV2` (`id`, `title`, `description`, `year`, `pages`, `clicks`, `views`, `date`, `deleted`) VALUES
(1, 'СИ++ И КОМПЬЮТЕРНАЯ ГРАФИКА', 'Лекции и практикум по программированию на Си++', 2003, 200, 6, 3, 20231222, 0),
(2, 'Программирование на языке Go!', 'Лекції и практимум мовою Go', 2001, 300, 1, 2, 20231222, 0),
(3, 'Толковый словарь сетевых терминов и аббревиатур', 'Словар термінів і абревіатур', 2005, 100, 0, 1, 20231222, 0),
(4, 'Python for Data Analysis', 'Глибоке пізнання пайтону для аналітики', 2010, 250, 9, 9, 20231223, 0),
(5, 'Thinking in Java (4th Edition)', 'Логіка в Java', 2009, 310, 0, 1, 20231223, 0),
(6, 'Introduction to Algorithms', 'Вступ до алгоритмів', 2005, 150, 1, 1, 20231223, 0),
(7, 'JavaScript Pocket Reference', 'Короткий довідник з Javascript', 2012, 120, 0, 0, 20231225, 0),
(8, 'Adaptive Code via C#: Class and Interface Design, Design Patterns, and SOLID Principles', 'ООП С#', 2013, 520, 0, 0, 20231225, 0),
(9, 'SQL: The Complete Reference', 'Вивчення SQL', 2014, 220, 0, 1, 20231226, 0),
(10, 'PHP and MySQL Web Development', 'Вивчення SQL з PHP', 2015, 430, 3, 2, 20231227, 0),
(11, 'Статистический анализ и визуализация данных с помощью R', 'Аналіз даних за допомогою R', 2007, 230, 0, 0, 20231228, 0),
(12, 'Computer Coding for Kid', 'Посібник з кодування для дітей', 2016, 380, 1, 3, 20231230, 0),
(13, 'Exploring Arduino: Tools and Techniques for Engineering Wizardry', 'Tools and Techniques for Engineering Wizardry', 2010, 180, 0, 0, 20231230, 0),
(14, 'Програмування мікроконтроллеров для початківців і не тільки', 'Програмування фізичних пристроїв', 2005, 680, 0, 0, 20231231, 0),
(15, 'The Internet of Things', 'Поняття інтернету', 2008, 280, 0, 0, 20231231, 0),
(16, 'Sketching User Experiences: The Workbook', 'Sketching User Experiences', 2009, 240, 1, 0, 20231231, 0),
(17, 'InDesign CS6', 'Дизайн CS6', 2012, 440, 0, 0, 20240102, 0),
(18, 'Адаптивный дизайн. Делаем сайты для любых устройств', 'Адаптивний дизайн для сайтів', 2014, 460, 0, 0, 20240102, 0),
(19, 'Android для розробників', 'Розуміння андроїду для розробників', 2018, 32, 0, 0, 20240104, 0),
(20, 'Clean Code: A Handbook of Agile Software Craftsman', 'Поняття чистого та гарного коду', 2017, 216, 0, 0, 20240109, 0),
(21, 'Swift Pocket Reference: Programming for iOS and OS', 'Програмування на IOS та OS X', 2019, 419, 1, 1, 20240110, 0),
(22, 'NoSQL Distilled: A Brief Guide to the Emerging Work', 'Поняття NoSQL', 2015, 258, 1, 4, 20240111, 0),
(23, 'Head First Ruby', 'Вступ до Ruby', 2013, 313, 2, 2, 20240114, 0),
(24, 'Practical Vim', 'Практикування Vim', 2011, 336, 2, 2, 20240120, 0),
(25, 'Essential SQL on SQL Server', 'This book, written for readers who have little or no previous experience with databases, SQL, or SQL Server, provides a very systematic approach to learning SQL using SQL Server. Each chapter is written in a step-by-step manner and has examples that can be run using SQL Server. Using the sample tables and data provided, the reader of this book will be able to do all the examples to experience hands-on SQL programming in SQL Server. The book also presents a series of exercises at the end of the chapters to help readers gain proficiency with SQL. With this book you will learn beginning SQL commands - how to retrieve and manipulate data using the simple SELECT statement; how to customize SQL Server 2008\'s settings and about SQL Server 2008\'s functions; how to create, alter, populate and delete tables; about joins, a common database mechanism for combining tables; query development, the use of views and other derived structures; simple set operations; about aggregate functions; how to write subqueries and correlated subqueries; how to create and use indexes and constraints; transaction processing.', 2009, 394, 1, 1, 20240130, 0),
(26, 'Math Hacks For Scratch', 'Push Scratch programming to the limits as you explore primes, Fibonacci numbers, Pascal’s triangle, and other mathematical curiosities through hands-on coding projects.\nIf you’re a student looking for project ideas to practice your math and coding skills, or a Scratch enthusiast just looking for something different, this is the book for you!\n\nScratch is mainly used to learn programming and design computer games, but it has plenty of other useful applications—like solving math problems. This book reveals the block-based coding system’s mathematical superpowers, guiding you through over 20 hands-on projects that investigate a variety of interesting numerical puzzles. You’ll quickly find that core math concepts, like number representations, divisibility, and cryptography, are fun to code using Scratch. \n\nIn addition to learning how to hack Scratch to get it to work with numbers in unusual ways, you’ll discover efficient algorithms for making time-consuming computations a snap. Along the way, you\'ll see how the right mathematical or programming trick can simplify a seemingly complex task, as you think through bonus coding challenges that further promote independent experimentation while improving both your math and programming skills.', 2024, 200, 1, 1, 20240130, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `book_authors`
--

DROP TABLE IF EXISTS `book-authors`;
CREATE TABLE `book_authors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `book_authors`
--

INSERT INTO `book_authors` (`id`, `name`) VALUES
(10, 'Scott Chacon'),
(21, 'Алан Болье'),
(50, 'Александр Сераков'),
(28, 'Андрей Богуславский'),
(25, 'Анирад Коул'),
(47, 'Белов А.'),
(22, 'Брайан У. Керниган'),
(33, 'Брюс Эккель'),
(6, 'Герберт Шилдт'),
(41, 'Гэри Маклин Холл'),
(58, 'Джей Макгаврен'),
(42, 'Джеймс Р. Грофф'),
(18, 'Дженнифер Роббинс'),
(46, 'Джереми Блум'),
(9, 'Джереми Тинли'),
(45, 'Джон Вудкок'),
(17, 'Джош Лоспинозо'),
(7, 'Джошуа Дэвис'),
(30, 'Дон Гриффитс'),
(26, 'Дрешер Даниэль'),
(59, 'Дрю Нейл'),
(40, 'Дэвид Флэнаган'),
(11, 'Дэниел Джей Барретт'),
(27, 'Имран Башир'),
(35, 'Клиффорд Штайн'),
(2, 'Лоренс Ларс Свекис'),
(43, 'Люк Веллинг'),
(31, 'М. Вильямс'),
(5, 'Майк МакГрат'),
(3, 'Майке ван Путтен'),
(1, 'Марк Лутц'),
(29, 'Марк Саммерфильд'),
(57, 'Мартин Фаулер'),
(34, 'Михайлов Владимир Викторович'),
(16, 'Николай Прохоренок'),
(13, 'Пакстон Джон'),
(60, 'Персиваль Г.'),
(53, 'Пол Дэйтел'),
(56, 'Прамодкумар Дж. Садаладж'),
(15, 'Резиг Джон'),
(4, 'Роб Персиваль'),
(19, 'Роберт де Грааф'),
(54, 'Роберт Мартин'),
(23, 'Род Стивенс'),
(36, 'Рональд Ривест'),
(44, 'Сергей Мастицкий'),
(49, 'Сет Гринберг'),
(8, 'Сильвия Ботрос'),
(48, 'Сэмюэл Грингард'),
(51, 'Тим Кедлек'),
(38, 'Томас Кормен'),
(32, 'Уэс Маккинни'),
(14, 'Фергюсон Расс'),
(52, 'Харви Дейтел'),
(24, 'Хенрик Бринк'),
(39, 'Хорхе Паласиос'),
(37, 'Чарльз Лейзерсон'),
(55, 'Энтони Грей'),
(20, 'Энтоны Молинаро'),
(12, 'Эрик Чоу');

-- --------------------------------------------------------

--
-- Структура таблиці `connections`
--

DROP TABLE IF EXISTS `connections`;
CREATE TABLE `connections` (
  `bookId` int(11) NOT NULL,
  `authorId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `connections`
--

INSERT INTO `connections` (`bookId`, `authorId`) VALUES
(1, 1),
(2, 2),
(2, 3),
(2, 4),
(3, 5),
(4, 6),
(5, 7),
(6, 8),
(6, 9),
(7, 10),
(8, 11),
(9, 12),
(10, 13),
(10, 14),
(10, 15),
(11, 16),
(12, 17),
(13, 18),
(14, 19),
(14, 20),
(15, 21),
(16, 22),
(17, 23),
(18, 24),
(19, 25),
(20, 26),
(21, 27),
(22, 28),
(23, 29),
(24, 30),
(25, 31),
(26, 32),
(27, 33),
(28, 34),
(29, 35),
(29, 36),
(29, 37),
(29, 38),
(30, 39),
(31, 40),
(32, 41),
(33, 42),
(34, 43),
(35, 44),
(36, 45),
(37, 46),
(38, 47),
(39, 48),
(40, 49),
(41, 50),
(42, 51),
(43, 52),
(43, 53),
(44, 54),
(45, 55),
(46, 56),
(46, 57),
(47, 58),
(48, 59),
(49, 60);

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `booksV2`
--
ALTER TABLE `booksV2`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `book_authors`
--
ALTER TABLE `book_authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Індекси таблиці `connections`
--
ALTER TABLE `connections`
  ADD PRIMARY KEY (`bookId`,`authorId`),
  ADD KEY `authorId` (`authorId`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT для таблиці `book_authors`
--
ALTER TABLE `book_authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `connections`
--
ALTER TABLE `connections`
  ADD CONSTRAINT `connections_ibfk_1` FOREIGN KEY (`bookId`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `connections_ibfk_2` FOREIGN KEY (`authorId`) REFERENCES `book_authors` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
