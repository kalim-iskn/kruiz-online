-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Апр 22 2022 г., 16:40
-- Версия сервера: 8.0.27-0ubuntu0.20.04.1
-- Версия PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `kruiz`
--

-- --------------------------------------------------------

--
-- Структура таблицы `providers`
--

CREATE TABLE `providers` (
  `id` int NOT NULL,
  `official_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'для страницы вендора',
  `caption` text CHARACTER SET utf8 COLLATE utf8_bin,
  `commission` int NOT NULL,
  `bank_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `bank_corr` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `inn` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `kpp` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `rs` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `bank_bik` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `exceptions` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `cancellation_policy` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `cancellation_table` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `price_currency` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `is_sea` int NOT NULL,
  `cover_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'для страницы вендора',
  `seo_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'для страницы вендора',
  `seo_text` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'для страницы вендора',
  `min_price` int NOT NULL COMMENT 'для страницы вендора',
  `bitrix_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `providers`
--

INSERT INTO `providers` (`id`, `official_name`, `url`, `caption`, `commission`, `bank_name`, `bank_corr`, `inn`, `kpp`, `rs`, `bank_bik`, `exceptions`, `phone_number`, `cancellation_policy`, `cancellation_table`, `price_currency`, `is_sea`, `cover_img`, `seo_title`, `seo_text`, `min_price`, `bitrix_id`) VALUES
(1, 'ООО \"Инфофлот-С\"', 'infoflot', 'Инфофлот', 15, 'АО БАНК \"ПСКБ\"', '', '7842373359', '784201001', '40702810900000020518', '44030852', '', '8(800)7775447', '', '31 и более дней - 0%\r\nОт 29 до 10 дней -25%\r\nОт 9 до 3 дней - 50%\r\nМенее 3 дней - 100%', '', 0, '/images/infoflot_banner.svg', '', '', 0, 95),
(2, 'ООО \"ГАМА\"', 'gama', 'Гамма', 13, 'Ф-Л БАНКА ГПБ (АО) \"ПРИВОЛЖСКИЙ\"', '', '5262032418', '526201001', '40702810500010010400', '42202764', '', '8(831)2456565', '', 'Более 93 дней - 0%\r\nОт 92 до 61 дней - 20%\r\nОт 60 до 30 дней - 50%\r\nОт 29 до 16 дней - 70%\r\nМенее 15 дней - 100%', '', 0, '/images/gama_banner.svg', '', '', 0, 101),
(3, 'ООО \"ВодоходЪ\"', 'vodohod', 'Водоход', 13, 'ПАО \"БАНК \"САНКТ-ПЕТЕРБУРГ\"', '', '7707511820', '771401001', '40702810790160002083', '44030790', '', '8(495)1500288', '', 'Более 46 дней - 0%\r\nОт 45 до 30 дней - 40%\r\nОт 29 до 15 дней - 60%\r\nОт 14 до 7 дней - 80%\r\nМенее 6 дней - 100%', '', 0, '/images/vodohod_banner.svg', '', '', 0, 97),
(4, 'ОАО \"Мостурфлот\"', 'mosturflot', 'Мостурфлот', 10, 'ПАО АКБ \"АВАНГАРД\"', '', '7712098197', '774301001', '40702810700020008671', '44525201', '', '8(495)2217222', '', 'Более 30 дней - 1 000 руб с чел.\r\nОт 29 до 20 дней - 25%\r\nОт 19 до 10 дней - 50%\r\nМенее 9 дней - 100%', '', 0, '/images/mosturflot_banner.svg', '', '', 0, 99),
(5, 'ООО \"ЧЕРНОМОРСКИЕ КРУИЗЫ\"', 'expedition', 'ЧЕРНОМОРСКИЕ КРУИЗЫ ООО', 10, 'Ф-Л БАНКА ГПБ (АО) \"ЮЖНЫЙ\"', '30101810500000000781', '2320245645', '232001001', '40702810400070000845', '40349781', '', '8(862)2665557', '', 'Более 60 дней - 3 000 руб\r\nОт 59 до 40 дней - 25%\r\nОт 39 до 20 дней - 50%\r\nОт 19 до 10 дней - 75%\r\nМенее 9 дней - 100%', '', 0, '/images/expedition_banners.svg', '', '', 0, 105),
(6, 'ООО\"НИКА\"', '', 'Ника', 10, 'СЕВЕРО-ЗАПАДНЫЙ БАНК ПАО СБЕРБАНК', '30101810500000000653', '7809012411', '783801001', '40702810155090106272', '44030653', '', '', '', 'Более 91 дня - 0%\r\nОт 90 до 61 дня - 10%\r\nОт 60 до 31 дня - 25%\r\nОт 30 до 16 дней - 50%\r\nОт 15 до 6 дней - 75%\r\nМенее 5 дней - 100%', '', 0, '/images/nika_banner.svg', '', '', 0, 2739),
(7, 'ООО Туристическая компания \"Росвояж\"', 'rosvoyaj', 'РосВояж', 10, 'АО \"КОШЕЛЕВ-БАНК\"', '30101810236010000742', '6317093439', '631701001', '40702810100000001937', '43601742', '', '8(846)3327555', 'При отказе от забронированных услуг более\r\nчем за 31 день и более до начала круиза\r\nвозвращается полная стоимость оплаченных\r\nденежных средств, за вычетом фактически\r\nпонесенных расходов Турагента.\r\n\r\nЕсли аннуляция осуществлена в срок за 30\r\nдней и менее до начала круиза, возврат\r\nосуществляется с учетом фактически\r\nпонесенных расходов.', 'От 45 до 31 дней - 2 000 руб с чел.\r\nОт 30 до 21 дней - 25%\r\nОт 20 до 11 дней - 50%\r\nОт 10 до 4 дней - 75%\r\nМенее 3 дней - 100%', '', 0, '/images/rosvoyaj_banner.svg', '', '', 0, 2741),
(8, '', '', 'Селена', 0, '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0),
(10, 'ООО \"ВОЛГАУРАЛ ВОЯЖ\"', 'volgavolga', 'ВОЛГАУРАЛ ВОЯЖ (Волга-Волга)', 15, 'ВОЛГО-ВЯТСКИЙ БАНК ПАО СБЕРБАНК', '', '5902142059', '590201001', '40702810949770012716', '42202603', '', '', '', '60 и более дней - 10%\r\nОт 59 до 31 дней - 15%\r\nОт 30 до 21 дней - 30%\r\nОт 10 до 6 дней - 60%\r\nМенее 6 дней - 100%', '', 0, '/images/volgavolga_banner.svg', '', '', 0, 5129),
(11, 'ООО СК \"Белый лебедь\"', 'belyilebed', 'Белый Лебедь', 15, 'ПАО \"ПРОМСВЯЗЬБАНК\"', '30101810400000000555 ', '7708284708', '770801001', '40702810500000077002', '44525555', '', '', '', 'Более 30 дней - 0%\r\nОт 29 до 20 дней - 25%\r\nОт 19 до 10 дней - 50%\r\nМенее 9 дней - 100%', '', 0, '/images/belyilebed_banner.svg', '', '', 0, 103),
(1001, 'ООО \"ЭКСПРЕСС-ТУР\"', 'rusich', 'ЭКСПРЕСС-ТУР (РУСИЧ)', 15, '', '', '5908022897', '590201001', '40702810949490079262', '42202603', '', '', '', '46 и более дней - 0%\r\nОт 45 до 40 дней - 10%\r\nОт 39 до 31 дня- 70%\r\nМенее 30 дней - 95%', '', 0, '/images/rusich_banner.svg', '', '', 0, 3023),
(1002, 'ООО \"Кубань\" (Селена)', 'kuban', 'Кубань', 15, 'ВОЛГО-ВЯТСКИЙ БАНК ПАО СБЕРБАНК', '', '5906001740', '590601001', '40702810249500110106', '42202603', '', '', '', 'Более 46 дней - 1 000 руб с чел.\r\nОт 45 до 31 дней - 2 000 руб с чел.\r\nОт 30 до 21 дней - 25%\r\nОт 20 до 11 дней - 50%\r\nОт 10 до 4 дней - 75%\r\nМенее 3 дней - 100%', '', 0, '/images/kuban_banner.svg', '', '', 0, 3035),
(1003, 'ООО \"КАМСКАЯ КРУИЗНАЯ КОМПАНИЯ\" (селена)', 'kamatravel', 'Кама Трэвел', 12, 'АО КБ \"Урал ФД\"', '', '5902997640', '5902997640', '40702810100000008342', '45773790', '', '', '', '46 и более дней - 0%\r\nОт 45 до 30 дней - 15%\r\nОт 29 до 15 дней - 30%\r\nОт 14 до 7 дней - 50%\r\nОт 6 до 3 дней - 70%\r\nМенее 72 часов - 100%', '', 0, '/images/kamatravel_banner.svg', '', '', 0, 3029),
(1004, 'ООО \"СПУТНИК-ГЕРМЕС\"', 'sputnikgermes', 'Спутник Гермес', 14, 'ПРИВОЛЖСКИЙ Ф-Л ПАО \"ПРОМСВЯЗЬБАНК\"', '30101810700000000803', '6317034144', '631701001', '40702810103000042683', '42202803', '', '', '\"При отказе от забронированных услуг более\r\nчем за 31 день и более до начала круиза\r\nвозвращается полная стоимость\r\n\r\nМенее 30 дней-возврат осуществляется с\r\nучетом фактически понесенных расходов.\r\nАннулированный речной круиз выставляется\r\nна продажу. По факту реализации речного\r\nкруиза устанавливается точный размер\r\nфактически понесенных расходов. В случае\r\nневозможности реализации каюты третьим\r\nлицам, Туроператором осуществляется\r\nвозврат стоимости питания.\"', 'При отказе от забронированных услуг более чем за 31 день и более до начала круиза возвращается полная стоимость Менее 30 дней-возврат осуществляется с учетом фактически понесенных расходов. Аннулированный речной круиз выставляется на продажу. По факту реализации речного круиза устанавливается точный размер фактически понесенных расходов. В случае невозможности реализации каюты третьим лицам, Туроператором осуществляется возврат стоимости питания.', '', 0, '/images/sputnikgermes_banner.svg', '', '', 0, 4443),
(1005, '', 'volgaples', 'Волга Плёс', 0, '', '', '', '', '', '', '', '', 'Указан приблизительный размер\r\nфактически понесённых расходов, указан\r\nисключительно чтобы предоставить\r\nинформацию о возможных условиях\r\nаннуляции тура и будет определяться в\r\nкаждом конкретном случае\"', '30 и более - 0%\r\nОт 29 до 15 дней - 15%\r\nОт 14 до 10 дней - 40%\r\nОт 9 до 4 дней - 60%\r\nМенее 3 дней - 100%', '', 0, '/images/volgaples_banner.svg', '', '', 0, 0),
(1006, '', 'rechflot', 'Речфлот', 0, '', '', '', '', '', '', '', '', '', '61 и более дней - 1 600 руб. чел.\r\nОт 60 до 45 дней - 25%\r\nОт 44 до 30 дней - 50%\r\nОт 29 до 15 дней - 75%\r\nМенее 14 дней - 100%', '', 0, '/images/rechflot_banner.svg', '', '', 0, 0),
(1007, 'ООО \"ЦЕЗАРЬ ТРЭВЕЛ\"', 'cezar', 'Цезарь Трэвел', 15, 'ООО \"СПЕЦСТРОЙБАНК\"', '30101810045250000728', '7725201500', '770901001', '40702810300000000884', '44525728', '', '', '', '31 и более дней - 0%\r\nОт 30 до 20 дней - 25%\r\nОт 19 до 10 дней - 50%\r\nОт 9 до 6 дней - 75%\r\nМенее 5 дней - 100%', '', 0, '/images/cezar_banner.svg', '', '', 0, 2561),
(1008, 'АО \"ДОНИНТУРФЛОТ\"', 'donInturflot', 'ДонИнтурфлот', 18, 'ПАО КБ \"ЦЕНТР-ИНВЕСТ\"', '', '6164048531', '773401001', '40702810800000005105', '46015762', '', '', '', 'Более 30 дней - 0%\r\nОт 20 до 29 дней - 25%\r\nОт 10 до 19 дней - 50%\r\nОт 6 до 9 дней - 75%\r\nМенее 5 дней - 100%', '', 0, '/images/doninturflot_banner.svg', '', '', 0, 4503),
(1009, '', '', 'Посейдон (Ледоколы)', 10, '', '', '', '', '', '', '', '', '', 'Более 75 дней - 10%\r\nЗа 75 дней - 20%\r\nЗа 30 дней - 30%\r\nЗа 15 дней - 70%\r\nЗа 10 дней - 85%\r\nЗа 3 дня - 100%', '', 0, '', '', '', 0, 0),
(1010, 'ООО \"РК\" (речные круизы)', '', 'речные круизы (Панфёров)', 0, 'ПРИВОЛЖСКИЙ Ф-Л ПАО \"ПРОМСВЯЗЬБАНК\"', '30101810700000000803', '6318040060', '631801001', '40702810803000077929', '42202803', '', '', '', 'При отказе от забронированных услуг более чем за 31 день и более до начала круиза возвращается полная стоимость Менее 30 дней-возврат осуществляется с учетом фактически понесенных расходов. Аннулированный речной круиз выставляется на продажу. По факту реализации речного круиза устанавливается точный размер фактически понесенных расходов. В случае невозможности реализации каюты третьим лицам, Туроператором осуществляется возврат стоимости питания.', '', 0, '', '', '', 0, 5141),
(1012, 'ООО \"СК \"ВОЛГА ДРИМ\"', '', 'ВОЛГА ДРИМ', 10, 'ПАО РОСБАНК', '30101810000000000256', '7703819396', '770301001', '40702810187120000862', '44525256', '', '', '', 'Более 61 дня - 10%\r\nОт 60 до 31 дня - 25%\r\nОт 30 до 15 дней - 50%\r\nМенее 15 дней - 100%', '', 0, '/images/volgadrim_banner.svg', '', '', 0, 5599),
(1013, 'ООО \"ПОЛОНИЯ\"', '', 'ПОЛОНИЯ', 10, 'ФИЛИАЛ ООО \"ЭКСПОБАНК\" В Г.НОВОСИБИРСКЕ', '30101810450040000861', '2461015309', '246501001', '40702810600007370000', '45004861', '', '', '', '', '', 0, '', '', '', 0, 5487),
(1015, 'ООО \"ПЕКС\"', '', 'ПЕКС', 0, 'ФИЛИАЛ \"ЦЕНТРАЛЬНЫЙ\" БАНКА ВТБ (ПАО)', '30101810145250000411', '7704582100', '770701001', '40702810301200000042', '44525411', '', '', '', '', '', 0, '', '', '', 0, 4743),
(1016, 'ООО \"ЛЕНАТУРФЛОТ\"', '', 'ЛЕНАТУРФЛОТ', 10, '\"Азиатско-Тихоокеанский Банк\" (АО)', '30101810300000000765', '1435135982', '143501001', '40702810700750000014', '41012765', '', '', '', 'Более 75 дней - 10%\r\nЗа 75 дней - 20%\r\nЗа 30 дней - 30%\r\nЗа 15 дней - 70%\r\nЗа 10 дней - 85%\r\nЗа 3 дня - 100%', '', 0, '', '', '', 0, 5177),
(1018, '', 'volgaline', 'Волга Лайн', 12, '', '', '', '', '', '', '', '', '', 'Более 30 дней - 500 рублей с человека\r\nОт 30 до 20 дней - 25%\r\nОт 19 до 10 дней - 50%\r\nза 9 дней - 75%\r\nменее 8 дней - 100%', '', 0, '/images/volgaline_banner.svg', '', '', 0, 6129),
(10008, '', '', 'Royal Caribbean', 0, '', '', '', '', '', '', '', '', '', '', 'usd', 1, '', '', '', 0, 0),
(10009, '', '', 'Costa Cruises', 0, '', '', '', '', '', '', '', '', '', 'Более 45 дней - 50€ с чел.\r\nОт 30 до 44 дней - 25%\r\nОт 15 до 29 дней - 50%\r\nОт 6 до 14 дней - 75%\r\nМенее 5 дней - 100%', 'eur', 1, '', '', '', 0, 0),
(100010, '', '', 'Celebrity Cruises', 0, '', '', '', '', '', '', '', '', '', '', 'eur', 1, '', '', '', 0, 0),
(100011, '', '', 'Norwegian Сruise Line', 0, '', '', '', '', '', '', '', '', '', '', 'eur', 1, '', '', '', 0, 0),
(100012, '', '', 'Azamara Club Cruises', 0, '', '', '', '', '', '', '', '', '', '', 'eur', 1, '', '', '', 0, 0),
(100013, '', '', 'Pullmantur Cruises', 0, '', '', '', '', '', '', '', '', '', '', 'eur', 1, '', '', '', 0, 0),
(100014, '', '', 'Ponant', 0, '', '', '', '', '', '', '', '', '', '', 'eur', 1, '', '', '', 0, 0),
(100015, '', '', 'Oceania Cruises', 0, '', '', '', '', '', '', '', '', '', '', 'eur', 1, '', '', '', 0, 0),
(100016, '', '', 'Regent Seven Seas Cruises ', 0, '', '', '', '', '', '', '', '', '', '', 'eur', 1, '', '', '', 0, 0),
(100017, '', '', 'SilverSea Cruises', 0, '', '', '', '', '', '', '', '', '', '', 'eur', 1, '', '', '', 0, 0),
(100018, '', '', 'Crystal Cruises', 0, '', '', '', '', '', '', '', '', '', '', 'eur', 1, '', '', '', 0, 0),
(100019, '', '', 'MSC Cruises', 0, '', '', '', '', '', '', '', '', '', '', 'eur', 1, '', '', '', 0, 0),
(100020, '', '', 'Celestyal', 0, '', '', '', '', '', '', '', '', '', '', 'eur', 1, '', '', '', 0, 0),
(100021, '', '', 'Инфофлот(реки мира)', 0, '', '', '', '', '', '', '', '', '', '', '', 0, '', '', '', 0, 0),
(100022, '', '', 'ASTORIA GRANDE', 0, '', '', '', '', '', '', '', '', '', '46 и более дней - без штрафа\r\nОт 45 до 31 дня - 50 евро с пассажира\r\nОт 30 до 16 дней - 50%\r\n15 дней и менее- 100%', 'eur', 1, '', '', '', 0, 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `providers`
--
ALTER TABLE `providers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100023;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
