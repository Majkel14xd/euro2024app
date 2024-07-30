-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Cze 21, 2024 at 11:26 AM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `euro2024`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-06-20 15:57:23.826903'),
(2, 'auth', '0001_initial', '2024-06-20 15:57:25.521865'),
(3, 'admin', '0001_initial', '2024-06-20 15:57:25.846935'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-06-20 15:57:25.892089'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-06-20 15:57:25.926940'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-06-20 15:57:26.167232'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-06-20 15:57:26.356710'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-06-20 15:57:26.394570'),
(9, 'auth', '0004_alter_user_username_opts', '2024-06-20 15:57:26.410021'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-06-20 15:57:26.556691'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-06-20 15:57:26.561729'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-06-20 15:57:26.581840'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-06-20 15:57:26.621309'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-06-20 15:57:26.721232'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-06-20 15:57:26.810359'),
(16, 'auth', '0011_update_proxy_permissions', '2024-06-20 15:57:26.827058'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-06-20 15:57:26.867104'),
(18, 'euro2024app', '0001_initial', '2024-06-20 15:57:26.876714'),
(19, 'sessions', '0001_initial', '2024-06-20 15:57:26.969810'),
(20, 'euro2024app', '0002_auto_20240621_1116', '2024-06-21 09:17:06.302834');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `druzyna`
--

CREATE TABLE `druzyna` (
  `ID_Druzyny` int(11) NOT NULL,
  `Nazwa_druzyny` varchar(100) NOT NULL,
  `ID_Grupy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `druzyna`
--

INSERT INTO `druzyna` (`ID_Druzyny`, `Nazwa_druzyny`, `ID_Grupy`) VALUES
(1, 'Niemcy', 1),
(2, 'Węgry', 1),
(3, 'Szwajcaria', 1),
(4, 'Szkocja', 1),
(5, 'Hiszpania', 2),
(6, 'Chorwacja', 2),
(7, 'Włochy', 2),
(8, 'Albania', 2),
(9, 'Słowenia', 3),
(10, 'Dania', 3),
(11, 'Serbia', 3),
(12, 'Anglia', 3),
(13, 'Polska', 4),
(14, 'Holandia', 4),
(15, 'Austria', 4),
(16, 'Francja', 4),
(17, 'Belgia', 5),
(18, 'Słowacja', 5),
(19, 'Rumunia', 5),
(20, 'Ukraina', 5),
(21, 'Turcja', 6),
(22, 'Gruzja', 6),
(23, 'Portugalia', 6),
(24, 'Czechy', 6);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gracze`
--

CREATE TABLE `gracze` (
  `ID_Gracza` int(11) NOT NULL,
  `Imie` varchar(100) NOT NULL,
  `Nazwisko` varchar(100) NOT NULL,
  `ID_Druzyny` int(11) DEFAULT NULL,
  `Pozycja` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gracze`
--

INSERT INTO `gracze` (`ID_Gracza`, `Imie`, `Nazwisko`, `ID_Druzyny`, `Pozycja`) VALUES
(2, 'Robert', 'Lewandowski', 1, 'Napastnik'),
(3, 'Kamil', 'Glik', 1, 'Obrońca'),
(4, 'Sergio', 'Ramos', 2, 'Obrońca'),
(5, 'Gerard', 'Pique', 2, 'Obrońca'),
(6, 'Kylian', 'Mbappe', 3, 'Napastnik'),
(7, 'Antoine', 'Griezmann', 3, 'Napastnik'),
(8, 'Manuel', 'Neuer', 4, 'Bramkarz'),
(9, 'Thomas', 'Muller', 4, 'Napastnik'),
(10, 'Gianluigi', 'Donnarumma', 5, 'Bramkarz'),
(11, 'Marco', 'Verratti', 5, 'Pomocnik'),
(12, 'Cristiano', 'Ronaldo', 6, 'Napastnik'),
(13, 'Bruno', 'Fernandes', 6, 'Pomocnik'),
(14, 'Robert', 'Lewandowski', 1, 'Napastnik'),
(15, 'Kamil', 'Glik', 1, 'Obrońca'),
(16, 'Sergio', 'Ramos', 2, 'Obrońca'),
(17, 'Gerard', 'Pique', 2, 'Obrońca'),
(18, 'Kylian', 'Mbappe', 3, 'Napastnik'),
(19, 'Antoine', 'Griezmann', 3, 'Napastnik'),
(20, 'Manuel', 'Neuer', 4, 'Bramkarz'),
(21, 'Thomas', 'Muller', 4, 'Napastnik'),
(22, 'Gianluigi', 'Donnarumma', 5, 'Bramkarz'),
(23, 'Marco', 'Verratti', 5, 'Pomocnik'),
(24, 'Cristiano', 'Ronaldo', 6, 'Napastnik'),
(25, 'Bruno', 'Fernandes', 6, 'Pomocnik'),
(27, 'Jan', 'Kowalski', 1, 'Napastnik');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `grupy`
--

CREATE TABLE `grupy` (
  `ID_Grupy` int(11) NOT NULL,
  `Nazwa_grupy` char(1) NOT NULL CHECK (`Nazwa_grupy` in ('A','B','C','D','E','F'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grupy`
--

INSERT INTO `grupy` (`ID_Grupy`, `Nazwa_grupy`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D'),
(5, 'E'),
(6, 'F');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `mecze`
--

CREATE TABLE `mecze` (
  `ID_Meczu` int(11) NOT NULL,
  `ID_Stadionu` int(11) DEFAULT NULL,
  `Data_meczu` date NOT NULL,
  `Faza_turnieju` varchar(50) NOT NULL,
  `Gospodarz_ID_Druzyny` int(11) DEFAULT NULL,
  `Gosc_ID_Druzyny` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mecze`
--

INSERT INTO `mecze` (`ID_Meczu`, `ID_Stadionu`, `Data_meczu`, `Faza_turnieju`, `Gospodarz_ID_Druzyny`, `Gosc_ID_Druzyny`) VALUES
(1, 3, '2024-06-04', 'Fazagrupowa', 1, 2),
(2, 3, '2024-06-04', 'Fazagrupowa', 2, 4),
(3, 1, '2024-06-04', 'Fazagrupowa', 20, 19);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stadion`
--

CREATE TABLE `stadion` (
  `ID_Stadionu` int(11) NOT NULL,
  `Nazwa_stadionu` varchar(100) NOT NULL,
  `Pojemnosc` int(11) NOT NULL,
  `Miasto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stadion`
--

INSERT INTO `stadion` (`ID_Stadionu`, `Nazwa_stadionu`, `Pojemnosc`, `Miasto`) VALUES
(1, 'Stadion w Berlinie', 80000, 'Berlin'),
(2, 'Stadion w Hamburgu', 60000, 'Hamburg'),
(3, 'Stadion w Stuttgarcie', 55000, 'Stuttgart'),
(4, 'Stadion w Kolonii', 70000, 'Kolonia'),
(5, 'Stadion w Monachium', 75000, 'Monachium'),
(6, 'Stadion we Frankfurcie', 72000, 'Frankfurt'),
(7, 'Stadion w Düsseldorfie', 68000, 'Duesseldorf'),
(8, 'Stadion w Lipsku', 60000, 'Lipsk'),
(9, 'Stadion w Gelsenkirchen', 62000, 'Gelsenkirchen'),
(10, 'Stadion w Berlinie', 80000, 'Berlin'),
(11, 'Stadion w Hamburgu', 60000, 'Hamburg'),
(12, 'Stadion w Stuttgarcie', 55000, 'Stuttgart'),
(13, 'Stadion w Kolonii', 70000, 'Kolonia'),
(14, 'Stadion w Monachium', 75000, 'Monachium'),
(15, 'Stadion we Frankfurcie', 72000, 'Frankfurt'),
(16, 'Stadion w Düsseldorfie', 68000, 'Duesseldorf'),
(17, 'Stadion w Lipsku', 60000, 'Lipsk'),
(18, 'Stadion w Gelsenkirchen', 62000, 'Gelsenkirchen');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `statystyki_meczu`
--

CREATE TABLE `statystyki_meczu` (
  `ID_Statystyki_meczu` int(11) NOT NULL,
  `ID_Meczu` int(11) DEFAULT NULL,
  `Posiadanie_pilki_gospodarzy` decimal(5,2) NOT NULL,
  `Posiadanie_pilki_gosci` decimal(5,2) NOT NULL,
  `Strzaly_gospodarzy` int(11) NOT NULL,
  `Strzaly_gosci` int(11) NOT NULL,
  `Strzaly_celne_gospodarzy` int(11) NOT NULL,
  `Strzaly_celne_gosci` int(11) NOT NULL,
  `Zolte_kartki_gospodarzy` int(11) NOT NULL,
  `Zolte_kartki_gosci` int(11) NOT NULL,
  `Czerwone_kartki_gospodarzy` int(11) NOT NULL,
  `Czerwone_kartki_gosci` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `statystyki_meczu`
--

INSERT INTO `statystyki_meczu` (`ID_Statystyki_meczu`, `ID_Meczu`, `Posiadanie_pilki_gospodarzy`, `Posiadanie_pilki_gosci`, `Strzaly_gospodarzy`, `Strzaly_gosci`, `Strzaly_celne_gospodarzy`, `Strzaly_celne_gosci`, `Zolte_kartki_gospodarzy`, `Zolte_kartki_gosci`, `Czerwone_kartki_gospodarzy`, `Czerwone_kartki_gosci`) VALUES
(1, 1, 32.00, 32.00, 32, 23, 32, 32, 3, 32, 3, 3),
(2, 2, 55.50, 44.50, 10, 8, 5, 3, 2, 1, 0, 0),
(4, 3, 22.00, 44.00, 3, 2, 3, 2, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wyniki`
--

CREATE TABLE `wyniki` (
  `ID_Wyniku` int(11) NOT NULL,
  `ID_Meczu` int(11) DEFAULT NULL,
  `Gospodarz_ilosc_goli` int(11) DEFAULT NULL CHECK (`Gospodarz_ilosc_goli` >= 0),
  `Gosc_ilosc_goli` int(11) DEFAULT NULL CHECK (`Gosc_ilosc_goli` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wyniki`
--

INSERT INTO `wyniki` (`ID_Wyniku`, `ID_Meczu`, `Gospodarz_ilosc_goli`, `Gosc_ilosc_goli`) VALUES
(1, 1, 2, 3),
(2, 2, 2, 2),
(3, 3, 3, 3);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeksy dla tabeli `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indeksy dla tabeli `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indeksy dla tabeli `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeksy dla tabeli `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indeksy dla tabeli `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indeksy dla tabeli `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indeksy dla tabeli `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indeksy dla tabeli `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indeksy dla tabeli `druzyna`
--
ALTER TABLE `druzyna`
  ADD PRIMARY KEY (`ID_Druzyny`),
  ADD KEY `ID_Grupy` (`ID_Grupy`);

--
-- Indeksy dla tabeli `gracze`
--
ALTER TABLE `gracze`
  ADD PRIMARY KEY (`ID_Gracza`),
  ADD KEY `ID_Druzyny` (`ID_Druzyny`);

--
-- Indeksy dla tabeli `grupy`
--
ALTER TABLE `grupy`
  ADD PRIMARY KEY (`ID_Grupy`);

--
-- Indeksy dla tabeli `mecze`
--
ALTER TABLE `mecze`
  ADD PRIMARY KEY (`ID_Meczu`),
  ADD KEY `Gospodarz_ID_Druzyny` (`Gospodarz_ID_Druzyny`),
  ADD KEY `Gosc_ID_Druzyny` (`Gosc_ID_Druzyny`),
  ADD KEY `ID_Stadionu` (`ID_Stadionu`);

--
-- Indeksy dla tabeli `stadion`
--
ALTER TABLE `stadion`
  ADD PRIMARY KEY (`ID_Stadionu`);

--
-- Indeksy dla tabeli `statystyki_meczu`
--
ALTER TABLE `statystyki_meczu`
  ADD PRIMARY KEY (`ID_Statystyki_meczu`),
  ADD KEY `ID_Meczu` (`ID_Meczu`);

--
-- Indeksy dla tabeli `wyniki`
--
ALTER TABLE `wyniki`
  ADD PRIMARY KEY (`ID_Wyniku`),
  ADD KEY `ID_Meczu` (`ID_Meczu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `druzyna`
--
ALTER TABLE `druzyna`
  MODIFY `ID_Druzyny` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `gracze`
--
ALTER TABLE `gracze`
  MODIFY `ID_Gracza` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `grupy`
--
ALTER TABLE `grupy`
  MODIFY `ID_Grupy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mecze`
--
ALTER TABLE `mecze`
  MODIFY `ID_Meczu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stadion`
--
ALTER TABLE `stadion`
  MODIFY `ID_Stadionu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `statystyki_meczu`
--
ALTER TABLE `statystyki_meczu`
  MODIFY `ID_Statystyki_meczu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wyniki`
--
ALTER TABLE `wyniki`
  MODIFY `ID_Wyniku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `druzyna`
--
ALTER TABLE `druzyna`
  ADD CONSTRAINT `druzyna_ibfk_1` FOREIGN KEY (`ID_Grupy`) REFERENCES `grupy` (`ID_Grupy`);

--
-- Constraints for table `gracze`
--
ALTER TABLE `gracze`
  ADD CONSTRAINT `gracze_ibfk_1` FOREIGN KEY (`ID_Druzyny`) REFERENCES `druzyna` (`ID_Druzyny`);

--
-- Constraints for table `mecze`
--
ALTER TABLE `mecze`
  ADD CONSTRAINT `mecze_ibfk_1` FOREIGN KEY (`Gospodarz_ID_Druzyny`) REFERENCES `druzyna` (`ID_Druzyny`),
  ADD CONSTRAINT `mecze_ibfk_2` FOREIGN KEY (`Gosc_ID_Druzyny`) REFERENCES `druzyna` (`ID_Druzyny`),
  ADD CONSTRAINT `mecze_ibfk_3` FOREIGN KEY (`ID_Stadionu`) REFERENCES `stadion` (`ID_Stadionu`);

--
-- Constraints for table `statystyki_meczu`
--
ALTER TABLE `statystyki_meczu`
  ADD CONSTRAINT `statystyki_meczu_ibfk_1` FOREIGN KEY (`ID_Meczu`) REFERENCES `mecze` (`ID_Meczu`);

--
-- Constraints for table `wyniki`
--
ALTER TABLE `wyniki`
  ADD CONSTRAINT `wyniki_ibfk_1` FOREIGN KEY (`ID_Meczu`) REFERENCES `mecze` (`ID_Meczu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
