-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-01-2023 a las 23:09:23
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ves`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `candidates`
--

CREATE TABLE `candidates` (
  `name` varchar(100) NOT NULL,
  `phone_number` varchar(12) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `date_submitted` date NOT NULL,
  `position` varchar(100) NOT NULL,
  `type_of_role` varchar(6) NOT NULL,
  `company` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `notes` varchar(50) NOT NULL,
  `candidates_id` bigint(250) NOT NULL,
  `team_id` int(3) NOT NULL,
  `recruiter_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `candidates`
--

INSERT INTO `candidates` (`name`, `phone_number`, `email`, `date_submitted`, `position`, `type_of_role`, `company`, `city`, `notes`, `candidates_id`, `team_id`, `recruiter_id`) VALUES
('pedro', '343545', 'pedro@gmail.com', '2022-12-13', 'recruter', 'h', 'ffkd', 'londres', 'jbjbj      ', 1, 7, 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cargo`
--

CREATE TABLE `cargo` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `cargo`
--

INSERT INTO `cargo` (`id`, `descripcion`) VALUES
(1, 'usuario'),
(2, 'lider'),
(3, 'administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clients`
--

CREATE TABLE `clients` (
  `ï»¿client_id` int(11) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `level` int(11) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `clients`
--



-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `positions`
--

CREATE TABLE `positions` (
  `positions_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `company_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `positions`
--



-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `positions_recruiters`
--

CREATE TABLE `positions_recruiters` (
  `id_positions_recruiters` bigint(20) NOT NULL,
  `recruiters_id` bigint(20) NOT NULL,
  `positions_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `positions_recruiters`
--

INSERT INTO `positions_recruiters` (`id_positions_recruiters`, `recruiters_id`, `positions_id`) VALUES
(1, 1, 1),
(2, 17, 16),
(3, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recruiters`
--

CREATE TABLE `recruiters` (
  `recruiters_id` bigint(20) NOT NULL,
  `pep` varchar(50) DEFAULT NULL,
  `myunknowncolumn` varchar(10) DEFAULT NULL,
  `td` varchar(20) DEFAULT NULL,
  `passport` varchar(50) DEFAULT NULL,
  `full_name` char(100) DEFAULT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `middle_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `second_last_name` varchar(20) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `bank_account` varchar(100) DEFAULT NULL,
  `adress` text DEFAULT NULL,
  `identification` varchar(20) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `entry_date` date DEFAULT NULL,
  `allergies` varchar(50) DEFAULT NULL,
  `type_blood` char(5) DEFAULT NULL,
  `eps` varchar(50) DEFAULT NULL,
  `pension_fund` char(20) DEFAULT NULL,
  `bank` varchar(20) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `recruiterscol` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `recruiters`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recruiters_clients`
--

CREATE TABLE `recruiters_clients` (
  `id_recruiters__clients` int(11) NOT NULL,
  `recruiters_id` bigint(20) NOT NULL,
  `clients_id` int(11) NOT NULL,
  `recruiter_name` varchar(45) DEFAULT NULL,
  `client_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `recruiters_clients`
--

INSERT INTO `recruiters_clients` (`id_recruiters__clients`, `recruiters_id`, `clients_id`, `recruiter_name`, `client_name`) VALUES
(1, 1, 1, 'j', 'HMShost'),
(8, 13, 11, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `teams`
--

CREATE TABLE `teams` (
  `team_id` int(11) NOT NULL,
  `team_name` varchar(20) NOT NULL,
  `workgroup` varchar(20) NOT NULL,
  `leader_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `teams`
--

INSERT INTO `teams` (`team_id`, `team_name`, `workgroup`, `leader_id`) VALUES
(1, 'Alpha', 'Headhunter', 4),
(2, 'Bravo', 'Headhunter', 8),
(3, 'Charlie', 'Headhunter', 5),
(4, 'Delta', 'Headhunter', 24),
(5, 'Echo', 'Headhunter', 49),
(6, 'Foxtrot', 'Headhunter', 87),
(7, 'Golf', 'Headhunter', 13),
(8, 'Hotel', 'Phoenix', 12),
(9, 'India', 'Phoenix', 78),
(10, 'Julieth', 'Phoenix', 59),
(11, 'Kilo', 'Phoenix', 96),
(12, 'Lima', 'Phoenix', 43),
(13, 'Mike', 'Phoenix', 66);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `usuarios` varchar(255) NOT NULL,
  `contraseña` varchar(255) NOT NULL,
  `id_cargo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuarios`, `contraseña`, `id_cargo`) VALUES
(1, 'Yeison santiago mesa velez', 'DESARROLLADOR', 'yeison', 3),
(3, 'root', 'root', '1234567', 2),
(4, 'empleado de prueba', 'empleado', '1234567', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`candidates_id`);

--
-- Indices de la tabla `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`ï»¿client_id`),
  ADD UNIQUE KEY `client_name_UNIQUE` (`client_name`),
  ADD UNIQUE KEY `ï»¿client_id_UNIQUE` (`ï»¿client_id`);

--
-- Indices de la tabla `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`positions_id`),
  ADD KEY `positions_clients_idx` (`company_id`);

--
-- Indices de la tabla `positions_recruiters`
--
ALTER TABLE `positions_recruiters`
  ADD PRIMARY KEY (`id_positions_recruiters`),
  ADD KEY `positions_recruiters_idx` (`positions_id`),
  ADD KEY `recruiters_positions_idx` (`recruiters_id`);

--
-- Indices de la tabla `recruiters`
--
ALTER TABLE `recruiters`
  ADD PRIMARY KEY (`recruiters_id`),
  ADD KEY `recruiters_teams_idx` (`team_id`);

--
-- Indices de la tabla `recruiters_clients`
--
ALTER TABLE `recruiters_clients`
  ADD PRIMARY KEY (`id_recruiters__clients`),
  ADD KEY `clients_recruiterss` (`clients_id`),
  ADD KEY `recruiters_clients` (`recruiters_id`);

--
-- Indices de la tabla `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`team_id`),
  ADD UNIQUE KEY `team_name` (`team_name`),
  ADD KEY `teams_recruiters_idx` (`leader_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cargo` (`id_cargo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `candidates`
--
ALTER TABLE `candidates`
  MODIFY `candidates_id` bigint(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `cargo`
--
ALTER TABLE `cargo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `clients`
--
ALTER TABLE `clients`
  MODIFY `ï»¿client_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `positions`
--
ALTER TABLE `positions`
  MODIFY `positions_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT de la tabla `positions_recruiters`
--
ALTER TABLE `positions_recruiters`
  MODIFY `id_positions_recruiters` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `recruiters`
--
ALTER TABLE `recruiters`
  MODIFY `recruiters_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1192912105;

--
-- AUTO_INCREMENT de la tabla `recruiters_clients`
--
ALTER TABLE `recruiters_clients`
  MODIFY `id_recruiters__clients` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `teams`
--
ALTER TABLE `teams`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `positions`
--
ALTER TABLE `positions`
  ADD CONSTRAINT `positions_clients` FOREIGN KEY (`company_id`) REFERENCES `clients` (`ï»¿client_id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `positions_recruiters`
--
ALTER TABLE `positions_recruiters`
  ADD CONSTRAINT `positions_recruiters` FOREIGN KEY (`positions_id`) REFERENCES `positions` (`positions_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `recruiters_positions` FOREIGN KEY (`recruiters_id`) REFERENCES `recruiters` (`recruiters_id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `recruiters`
--
ALTER TABLE `recruiters`
  ADD CONSTRAINT `recruiters_teams` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `recruiters_clients`
--
ALTER TABLE `recruiters_clients`
  ADD CONSTRAINT `clients_recruiters` FOREIGN KEY (`clients_id`) REFERENCES `clients` (`ï»¿client_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `recruiters_clients` FOREIGN KEY (`recruiters_id`) REFERENCES `recruiters` (`recruiters_id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `teams`
--
ALTER TABLE `teams`
  ADD CONSTRAINT `teams_recruiters` FOREIGN KEY (`leader_id`) REFERENCES `recruiters` (`recruiters_id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_cargo`) REFERENCES `cargo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
