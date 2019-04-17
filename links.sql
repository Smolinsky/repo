-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Квт 16 2019 р., 03:54
-- Версія сервера: 5.6.34
-- Версія PHP: 5.6.29
  
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `links`
--

-- --------------------------------------------------------

--
-- Структура таблиці `country`
--

CREATE TABLE `country` (
  `id` int(3) NOT NULL,
  `name_ru` varchar(999) NOT NULL,
  `name_en` varchar(999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `country`
--

INSERT INTO `country` (`id`, `name_ru`, `name_en`) VALUES
(1, 'Австралия', 'Australia'),
(2, 'Малайзия', 'Malaysia'),
(3, 'Республика Корея', 'Korea'),
(4, 'Китай', 'China'),
(5, 'Япония', 'Japan'),
(6, 'Индия', 'India'),
(7, 'Тайвань', 'Taiwan'),
(8, 'Гонконг', 'Hong Kong'),
(9, 'Таиланд', 'Thailand'),
(11, 'Вьетнам', 'Vietnam'),
(12, 'Франция', 'France'),
(13, 'Италия', 'Italy'),
(14, 'Объединенные Арабские Эмираты', 'United Arab Emirates'),
(15, 'Швеция', 'Sweden'),
(16, 'Казахстан', 'Kazakhstan'),
(17, 'Португалия', 'Portugal'),
(18, 'Греция', 'Greece'),
(19, 'Саудовская Аравия', 'Saudi Arabia'),
(20, 'Российская Федерация', 'Russian Federation'),
(21, 'Великобритания', 'United Kingdom'),
(22, 'Дания', 'Denmark'),
(23, 'США', 'United States'),
(24, 'Канада', 'Canada'),
(25, 'Мексика', 'Mexico'),
(26, 'Бермуды', 'Bermuda'),
(27, 'Пуэрто Рико', 'Puerto Rico'),
(28, 'Виргинские Острова США', 'Virgin Islands, U.S.'),
(29, 'Германия', 'Germany'),
(30, 'Иран', 'Iran'),
(31, 'Боливия', 'Bolivia'),
(32, 'Монтсеррат', 'Montserrat'),
(33, 'Нидерланды', 'Netherlands'),
(34, 'Израиль', 'Israel'),
(35, 'Испания', 'Spain'),
(36, 'Багамские острова', 'Bahamas'),
(37, 'Сент-Винсент и Гренадины', 'Saint Vincent and the Grenadines'),
(38, 'Чили', 'Chile'),
(39, 'Новая Каледония', 'New Caledonia'),
(40, 'Аргентина', 'Argentina'),
(41, 'Доминика', 'Dominica'),
(42, 'Сингапур', 'Singapore'),
(43, 'Непал', 'Nepal'),
(44, 'Филиппины', 'Philippines'),
(45, 'Индонезия', 'Indonesia'),
(46, 'Пакистан', 'Pakistan'),
(47, 'Токелау', 'Tokelau'),
(48, 'Новая Зеландия', 'New Zealand'),
(49, 'Камбоджа', 'Cambodia'),
(50, 'Макау', 'Macau'),
(51, 'Папуа Новая Гвинея', 'Papua New Guinea'),
(52, 'Мальдивские острова', 'Maldives'),
(53, 'Афганистан', 'Afghanistan'),
(54, 'Бангладеш', 'Bangladesh'),
(55, 'Ирландия', 'Ireland'),
(56, 'Бельгия', 'Belgium'),
(57, 'Белиз', 'Belize'),
(58, 'Бразилия', 'Brazil'),
(59, 'Швейцария', 'Switzerland'),
(60, 'Южно-Африканская Республика', 'South Africa'),
(61, 'Египет', 'Egypt'),
(62, 'Нигерия', 'Nigeria'),
(63, 'Танзания', 'Tanzania'),
(64, 'Замбия', 'Zambia'),
(65, 'Сенегал', 'Senegal'),
(66, 'Гана', 'Ghana'),
(67, 'Судан', 'Sudan'),
(68, 'Камерун', 'Cameroon'),
(69, 'Малави', 'Malawi'),
(70, 'Ангола', 'Angola'),
(71, 'Кения', 'Kenya'),
(72, 'Габон', 'Gabon'),
(73, 'Мали', 'Mali'),
(74, 'Бенин', 'Benin'),
(75, 'Мадагаскар', 'Madagascar'),
(76, 'Чад', 'Chad'),
(77, 'Ботсвана', 'Botswana'),
(78, 'Ливия', 'Libya'),
(79, 'Кабо-Верде', 'Cape Verde'),
(80, 'Руанда', 'Rwanda'),
(81, 'Мозамбик', 'Mozambique'),
(82, 'Гамбия', 'Gambia'),
(83, 'Лесото', 'Lesotho'),
(84, 'Маврикий', 'Mauritius'),
(85, 'Конго', 'Congo'),
(86, 'Уганда', 'Uganda'),
(87, 'Буркина Фасо', 'Burkina Faso'),
(88, 'Сьерра-Леоне', 'Sierra Leone'),
(89, 'Сомали', 'Somalia'),
(90, 'Зимбабве', 'Zimbabwe'),
(91, 'Демократическая Республика Конго', 'Democratic Republic Of The Congo'),
(92, 'Нигер', 'Niger'),
(93, 'Центрально-Африканская Республика', 'Central African Republic'),
(94, 'Свазиленд', 'Swaziland'),
(95, 'Того', 'Togo'),
(96, 'Гвинея', 'Guinea'),
(97, 'Либерия', 'Liberia'),
(98, 'Сейшеллы', 'Seychelles'),
(99, 'Марокко', 'Morocco'),
(100, 'Алжир', 'Algeria'),
(101, 'Мавритания', 'Mauritania'),
(102, 'Намибия', 'Namibia'),
(103, 'Джибути', 'Djibouti'),
(105, 'Коморские острова', 'Comoros'),
(106, 'Реюньон', 'Reunion'),
(107, 'Экваториальная Гвинея', 'Equatorial Guinea'),
(108, 'Тунис', 'Tunisia'),
(109, 'Турция', 'Turkey'),
(110, 'Польша', 'Poland'),
(111, 'Латвия', 'Latvia'),
(112, 'Украина', 'Ukraine'),
(113, 'Беларусь', 'Belarus'),
(114, 'Чехия', 'Czech Republic'),
(115, 'Палестина', 'Palestinian Territory'),
(116, 'Исландия', 'Iceland'),
(117, 'Кипр', 'Cyprus'),
(118, 'Венгрия', 'Hungary'),
(119, 'Словакия', 'Slovakia'),
(120, 'Сербия', 'Serbia'),
(121, 'Болгария', 'Bulgaria'),
(122, 'Оман', 'Oman'),
(123, 'Румыния', 'Romania'),
(124, 'Грузия', 'Georgia'),
(125, 'Норвегия', 'Norway'),
(126, 'Армения', 'Armenia'),
(127, 'Австрия', 'Austria'),
(128, 'Албания', 'Albania'),
(129, 'Словения', 'Slovenia'),
(130, 'Панама', 'Panama'),
(131, 'Бруней', 'Brunei Darussalam'),
(132, 'Шри-Ланка', 'Sri Lanka'),
(133, 'Черногория', 'Montenegro'),
(134, 'Европейский Союз', 'Europe'),
(135, 'Таджикистан', 'Tajikistan'),
(136, 'Ирак', 'Iraq'),
(137, 'Ливан', 'Lebanon'),
(138, 'Молдова', 'Moldova'),
(139, 'Финляндия', 'Finland'),
(140, 'Эстония', 'Estonia'),
(141, 'Босния и Герцеговина', 'Bosnia and Herzegovina'),
(142, 'Кувейт', 'Kuwait'),
(143, 'Аландские острова', 'Aland Islands'),
(144, 'Литва', 'Lithuania'),
(145, 'Люксембург', 'Luxembourg'),
(146, 'Антигуа и Барбуда', 'Antigua and Barbuda'),
(147, 'Македония', 'Macedonia'),
(148, 'Сан-Марино', 'San Marino'),
(149, 'Мальта', 'Malta'),
(150, 'Фолклендские острова', 'Falkland Islands'),
(151, 'Бахрейн', 'Bahrain'),
(152, 'Узбекистан', 'Uzbekistan'),
(153, 'Азербайджан', 'Azerbaijan'),
(154, 'Монако', 'Monaco'),
(155, 'Гаити', 'Haiti'),
(156, 'Гуам', 'Guam'),
(157, 'Ямайка', 'Jamaica'),
(158, 'Внешние малые острова США', 'United States Minor Outlying Islands'),
(159, 'Микронезия', 'Micronesia'),
(160, 'Эквадор', 'Ecuador'),
(161, 'Перу', 'Peru'),
(162, 'Каймановы острова', 'Cayman Islands'),
(163, 'Колумбия', 'Colombia'),
(164, 'Гондурас', 'Honduras'),
(165, 'Антильские острова', 'Netherlands Antilles'),
(166, 'Йемен', 'Yemen'),
(167, 'Британские Виргинские острова', 'Virgin Islands, British'),
(168, 'Сирия', 'Syria'),
(169, 'Никарагуа', 'Nicaragua'),
(170, 'Доминиканская республика', 'Dominican Republic'),
(171, 'Гренада', 'Grenada'),
(172, 'Гватемала', 'Guatemala'),
(173, 'Коста-Рика', 'Costa Rica'),
(174, 'Сальвадор', 'El Salvador'),
(175, 'Венесуэла', 'Venezuela'),
(176, 'Барбадос', 'Barbados'),
(177, 'Тринидад и Тобаго', 'Trinidad and Tobago'),
(178, 'Буве', 'Bouvet Island'),
(179, 'Маршалловы острова', 'Marshall Islands'),
(180, 'Острова Кука', 'Cook Islands'),
(181, 'Гибралтар', 'Gibraltar'),
(182, 'Парагвай', 'Paraguay'),
(247, 'Южный Судан', 'South Sudan'),
(184, 'Самоа', 'Samoa'),
(185, 'Сент Китс и Невис', 'Saint Kitts and Nevis'),
(186, 'Фиджи', 'Fiji'),
(187, 'Уругвай', 'Uruguay'),
(188, 'Северные Марианские острова', 'Northern Mariana Islands'),
(189, 'Палау', 'Palau'),
(190, 'Катар', 'Qatar'),
(191, 'Иордания', 'Jordan'),
(192, 'Американское Самоа', 'American Samoa'),
(193, 'Туркс и Кейкос', 'Turks and Caicos Islands'),
(194, 'Святая Люсия', 'Saint Lucia'),
(195, 'Монголия', 'Mongolia'),
(196, 'Ватикан', 'Holy See'),
(197, 'Арулько', 'Aruba'),
(198, 'Гайана', 'Guyana'),
(199, 'Суринам', 'Suriname'),
(200, 'Остров Мэн', 'Isle of Man'),
(201, 'Вануату', 'Vanuatu'),
(202, 'Хорватия', 'Croatia'),
(203, 'Ангуилья', 'Anguilla'),
(204, 'Сен-Пьер и Микелон', 'Saint Pierre and Miquelon'),
(205, 'Гваделупа', 'Guadeloupe'),
(206, 'Сен-Мартен', 'Saint Martin'),
(207, 'Гернси', 'Guernsey'),
(208, 'Бурунди', 'Burundi'),
(209, 'Туркменистан', 'Turkmenistan'),
(210, 'Кыргызстан', 'Kyrgyzstan'),
(211, 'Мьянма', 'Myanmar'),
(212, 'Бутан', 'Bhutan'),
(213, 'Лихтенштейн', 'Liechtenstein'),
(214, 'Фарерские острова', 'Faroe Islands'),
(215, 'Эфиопия', 'Ethiopia'),
(216, 'Мартиника', 'Martinique'),
(217, 'Джерси', 'Jersey'),
(218, 'Андорра', 'Andorra'),
(219, 'Антарктида', 'Antarctica'),
(220, 'Британская территория в Индийском океане', 'British Indian Ocean Territory'),
(221, 'Гренландия', 'Greenland'),
(222, 'Гвинея-Бисау', 'Guinea-Bissau'),
(223, 'Эритрея', 'Eritrea'),
(224, 'Уоллис и Футуна', 'Wallis and Futuna'),
(225, 'Французская Полинезия', 'French Polynesia'),
(226, 'Куба', 'Cuba'),
(227, 'Тонга', 'Tonga'),
(228, 'Восточный Тимор', 'Timor-Leste'),
(229, 'Сан-Томе и Принсипи', 'Sao Tome and Principe'),
(230, 'Французская Гвинея', 'French Guiana'),
(231, 'Соломоновы острова', 'Solomon Islands'),
(232, 'Тувалу', 'Tuvalu'),
(233, 'Кирибати', 'Kiribati'),
(234, 'Ниуэ', 'Niue'),
(235, 'Норфолк', 'Norfolk Island'),
(236, 'Науру', 'Nauru'),
(237, 'Майотта', 'Mayotte'),
(238, 'Питкэрн', 'Pitcairn Islands'),
(239, 'Кот-д\'Ивуар', 'Cote D\'Ivoire'),
(240, 'Лаос', 'Lao'),
(241, 'Корейская Народно-Демократическая Республика', 'Democratic People\'s Republic of Korea'),
(242, 'Свальбард и Ян-Майен', 'Svalbard and Jan Mayen'),
(243, 'Остров Святой Елены', 'Saint Helena'),
(244, 'Кокосовые острова', 'Cocos (Keeling) Islands'),
(245, 'Западная Сахара', 'Western Sahara');

-- --------------------------------------------------------

--
-- Структура таблиці `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп даних таблиці `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2019_04_15_222604_create_users_table', 3);

-- --------------------------------------------------------

--
-- Структура таблиці `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп даних таблиці `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `country`, `created_at`, `updated_at`) VALUES
(1, 'Slava', 'avocode21@gmail.com', 'Япония', '2019-04-15 21:30:54', '2019-04-15 21:30:54'),
(2, 'Денис', 'avocode211@gmail.com', 'Лаос', '2019-04-15 21:31:14', '2019-04-15 21:31:14'),
(3, 'Андрей', 'smolinskw8@gmail.com', 'Украина', '2019-04-15 21:32:01', '2019-04-15 21:32:12');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Індекси таблиці `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблиці `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
