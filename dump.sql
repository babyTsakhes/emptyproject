-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: mysql
-- Время создания: Мар 15 2024 г., 12:50
-- Версия сервера: 8.0.32
-- Версия PHP: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `easy`
--

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `groups`
--

CREATE TABLE `groups` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'group464', 'Aperiam sunt ut error sint aspernatur aspernatur nobis labore.', '2024-03-15 11:06:16', '2024-03-15 11:06:16'),
(2, 'group409', 'Minima magnam ullam repudiandae voluptas perspiciatis quis deleniti consequuntur.', '2024-03-15 11:06:16', '2024-03-15 11:06:16'),
(3, 'group90', 'Quas ab illum odit dignissimos enim ut dolor.', '2024-03-15 11:06:16', '2024-03-15 11:06:16'),
(4, 'group415', 'Labore deserunt id ullam saepe eius fuga magni.', '2024-03-15 11:06:16', '2024-03-15 11:06:16'),
(5, 'group898', 'Culpa excepturi iure sequi neque non voluptatem laborum nihil.', '2024-03-15 11:06:16', '2024-03-15 11:06:16'),
(6, 'group528', 'Et aliquid nemo iusto sunt vel est.', '2024-03-15 11:06:16', '2024-03-15 11:06:16'),
(7, 'group374', 'Est et praesentium rem unde adipisci.', '2024-03-15 11:06:16', '2024-03-15 11:06:16'),
(8, 'group652', 'Ea omnis tempora ab rem dolores earum distinctio.', '2024-03-15 11:06:16', '2024-03-15 11:06:16'),
(9, 'group301', 'Voluptas illum esse voluptatibus aperiam voluptas enim.', '2024-03-15 11:06:16', '2024-03-15 11:06:16'),
(10, 'group928', 'Rerum neque sed et magni officia.', '2024-03-15 11:06:16', '2024-03-15 11:06:16');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_13_105915_create_groups_table', 1),
(6, '2024_03_13_110018_create_participants_table', 1),
(10, '2024_03_15_110941_add_recepient_id_to_participants', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `participants`
--

CREATE TABLE `participants` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wish` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `recepient_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `participants`
--

INSERT INTO `participants` (`id`, `name`, `wish`, `group_id`, `created_at`, `updated_at`, `recepient_id`) VALUES
(3, 'Денисов Богдан Александрович', 'Vitae ut non et delectus voluptas beatae nobis.', 1, '2024-03-15 11:06:16', '2024-03-15 12:48:06', 10),
(6, 'Фомичёва Александра Романовна', 'Quibusdam quo inventore consequatur laudantium aliquid.', 1, '2024-03-15 11:06:16', '2024-03-15 12:48:06', 8),
(7, 'Олеся Алексеевна Жукова', 'Minima sed minima praesentium quis.', 1, '2024-03-15 11:06:16', '2024-03-15 12:47:53', 9),
(8, 'Инга Фёдоровна Кулакова', 'Accusamus minus accusantium autem odio et reprehenderit est officia.', 1, '2024-03-15 11:06:16', '2024-03-15 12:48:06', 7),
(9, 'Субботин Спартак Львович', 'Temporibus eaque consectetur qui sed atque.', 1, '2024-03-15 11:06:16', '2024-03-15 12:48:06', 3),
(10, 'Терентьев Виктор Евгеньевич', 'Ut architecto voluptate iste sint.', 1, '2024-03-15 11:06:16', '2024-03-15 12:48:06', 6),
(11, 'Добрыня Борисович Петров', 'Illo nesciunt maiores quis nihil rerum.', 2, '2024-03-15 11:06:16', '2024-03-15 12:33:05', 20),
(12, 'Зоя Андреевна Воронова', 'Magnam enim atque veniam debitis eos vel incidunt corrupti.', 2, '2024-03-15 11:06:16', '2024-03-15 12:33:05', 19),
(13, 'Зоя Александровна Симонова', 'Doloribus sit nam porro qui dicta qui modi consectetur.', 2, '2024-03-15 11:06:16', '2024-03-15 12:33:05', 17),
(14, 'Игнатова Жанна Сергеевна', 'Sint in eveniet cupiditate voluptatem laboriosam a est.', 2, '2024-03-15 11:06:16', '2024-03-15 12:33:05', 14),
(15, 'Арсений Евгеньевич Фомичёв', 'Et non et nisi velit.', 2, '2024-03-15 11:06:16', '2024-03-15 12:33:05', 12),
(16, 'Николаева Нелли Владимировна', 'Sit necessitatibus iusto autem rem qui voluptates asperiores.', 2, '2024-03-15 11:06:16', '2024-03-15 12:33:05', 18),
(17, 'Жанна Андреевна Осипова', 'Animi praesentium quisquam dolor recusandae dolorum nam.', 2, '2024-03-15 11:06:16', '2024-03-15 12:33:05', 16),
(18, 'Дан Иванович Лебедев', 'Sint natus sed nam est eius eius enim.', 2, '2024-03-15 11:06:16', '2024-03-15 12:33:05', 13),
(19, 'Рыбаков Семён Александрович', 'Iste incidunt aut voluptates atque repellat numquam non.', 2, '2024-03-15 11:06:16', '2024-03-15 12:33:05', 11),
(20, 'Баранов Анатолий Максимович', 'Veniam molestias odit qui et.', 2, '2024-03-15 11:06:16', '2024-03-15 12:33:05', 15),
(21, 'Куликова Наталья Фёдоровна', 'Vero vel qui est non.', 3, '2024-03-15 11:06:16', '2024-03-15 12:33:09', 27),
(22, 'Аркадий Иванович Попов', 'At esse beatae ut est corrupti dicta ut tempora.', 3, '2024-03-15 11:06:16', '2024-03-15 12:33:09', 24),
(23, 'Лихачёв Марат Львович', 'Blanditiis aut natus molestias numquam et at.', 3, '2024-03-15 11:06:16', '2024-03-15 12:33:09', 23),
(24, 'Нелли Алексеевна Кондратьева', 'Culpa blanditiis dolorem saepe quia ex.', 3, '2024-03-15 11:06:16', '2024-03-15 12:33:09', 21),
(25, 'Фёдор Борисович Шаров', 'Vitae adipisci vel et eligendi maxime laudantium nostrum.', 3, '2024-03-15 11:06:16', '2024-03-15 12:33:09', 22),
(26, 'Дементьев Гавриил Евгеньевич', 'Ipsum et quia aliquam quam et rerum exercitationem.', 3, '2024-03-15 11:06:16', '2024-03-15 12:33:09', 25),
(27, 'Артур Фёдорович Кононов', 'A voluptatum et quisquam.', 3, '2024-03-15 11:06:16', '2024-03-15 12:33:09', 28),
(28, 'Валерий Андреевич Захаров', 'Ea voluptas praesentium quibusdam nihil reiciendis.', 3, '2024-03-15 11:06:16', '2024-03-15 12:33:09', 29),
(29, 'Лада Владимировна Пономарёва', 'Ut aspernatur qui quos quaerat.', 3, '2024-03-15 11:06:16', '2024-03-15 12:33:09', 26),
(30, 'Капитолина Андреевна Зыкова', 'Ut aut doloremque earum culpa dolores quo.', 3, '2024-03-15 11:06:16', '2024-03-15 12:33:09', 30),
(31, 'Иннокентий Дмитриевич Романов', 'Quibusdam aliquid nihil quidem ab voluptatem architecto culpa.', 4, '2024-03-15 11:06:16', '2024-03-15 12:33:10', 37),
(32, 'Федотов Мирослав Сергеевич', 'Pariatur est asperiores sint.', 4, '2024-03-15 11:06:16', '2024-03-15 12:33:10', 34),
(33, 'Игнатий Андреевич Белозёров', 'Quaerat sit ea dolore alias dolores laudantium sit rerum.', 4, '2024-03-15 11:06:16', '2024-03-15 12:33:10', 32),
(34, 'Софья Евгеньевна Алексеева', 'Est impedit aspernatur pariatur odio et.', 4, '2024-03-15 11:06:16', '2024-03-15 12:33:10', 31),
(35, 'Воронцов Георгий Борисович', 'Aut fuga voluptatem et suscipit nam.', 4, '2024-03-15 11:06:16', '2024-03-15 12:33:10', 39),
(36, 'Ильин Арсений Евгеньевич', 'Laborum quia molestiae deserunt eligendi vero voluptatum.', 4, '2024-03-15 11:06:16', '2024-03-15 12:33:10', 40),
(37, 'Овчинников Альберт Максимович', 'Officia optio velit culpa sit sunt eveniet voluptatem.', 4, '2024-03-15 11:06:16', '2024-03-15 12:33:10', 38),
(38, 'Абрам Сергеевич Давыдов', 'Ducimus ut rerum minima quibusdam.', 4, '2024-03-15 11:06:16', '2024-03-15 12:33:10', 35),
(39, 'Глеб Романович Николаев', 'Veniam non temporibus quae consequatur.', 4, '2024-03-15 11:06:16', '2024-03-15 12:33:10', 33),
(40, 'Якушев Филипп Львович', 'Maiores id sunt saepe quia voluptate sunt accusamus.', 4, '2024-03-15 11:06:16', '2024-03-15 12:33:10', 36),
(41, 'Кристина Дмитриевна Шарова', 'Aliquid et atque voluptatem nesciunt quisquam voluptates mollitia.', 5, '2024-03-15 11:06:16', '2024-03-15 12:33:29', 44),
(42, 'Искра Романовна Антонова', 'Commodi dolorem perferendis ex illum doloremque aut aut quia.', 5, '2024-03-15 11:06:16', '2024-03-15 12:33:29', 49),
(43, 'Романов Захар Дмитриевич', 'Velit eveniet dolorem quis perspiciatis.', 5, '2024-03-15 11:06:16', '2024-03-15 12:33:29', 43),
(44, 'Савельева Клементина Львовна', 'Natus aliquam delectus qui non quis qui.', 5, '2024-03-15 11:06:16', '2024-03-15 12:33:29', 48),
(45, 'Рогов Владимир Александрович', 'Qui eveniet vel eos consectetur.', 5, '2024-03-15 11:06:16', '2024-03-15 12:33:29', 47),
(46, 'Зайцева Любовь Львовна', 'Vero sequi aliquid illum tempora.', 5, '2024-03-15 11:06:16', '2024-03-15 12:33:29', 42),
(47, 'Инна Евгеньевна Жданова', 'Nihil repudiandae eveniet nam.', 5, '2024-03-15 11:06:16', '2024-03-15 12:33:29', 45),
(48, 'Шарапова Алиса Львовна', 'Et ad voluptatem rerum consectetur ut est.', 5, '2024-03-15 11:06:16', '2024-03-15 12:33:29', 46),
(49, 'Самойлов Антон Романович', 'Dolorem necessitatibus quia dolorem accusantium odit qui iusto.', 5, '2024-03-15 11:06:16', '2024-03-15 12:33:29', 50),
(50, 'Любовь Евгеньевна Савельева', 'Tenetur suscipit ut et qui iusto ratione laborum.', 5, '2024-03-15 11:06:16', '2024-03-15 12:33:29', 41),
(51, 'Наумов Андрей Фёдорович', 'Consequuntur similique dolorum et.', 6, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(52, 'Сидорова Валентина Романовна', 'Voluptatum nostrum reiciendis non sequi.', 6, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(53, 'Пестова Вера Дмитриевна', 'Modi quo eligendi est et.', 6, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(54, 'Яна Борисовна Одинцова', 'Aut at magni magni delectus quae.', 6, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(55, 'Федосеева Мария Фёдоровна', 'Libero corrupti ullam placeat blanditiis at unde voluptas.', 6, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(56, 'Таисия Борисовна Боброва', 'Maxime quas dolorum dolor occaecati cumque.', 6, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(57, 'Рогова Полина Ивановна', 'Omnis vel fugit molestiae fugit officia provident totam.', 6, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(58, 'Хохлов Эрик Андреевич', 'Quis illo aut sit dolor iste amet fugiat minus.', 6, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(59, 'Горшкова Александра Александровна', 'Eligendi corporis dignissimos ut quae.', 6, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(60, 'Феликс Дмитриевич Савельев', 'Eveniet fugiat praesentium odio maxime consequatur est sed.', 6, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(61, 'Нина Евгеньевна Хохлова', 'Nihil dolores omnis similique autem aut.', 7, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(62, 'Эльвира Романовна Бирюкова', 'Veritatis est aut nesciunt omnis quasi sunt.', 7, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(63, 'Алёна Сергеевна Дементьева', 'Dolor commodi perspiciatis omnis magnam.', 7, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(64, 'Адриан Львович Тихонов', 'Id repellendus omnis fugiat nisi sint error libero facere.', 7, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(65, 'Герасим Александрович Доронин', 'Adipisci illo ad est ea ut explicabo.', 7, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(66, 'Антонина Ивановна Ситникова', 'Explicabo ut sit at porro numquam.', 7, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(67, 'Киселёва Клара Владимировна', 'Voluptatibus officiis quia aperiam non.', 7, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(68, 'Яна Андреевна Маркова', 'Consequatur distinctio voluptates cum et fuga.', 7, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(69, 'Фролова Марта Владимировна', 'In natus dolor non dicta ea.', 7, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(70, 'Аким Фёдорович Трофимов', 'Voluptatibus aut dolor ullam nostrum est architecto.', 7, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(71, 'Воронова Татьяна Максимовна', 'Ea in nam voluptatem reiciendis assumenda est sed error.', 8, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(72, 'Андреева Нина Фёдоровна', 'Doloribus enim voluptatum repudiandae excepturi animi aut.', 8, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(73, 'Артемьева Эльвира Евгеньевна', 'Et culpa suscipit et consequatur laborum.', 8, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(74, 'Медведева Анна Фёдоровна', 'Non quis officia cumque expedita.', 8, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(75, 'Любовь Борисовна Суханова', 'Quidem illum quod non velit.', 8, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(76, 'Инна Романовна Жданова', 'Commodi aut voluptas non ipsum libero.', 8, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(77, 'Эдуард Евгеньевич Белозёров', 'Dignissimos enim voluptatem quisquam ad quasi sint debitis id.', 8, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(78, 'Моисеев Болеслав Борисович', 'Dicta eum atque aut iusto ea.', 8, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(79, 'Марина Максимовна Киселёва', 'Adipisci enim dolore fugiat ex molestiae dolorem autem.', 8, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(80, 'Дарья Андреевна Мишина', 'Minima autem suscipit quia et aperiam cumque.', 8, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(81, 'Галина Андреевна Муравьёва', 'Quo quas omnis recusandae minima eius quos.', 9, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(82, 'Федосья Львовна Агафонова', 'Iure nobis laborum consequatur voluptate alias.', 9, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(83, 'Елена Максимовна Миронова', 'Deserunt error hic fuga temporibus.', 9, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(84, 'Зоя Фёдоровна Рябова', 'Sint dolorem sed aspernatur ut.', 9, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(85, 'Инесса Романовна Игнатьева', 'Nisi suscipit et velit quia neque distinctio omnis nostrum.', 9, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(86, 'Анастасия Борисовна Сергеева', 'Consequatur delectus doloremque facere eum molestiae sunt dignissimos accusantium.', 9, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(87, 'Иммануил Сергеевич Журавлёв', 'Magni quas numquam aliquam tempora quo.', 9, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(88, 'Константинова Таисия Фёдоровна', 'Aliquid veniam aperiam expedita consequatur alias.', 9, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(89, 'Жданова Кристина Дмитриевна', 'Ut cumque provident ut.', 9, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(90, 'Геннадий Борисович Савин', 'Laudantium voluptate autem similique consequatur ullam dolorum quia.', 9, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(91, 'Валентина Борисовна Пестова', 'Id vel atque porro est ea pariatur.', 10, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(92, 'Сава Максимович Фёдоров', 'Voluptatem quo voluptas nihil magnam.', 10, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(93, 'Федосеева Регина Борисовна', 'Ad assumenda magni exercitationem magni soluta cum aut est.', 10, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(94, 'Феликс Евгеньевич Фёдоров', 'Quaerat omnis quas minus cum excepturi.', 10, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(95, 'Герасимова Искра Борисовна', 'Tempore aut reiciendis beatae omnis rerum rem incidunt quas.', 10, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(96, 'Гришин Август Андреевич', 'Ullam velit cupiditate cupiditate dolor.', 10, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(97, 'Ольга Романовна Назарова', 'Voluptatibus aspernatur saepe voluptas placeat hic.', 10, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(98, 'Шарова Анжелика Дмитриевна', 'Voluptatem molestiae excepturi quia suscipit ipsa ut.', 10, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(99, 'Копылова Нонна Евгеньевна', 'Nesciunt corrupti beatae ut qui molestiae.', 10, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL),
(100, 'Анжелика Максимовна Волкова', 'Ut qui vero et maxime reiciendis.', 10, '2024-03-15 11:06:16', '2024-03-15 11:06:16', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `participants`
--
ALTER TABLE `participants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `participants_group_id_foreign` (`group_id`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `groups`
--
ALTER TABLE `groups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `participants`
--
ALTER TABLE `participants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `participants`
--
ALTER TABLE `participants`
  ADD CONSTRAINT `participants_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
