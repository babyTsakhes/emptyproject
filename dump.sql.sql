-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: mysql
-- Время создания: Мар 15 2024 г., 07:20
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
(1, 'group769', 'Adipisci est autem rerum similique id.', '2024-03-14 13:06:02', '2024-03-14 13:06:02'),
(2, 'group746', 'Magnam sit explicabo suscipit delectus et rerum aut.', '2024-03-14 13:06:02', '2024-03-14 13:06:02'),
(3, 'group924', 'Temporibus maxime voluptas ut eius ullam recusandae nobis vitae.', '2024-03-14 13:06:02', '2024-03-14 13:06:02'),
(4, 'group967', 'Illum quia deleniti fuga id modi recusandae minus.', '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(5, 'group617', 'Veritatis a vero sapiente ut et.', '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(6, 'group785', 'Nihil labore tempora eaque eos.', '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(7, 'group53', 'Et nostrum quos quos.', '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(8, 'group286', 'Assumenda est id error officia.', '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(9, 'group933', 'Sed aperiam quia qui omnis qui nostrum quo.', '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(10, 'group796', 'Odit dignissimos corporis ea aliquam.', '2024-03-14 13:06:03', '2024-03-14 13:06:03');

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
(5, '2024_03_11_120146_create_people_table', 1),
(11, '2024_03_13_105915_create_groups_table', 2),
(12, '2024_03_13_110018_create_participants_table', 2),
(13, '2024_03_13_130302_create_part_recipients_table', 2);

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `participants`
--

INSERT INTO `participants` (`id`, `name`, `wish`, `group_id`, `created_at`, `updated_at`) VALUES
(1, 'Гущина Диана Владимировна', 'In inventore qui sint illum.', 1, '2024-03-14 13:06:02', '2024-03-14 13:06:02'),
(2, 'Лыткин Василий Владимирович', 'Rem qui cumque distinctio et nemo.', 1, '2024-03-14 13:06:02', '2024-03-14 13:06:02'),
(3, 'Лев Иванович Никонов', 'Tenetur ut ad consequuntur.', 1, '2024-03-14 13:06:02', '2024-03-14 13:06:02'),
(4, 'Сергей Иванович Стрелков', 'Corporis et totam ea maxime.', 1, '2024-03-14 13:06:02', '2024-03-14 13:06:02'),
(5, 'Брагина Диана Ивановна', 'Eos quibusdam qui tempora aut delectus aut.', 1, '2024-03-14 13:06:02', '2024-03-14 13:06:02'),
(6, 'Вишнякова Валентина Владимировна', 'Vero ullam incidunt aspernatur et aut ut.', 1, '2024-03-14 13:06:02', '2024-03-14 13:06:02'),
(7, 'Алиса Львовна Пономарёва', 'Voluptatem accusamus dolor porro.', 1, '2024-03-14 13:06:02', '2024-03-14 13:06:02'),
(8, 'Жукова Рада Евгеньевна', 'Magnam expedita autem sit qui.', 1, '2024-03-14 13:06:02', '2024-03-14 13:06:02'),
(9, 'Русаков Клим Максимович', 'Autem odit aut quia quaerat sit dolorem tenetur.', 1, '2024-03-14 13:06:02', '2024-03-14 13:06:02'),
(10, 'Ульяна Ивановна Горшкова', 'Facere doloremque ut et sunt sint.', 1, '2024-03-14 13:06:02', '2024-03-14 13:06:02'),
(11, 'Лаврентьев Николай Львович', 'Sit nostrum ducimus doloribus ut voluptas iste minima.', 2, '2024-03-14 13:06:02', '2024-03-14 13:06:02'),
(12, 'Лебедев Тимур Борисович', 'Harum quo qui qui corrupti vitae voluptatem rerum error.', 2, '2024-03-14 13:06:02', '2024-03-14 13:06:02'),
(13, 'Щербаков Кузьма Александрович', 'Et eos et labore aliquid nemo perspiciatis.', 2, '2024-03-14 13:06:02', '2024-03-14 13:06:02'),
(14, 'Рада Андреевна Тихонова', 'Autem aut sunt qui nostrum.', 2, '2024-03-14 13:06:02', '2024-03-14 13:06:02'),
(15, 'Кириллова Вера Романовна', 'Quisquam voluptatibus qui animi quis.', 2, '2024-03-14 13:06:02', '2024-03-14 13:06:02'),
(16, 'Смирнов Виталий Борисович', 'Et veritatis accusantium eligendi in et perspiciatis in.', 2, '2024-03-14 13:06:02', '2024-03-14 13:06:02'),
(17, 'Савельева Антонина Александровна', 'Aut eos voluptatum accusantium hic sed totam amet.', 2, '2024-03-14 13:06:02', '2024-03-14 13:06:02'),
(18, 'Мамонтов Лев Фёдорович', 'Rerum dolor esse officia et.', 2, '2024-03-14 13:06:02', '2024-03-14 13:06:02'),
(19, 'Флорентина Дмитриевна Лапина', 'Ea aliquam quibusdam nesciunt amet sed neque.', 2, '2024-03-14 13:06:02', '2024-03-14 13:06:02'),
(20, 'Искра Львовна Игнатьева', 'Pariatur cupiditate labore maiores consequuntur animi cum.', 2, '2024-03-14 13:06:02', '2024-03-14 13:06:02'),
(21, 'Нелли Ивановна Мартынова', 'Nam sint sequi at rerum ut qui facilis.', 3, '2024-03-14 13:06:02', '2024-03-14 13:06:02'),
(22, 'Назар Романович Рыбаков', 'Sapiente consequatur et nihil suscipit molestias dolorem ut.', 3, '2024-03-14 13:06:02', '2024-03-14 13:06:02'),
(23, 'Меркушев Роман Сергеевич', 'Magnam praesentium ut doloremque dignissimos hic laudantium.', 3, '2024-03-14 13:06:02', '2024-03-14 13:06:02'),
(24, 'Чернова Олеся Фёдоровна', 'Asperiores natus laborum et recusandae sunt.', 3, '2024-03-14 13:06:02', '2024-03-14 13:06:02'),
(25, 'Владимир Алексеевич Прохоров', 'Soluta harum laudantium temporibus hic et.', 3, '2024-03-14 13:06:02', '2024-03-14 13:06:02'),
(26, 'Лазарева Алёна Фёдоровна', 'Et fuga voluptatibus vero.', 3, '2024-03-14 13:06:02', '2024-03-14 13:06:02'),
(27, 'Изабелла Владимировна Беляева', 'Eos accusamus minima amet.', 3, '2024-03-14 13:06:02', '2024-03-14 13:06:02'),
(28, 'Денис Алексеевич Кулаков', 'Velit veritatis est pariatur.', 3, '2024-03-14 13:06:02', '2024-03-14 13:06:02'),
(29, 'Емельянова Александра Фёдоровна', 'Qui dolorum inventore eaque nemo.', 3, '2024-03-14 13:06:02', '2024-03-14 13:06:02'),
(30, 'Артемьева Зоя Евгеньевна', 'Quasi eligendi fugiat mollitia iste nulla.', 3, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(31, 'Гришин Степан Владимирович', 'Ducimus non et repellat.', 4, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(32, 'Пахомов Виль Сергеевич', 'Optio recusandae corrupti officiis odio perspiciatis sunt rem.', 4, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(33, 'Полина Максимовна Давыдова', 'Ut nam et illo at et et.', 4, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(34, 'Елизавета Львовна Комиссарова', 'Molestiae enim mollitia cum laboriosam sapiente qui blanditiis non.', 4, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(35, 'Зуева Анжелика Борисовна', 'Rerum reprehenderit est accusantium sed.', 4, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(36, 'Тарас Романович Константинов', 'Ducimus dolorem perferendis sint ipsa.', 4, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(37, 'Осипова Варвара Фёдоровна', 'Culpa possimus ipsum ullam provident earum aliquam quod.', 4, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(38, 'Клавдия Владимировна Шарова', 'Placeat quibusdam eum omnis totam quia quisquam repellat.', 4, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(39, 'Зыкова Анфиса Александровна', 'Et debitis eligendi quam totam velit.', 4, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(40, 'Иммануил Иванович Суханов', 'Illo rerum quae possimus iusto cum consequatur vel.', 4, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(41, 'Иммануил Фёдорович Крюков', 'Fugit sed voluptates aut similique illo tempore et.', 5, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(42, 'Мартынов Юлий Владимирович', 'Aut voluptas mollitia rerum aut eum nulla minus et.', 5, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(43, 'Овчинников Николай Сергеевич', 'Occaecati sit id facilis voluptatibus nisi optio odio.', 5, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(44, 'Савельева Людмила Александровна', 'Illo quis vel dignissimos cupiditate quasi omnis.', 5, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(45, 'Юдин Георгий Сергеевич', 'Expedita molestiae enim dolorem debitis soluta.', 5, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(46, 'Федосья Владимировна Фомина', 'Molestiae sit eveniet ipsum et.', 5, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(47, 'Валентина Сергеевна Соколова', 'Amet officia iste nostrum et suscipit quam ipsa.', 5, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(48, 'Инга Андреевна Капустина', 'Minus et eos vel odio rerum vel quod.', 5, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(49, 'Щукина Надежда Дмитриевна', 'Libero autem sit explicabo quia molestias quas.', 5, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(50, 'Денисов Никита Романович', 'Enim adipisci neque repellat ut id animi est.', 5, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(51, 'Капустин Юрий Сергеевич', 'Excepturi temporibus qui optio facilis voluptas.', 6, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(52, 'Соловьёва Алиса Фёдоровна', 'Voluptates nam consequuntur magnam quibusdam.', 6, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(53, 'Крылов Владислав Романович', 'Ut autem recusandae nobis et temporibus repudiandae.', 6, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(54, 'Мишин Иосиф Львович', 'Similique magni vel et rerum eum.', 6, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(55, 'Наталья Сергеевна Котова', 'Exercitationem quae ipsa tenetur alias repellendus et asperiores voluptates.', 6, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(56, 'Панов Валерий Евгеньевич', 'Mollitia sapiente sed rem.', 6, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(57, 'Ярослава Александровна Третьякова', 'Officia aspernatur nihil similique veritatis reiciendis aut consequatur.', 6, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(58, 'Фёдорова Анфиса Евгеньевна', 'Qui voluptas autem distinctio qui esse.', 6, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(59, 'Ситников Бронислав Александрович', 'Nisi eum velit nulla aut labore voluptas asperiores quis.', 6, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(60, 'Тамара Львовна Родионова', 'In deserunt esse cupiditate voluptas qui illum assumenda.', 6, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(61, 'Ярослава Сергеевна Одинцова', 'Quas esse odit quia quibusdam laboriosam est.', 7, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(62, 'Злата Сергеевна Абрамова', 'Dolores sequi sit dignissimos sunt.', 7, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(63, 'Юлия Борисовна Фокина', 'Rerum totam veritatis debitis quas aliquid sit.', 7, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(64, 'Журавлёва Дарья Максимовна', 'Molestias doloremque facilis incidunt repellendus sit.', 7, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(65, 'Крылов Фёдор Сергеевич', 'Saepe ut dolor velit qui omnis nulla.', 7, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(66, 'Бобров Эдуард Борисович', 'Quae nobis voluptatem architecto voluptatem sit deserunt delectus voluptas.', 7, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(67, 'Вадим Андреевич Юдин', 'Incidunt et velit enim possimus.', 7, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(68, 'Алексей Александрович Туров', 'Maxime culpa qui dignissimos illo mollitia aut tempora commodi.', 7, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(69, 'Устинова Фаина Владимировна', 'Distinctio debitis qui enim.', 7, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(70, 'Суворова Наталья Максимовна', 'Cum ratione earum placeat.', 7, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(71, 'Новиков Юлиан Фёдорович', 'Et nemo aut quas omnis laudantium et.', 8, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(72, 'Ростислав Евгеньевич Гришин', 'Debitis itaque sed necessitatibus dicta molestias voluptatem ex.', 8, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(73, 'Марат Максимович Морозов', 'Et corrupti non molestias soluta tempore voluptas et.', 8, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(74, 'Некрасова Оксана Алексеевна', 'Et cumque quia cum et sapiente voluptas voluptatem maxime.', 8, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(75, 'Злата Борисовна Матвеева', 'Omnis ut dolores voluptas et nihil numquam doloribus.', 8, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(76, 'Гришина Дарья Александровна', 'Enim enim maiores consequatur illo omnis.', 8, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(77, 'Злата Романовна Семёнова', 'Ut iure error expedita occaecati iure.', 8, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(78, 'Исакова София Фёдоровна', 'Enim sint nesciunt soluta et.', 8, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(79, 'Николай Романович Артемьев', 'Ut corrupti ducimus delectus nisi neque nulla.', 8, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(80, 'Капустин Сергей Фёдорович', 'Quod vel architecto magni est.', 8, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(81, 'Ярослава Максимовна Ефремова', 'Recusandae est voluptatem consequuntur vel.', 9, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(82, 'Жанна Владимировна Медведева', 'Non labore fugit beatae aliquam qui.', 9, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(83, 'Савина Лилия Львовна', 'Et ea id quia et et minima placeat voluptatem.', 9, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(84, 'Семёнов Бронислав Алексеевич', 'Quia et deserunt hic optio ipsa voluptatum qui consequatur.', 9, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(85, 'Дарья Сергеевна Яковлева', 'Et quia harum aut velit ipsam mollitia.', 9, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(86, 'Нестеров Роман Максимович', 'Illo debitis necessitatibus quisquam ut assumenda.', 9, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(87, 'Марат Сергеевич Ермаков', 'Et sit beatae at voluptate earum eaque reiciendis.', 9, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(88, 'Виль Сергеевич Виноградов', 'Sunt rerum ex officiis soluta deleniti eum.', 9, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(89, 'Кудряшова Клементина Александровна', 'Tempore incidunt aspernatur officiis voluptatum totam sint reprehenderit rerum.', 9, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(90, 'Вишняков Григорий Иванович', 'Eius cumque minus et et iusto et asperiores.', 9, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(91, 'Аполлон Сергеевич Самсонов', 'Assumenda doloremque error ut perferendis et.', 10, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(92, 'Абрамова Любовь Евгеньевна', 'Ullam et ut libero facilis assumenda sapiente numquam.', 10, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(93, 'Викентий Евгеньевич Фёдоров', 'Aperiam quia sunt repellat.', 10, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(94, 'Татьяна Романовна Дорофеева', 'Et nihil sed qui et optio quam et.', 10, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(95, 'Нелли Борисовна Логинова', 'Aut numquam error nemo dolor.', 10, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(96, 'Рожков Милан Дмитриевич', 'Molestiae et quis et aut.', 10, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(97, 'Милан Андреевич Лаврентьев', 'Placeat harum voluptate debitis sapiente mollitia sed a.', 10, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(98, 'Федосья Романовна Быкова', 'Officia officiis ducimus beatae quasi.', 10, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(99, 'Алёна Дмитриевна Игнатьева', 'Eos quas sint perspiciatis deserunt.', 10, '2024-03-14 13:06:03', '2024-03-14 13:06:03'),
(100, 'Ермаков Афанасий Владимирович', 'Aut est incidunt ut ipsa.', 10, '2024-03-14 13:06:03', '2024-03-14 13:06:03');

-- --------------------------------------------------------

--
-- Структура таблицы `part_recipients`
--

CREATE TABLE `part_recipients` (
  `id` bigint UNSIGNED NOT NULL,
  `donor_id` bigint UNSIGNED NOT NULL,
  `recipient_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Структура таблицы `people`
--

CREATE TABLE `people` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Ann',
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Ivanova',
  `passport` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '5678 567878',
  `gender` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `people`
--

INSERT INTO `people` (`id`, `name`, `surname`, `passport`, `gender`, `created_at`, `updated_at`) VALUES
(2, 'Лука', 'Федосеев', '9531165575', 0, '2024-03-11 12:12:41', '2024-03-11 12:41:31'),
(3, 'Стефан', 'Волков', '9757502302', 0, '2024-03-11 12:12:41', '2024-03-11 12:12:41'),
(5, 'Ника Александровна', 'Меркушев', '6172585914', 1, '2024-03-11 12:12:41', '2024-03-11 12:12:41'),
(6, 'Аполлон ', 'Шубина', '9498719121', 1, '2024-03-11 12:12:41', '2024-03-11 12:12:41'),
(7, 'Пестов', 'Воробьёва', '7097807608', 1, '2024-03-11 12:12:41', '2024-03-11 12:12:41'),
(8, ' Таисия ', 'Кузьмина', '6756879479', 0, '2024-03-11 12:12:41', '2024-03-11 12:12:41'),
(9, 'Искра', 'Иванов', '5756253630', 1, '2024-03-11 12:12:41', '2024-03-11 12:12:41'),
(10, 'Галина', 'Воронова', '8145213291', 0, '2024-03-11 12:12:41', '2024-03-11 12:12:41'),
(11, 'Ann', 'Ivanova', '5678 567878', 1, '2024-03-11 12:27:26', '2024-03-11 12:27:26'),
(12, 'Alice', 'Smith', '5678 567878', 1, '2024-03-11 12:30:26', '2024-03-11 12:30:26'),
(13, 'Alice', 'Smith', '5678 567878', 1, '2024-03-11 12:33:04', '2024-03-11 12:33:04'),
(14, 'Alice', 'Smith', '5678 567878', 1, '2024-03-11 12:33:15', '2024-03-11 12:33:15'),
(15, 'Alice', 'Smith', '5678 567878', 1, '2024-03-11 12:34:07', '2024-03-11 12:34:07'),
(16, 'Alice', 'Smith', '4545676767', 1, '2024-03-11 12:34:35', '2024-03-11 12:34:35'),
(17, 'Alice', 'Smith', '4545676767', 1, '2024-03-11 12:36:24', '2024-03-11 12:36:24'),
(18, 'Alice', 'Smith', '4545676766', 1, '2024-03-11 12:42:14', '2024-03-11 12:42:14'),
(19, 'Alice', 'Smith', '4545676717', 1, '2024-03-11 12:42:21', '2024-03-11 12:42:21'),
(20, 'Alice', 'Smith', '4545676717', 1, '2024-03-12 07:52:34', '2024-03-12 07:52:34'),
(21, 'Alice', 'Smith', '4545676717', 1, '2024-03-12 11:31:56', '2024-03-12 11:31:56');

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
-- Индексы таблицы `part_recipients`
--
ALTER TABLE `part_recipients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `part_recipients_donor_id_foreign` (`donor_id`),
  ADD KEY `part_recipients_recipient_id_foreign` (`recipient_id`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `participants`
--
ALTER TABLE `participants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT для таблицы `part_recipients`
--
ALTER TABLE `part_recipients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `people`
--
ALTER TABLE `people`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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

--
-- Ограничения внешнего ключа таблицы `part_recipients`
--
ALTER TABLE `part_recipients`
  ADD CONSTRAINT `part_recipients_donor_id_foreign` FOREIGN KEY (`donor_id`) REFERENCES `participants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `part_recipients_recipient_id_foreign` FOREIGN KEY (`recipient_id`) REFERENCES `participants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
