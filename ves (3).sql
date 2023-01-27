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

INSERT INTO `clients` (`ï»¿client_id`, `client_name`, `level`, `location`) VALUES
(1, 'Blackstono', 1, 'USA'),
(2, 'American Dental Association', 3, 'USA'),
(3, 'Enersys', 1, 'USA'),
(4, 'CoreCivic', 1, 'USA'),
(5, 'HMShost', 1, 'USA'),
(6, 'Sofidel', 1, 'USA'),
(7, 'Herritage Finantial', 1, 'USA'),
(8, 'Great American Bagel', 3, 'USA'),
(9, 'Jknipper', 1, 'USA'),
(10, 'PGE', 1, 'USA'),
(11, 'Mphasis', 1, 'USA'),
(12, 'Getty Images', 1, 'USA'),
(13, 'Streamsong Resort', 1, 'USA');

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

INSERT INTO `positions` (`positions_id`, `name`, `company`, `company_id`) VALUES
(1, 'Director, Integrated Marketing and Content Engagement', 'American Dental Association', 1),
(2, 'Manager, Predoctoral Dental Education', 'American Dental Association', 3),
(3, 'Manager, Science and Research Communications', 'American Dental Association', NULL),
(4, 'Marketing Copywriter ', 'American Dental Association', NULL),
(5, 'Research Testing Analyst', 'American Dental Association', NULL),
(6, 'Salesforce Solution Architect', 'American Dental Association', NULL),
(7, ' Talent Acquisition Partner', 'American Dental Association', NULL),
(8, 'Data Enrichment & Integrity Analyst', 'American Dental Association', NULL),
(9, '.Net', 'Mphasis', NULL),
(10, 'SDET', 'Mphasis', NULL),
(11, 'BA', 'Mphasis', NULL),
(12, 'Cloud Developer', 'Mphasis', NULL),
(13, 'Java Developer', 'Mphasis', NULL),
(14, 'QA Automation', 'Mphasis', NULL),
(15, 'Crew Member', 'HMShost', NULL),
(16, 'Cook', 'HMShost', NULL),
(17, 'Line Cook', 'HMShost', NULL),
(18, 'Cook I, II & III', 'HMShost', NULL),
(19, 'Second Cook', 'HMShost', NULL),
(20, 'Specialty Cook', 'HMShost', NULL),
(21, 'Barista', 'HMShost', NULL),
(22, 'Shift Manager', 'HMShost', NULL),
(23, 'Utility', 'HMShost', NULL),
(24, 'Warehouse Receiver', 'HMShost', NULL),
(25, 'Storeroom Clerk', 'HMShost', NULL),
(26, 'Runner', 'HMShost', NULL),
(27, 'Floor Attendant', 'HMShost', NULL),
(28, 'Floor Captain', 'HMShost', NULL),
(29, 'Lounge Cook', 'HMShost', NULL),
(30, 'Prep Cook', 'HMShost', NULL),
(31, 'Server', 'HMShost', NULL),
(32, 'Bartender', 'HMShost', NULL),
(33, 'General Manager', 'HMShost', NULL),
(34, 'Sous Chef', 'HMShost', NULL),
(35, 'Host/Hostess', 'HMShost', NULL),
(36, 'Human Resources Generalist', 'HMShost', NULL),
(37, 'Ops. Manager', 'HMShost', NULL),
(38, 'Cashier', 'HMShost', NULL),
(39, 'HR Coordinator', 'HMShost', NULL),
(40, 'Snack Bar Attendant', 'HMShost', NULL),
(41, 'Fast Food Attendant', 'HMShost', NULL),
(42, 'Ops. Coordinator', 'HMShost', NULL),
(43, 'HR Specialist/ Recruiter', 'HMShost', NULL),
(44, 'Bar Steward', 'HMShost', NULL),
(45, 'HR Business Partner', 'HMShost', NULL),
(46, 'system engineer 3', 'Blackstone', NULL),
(47, 'software engineer 3', 'Blackstone', NULL),
(48, 'Senior Digital', 'Blackstone', NULL),
(49, 'Programmer Analyst 3', 'Blackstone', NULL),
(50, 'software engineer 5', 'Blackstone', NULL),
(51, 'electrical engineer 5', 'Blackstone', NULL),
(52, 'Real Time SW Eng. lead', 'Blackstone', NULL),
(53, 'Web App Developer', 'Blackstone', NULL),
(54, 'Senior Frontend Software Engineer', 'GettyImages', NULL),
(55, 'Royalties Services - Senior Software Engineer', 'GettyImages', NULL),
(56, 'Enterprise Integration Software Engineer', 'GettyImages', NULL),
(57, 'Forklift Operator', 'Sofidel', NULL),
(58, 'Case Packaging Operator', 'Sofidel', NULL),
(59, 'Paper Mill Machine Operator', 'Sofidel', NULL),
(60, 'E&I Technician', 'Sofidel', NULL),
(61, 'Converting/Rewinder Operator', 'Sofidel', NULL),
(62, 'Machine Operator', 'Sofidel', NULL),
(63, 'Folder Operator', 'Sofidel', NULL),
(64, 'Patient Care Representative', 'Jknipper', NULL),
(65, 'Patient Support Services Representative', 'Jknipper', NULL),
(66, 'Professional Services Coordinator', 'Jknipper', NULL),
(67, 'Production Mechanic', 'Jknipper', NULL),
(68, 'Patient Care Representative PAP', 'Jknipper', NULL),
(69, 'Patinet Advocate Pharmacy (PAP)', 'Jknipper', NULL),
(70, 'Pharmacy Shipping Associate', 'Jknipper', NULL),
(71, 'Operations Leader', 'Jknipper', NULL),
(72, 'Patient Care Representative PAP- Temp to hire', 'Jknipper', NULL),
(73, 'Patient Advocate Pharmacy (PAP)- Temp to hire', 'Jknipper', NULL),
(74, 'Re-enrollment Advocate', 'Jknipper', NULL),
(75, 'Tecnical Support Specialist', 'Jknipper', NULL),
(76, 'Registered Nurse', 'CoreCivic', NULL),
(77, 'Instructor Officer', 'CoreCivic', NULL),
(78, 'Teller', 'Herritage', NULL),
(79, 'FSR', 'Herritage', NULL),
(80, 'Administrative Assistant', 'Herritage', NULL),
(81, 'Compliance Analyst', 'Herritage', NULL),
(82, 'Assitant Manager', 'Streamsong Resort', NULL),
(83, 'Sous chef', 'Streamsong Resort', NULL),
(84, 'Line Cook', 'Streamsong Resort', NULL),
(85, 'Room attendant', 'Streamsong Resort', NULL),
(86, 'Maintenance Technician', 'Enersys', NULL),
(87, 'Toll and Die Technician', 'Enersys', NULL),
(88, 'Production Associate', 'Enersys', NULL),
(89, 'Inventory Control Clerk', 'Enersys', NULL),
(90, 'Electromechanical Assembler', 'Enersys', NULL),
(91, 'Electromechanical Assembler II', 'Enersys', NULL),
(92, 'Bilingual overnight Production Supervisor', 'Enersys', NULL),
(93, 'barista de marketin', 'peta', 2);

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

INSERT INTO `recruiters` (`recruiters_id`, `pep`, `myunknowncolumn`, `td`, `passport`, `full_name`, `first_name`, `middle_name`, `last_name`, `second_last_name`, `birth_date`, `phone_number`, `email`, `position`, `bank_account`, `adress`, `identification`, `city`, `entry_date`, `allergies`, `type_blood`, `eps`, `pension_fund`, `bank`, `team_id`, `recruiterscol`) VALUES
(1, '', '5001', '13', '', 'AGUDELO MANRIQUE TIFANY', 'TIFANY', '', 'AGUDELO', 'MANRIQUE', '1997-03-01', '3504373984', 'tifany.psicologa@gmail.com', 'Recruiter ', '61177175284', 'Calle 39 AA # 59 D 46 ', '1152706899', 'MedellÃ­n', '2021-11-16', '', 'O+', 'Salud Total', ' Colpensiones', '', 9, ''),
(2, '', '', '13', '', 'AMADOR SEPULVEDA SANTIAGO', 'SANTIAGO', '', 'AMADOR', 'SEPULVEDA', '1999-06-03', '3226865031', 'santiagoamador15@gmail.com', 'Recruiter', '91224345157', 'cll 53 #8 A 14', '1017270590', 'MedellÃ­n', '2022-05-02', '', 'O+', 'SURA', ' Proteccion', '', 4, NULL),
(3, '', '5001', '13', '', 'ARANGO JARAMILLO SAMANTHA MARIA', 'SAMANTHA', 'MARIA', 'ARANGO', 'JARAMILLO', '1995-02-03', '3105889521', 'samyarango@gmail.com', 'Recruiter ', '31954334859', 'Carrera79 #57-65 los colores', '1125784072', 'MedellÃ­n', '2022-02-07', 'Penicilina', 'A+', 'SURA', ' Proteccion', '', 10, NULL),
(4, '', '5001', '13', '', 'ARANGO JARAMILLO SILVANNA ISABEL', 'SILVANNA', 'ISABEL', 'ARANGO', 'JARAMILLO', '1997-06-18', '3245742826', 'silvanna.isabel@gmail.com', 'SR Account Manager \n', '910413643', 'cra 78a #57 65', '1125784073', 'MedellÃ­n', '2021-04-07', 'Strawberries', 'O+', 'SURA', ' Proteccion', '', 1, NULL),
(5, '', '5001', '13', '', 'ARBELAEZ REYES CRISTIAN EDUARDO', 'CRISTIAN', 'EDUARDO', 'ARBELAEZ', 'REYES', '1995-04-28', '3008050350', 'titian_12@hotmail.com', 'SR Recruiter ', '51791682111', 'Calle 28 #81A-84, Medellin / Carrera 68 sur # 45-16, Medellin', '1083002183', 'MedellÃ­n', '2021-09-01', '', 'A+', 'SURA ', ' Colpensiones', '', 3, NULL),
(6, '', '5001', '22', '', 'ATWATER ALEXANDER ALVIN', 'ALEXANDER', 'ALVIN', 'ATWATER', '', '2003-07-11', '3054050753', 'alexatwater07@gmail.com', 'Recruiter ', '729346110', 'Cra 82a #32b 147', '485103', 'MedellÃ­n', '2021-12-06', 'Nueces, mani, frutos secos', 'O-', 'SURA', ' Proteccion', '', 12, NULL),
(7, '', '5001', '13', '', 'AYA PARRA PAULA LORENA', 'PAULA', 'LORENA', 'AYA', 'PARRA', '1995-08-03', '3502830855', 'pau-aya@hotmail.com', 'Lead Recuiter', '23619998588', 'Carrera 85A # 47DD - 25, Apto 506\nEdificio Villa Laura', '1125293602', 'MedellÃ­n', '2021-04-26', 'Ibuprofeno, penicilina , Jaibas y canela', 'O+', 'SURA', ' Proteccion', '', NULL, NULL),
(8, '', '5001', '13', '', 'BEDOYA ZAPATA JEISON', 'JEISON', '', 'BEDOYA', 'ZAPATA', '1993-12-24', '3013776746', 'jeisonbedoya93@hotmail.com', 'Lead Recuiter', '31153437214', 'Carrera 51A #27B - 57', '1017215245', 'MedellÃ­n', '2021-07-06', '', 'O+', 'Salud Total', ' Porvenir', '', 2, NULL),
(9, '', '5001', '13', '', 'BEJARANO CUESTA CAROLINA', 'CAROLINA', '', 'BEJARANO', 'CUESTA', '1998-02-20', '3006340995', 'carolina.be4@gmail.com', 'Recruiter ', '55020704011', 'Sincelejo, sucre', '1102881390', 'MedellÃ­n', '2022-02-07', '', 'o+', 'Salud Total', ' Proteccion', '', 9, NULL),
(10, '', '5001', '13', '', 'BELEÑO LEON RONALD GIOVANNY', 'RONALD', 'GIOVANNY', 'BELEÑO', 'LEON', '1984-11-21', '3023410460', 'giobeleno@icloud.com', 'Gerente de Recursos Humanos', '501504181', '', '91534318', 'MedellÃ­n', '2022-03-16', '', 'O+', 'Sanitas', ' Proteccion', '', NULL, NULL),
(11, '', '5001', '13', '', 'BERRIO ARISTIZABAL JUAN PABLO', 'JUAN', 'PABLO', 'BERRIO', 'ARISTIZABAL', '1995-08-20', '3207342948', 'berrioath952@gmail.com', 'Recruiter ', '91214166891', 'Diagonal 75B #6-110', '1036661161', 'MedellÃ­n', '2022-02-07', 'Atun', 'A+', 'SURA', ' Colpensiones', '', 10, NULL),
(12, '', '5266', '13', '', 'BERRIO HINCAPIE ESTEFANIA', 'ESTEFANIA', '', 'BERRIO', 'HINCAPIE', '1991-06-21', '3193472235', 'stefabsb2@gmail.com', 'Lead Recuiter', '25745204328', 'Calle 37 a sur # 28 c 55 barrio la pradera, envigado', '1037616653', 'Envigado', '2021-05-24', '', 'O+', 'SURA ', ' Proteccion', '', 8, NULL),
(13, '', '', '13', '', 'BETANCUR ESCOBAR JUAN MANUEL', 'Juan', 'Manuel', 'Betancur', 'Escobar', '2000-05-11', '3017790974', 'jmbcourtdl@gmail.com', 'Recruiter', '24310383313', 'Calle 78 sur # 56 d - 30 Las Brisas', '1007251192', 'La Estrella', '2022-05-02', '', 'O+', 'SURA', ' Porvenir', '', 1, NULL),
(14, '', '', '', '', 'BLANCO VELEZ SUSANA', 'SUSANA', '', 'BLANCO', 'VELEZ', '1999-06-03', '3053361468', 'anave785@gmail.com', 'Recruiter', '91238441385', 'cra 51c #9c sur 11', '1036686285', 'MedellÃ­n', '2022-07-12', '', 'A+', 'SURA', ' Porvenir', '', 5, NULL),
(15, '', '5001', '13', '', 'BLANDON CUESTA DEVIDSON ANDRES', 'DEVIDSON', 'ANDRES', 'BLANDON', 'CUESTA', '1998-08-13', '3053038280', 'acuesta48@gmail.com', 'Recruiter ', '50867818135', 'Cra 39a #65aa-53', '1017262193', 'MedellÃ­n', '2022-02-21', 'Rinitis', 'A+', 'SURA', ' proteccion', '', 11, NULL),
(16, '', '5001', '13', '', 'BRAVO BETANCUR MARCELA', 'MARCELA', '', 'BRAVO', 'BETANCUR', '1995-11-29', '3176482760', 'marbrabe28@hotmail.com', 'Recruiter ', '24346747443', '', '1040751282', 'MedellÃ­n', '2022-02-07', '', 'A+', 'SURA', ' Proteccion', '', 1, NULL),
(17, '', '', '', '', 'CABRERA SANABRIA LAURA MARIA', 'LAURA', 'MARIA', 'CABRERA', 'SANABRIA', '1996-08-03', '3185327703', 'lauracasan82@gmail.com', 'Recruiter', '10022373324', 'calle15C Sur #29C 83', '1152459487', 'MedellÃ­n', '2022-05-31', '', 'A+', 'SURA', ' Colpensiones', '', 5, NULL),
(18, '', '', '', '', 'CANO TORO LEIDY JULIANA', 'LEIDY', 'JULIANA', 'CANO', 'TORO', '1998-06-22', '3137355079', 'leidy_cano84161@elpoli.edu.co', 'Recruiter', '61630588692', 'calle 41 sur #62b-44 san antonio de prado', '1234990128', 'MedellÃ­n', '2022-11-07', 'Asma, Rinitis', 'O+', 'SURA', ' Porvenir', '', 3, NULL),
(19, '', '5001', '13', '', 'CANO YEPES JULIANA MARIA', 'Juliana', 'Maria', 'Cano', 'Yepes', '1998-02-03', '3175788177', 'julianacano-02@hotmail.com', 'Recruiter', '37789734985', 'calle 42sur #67a-23 apto 253', '1040758006', 'MedellÃ­n', '2022-05-02', 'Perros', 'A+', 'SURA', ' proteccion', '', 3, NULL),
(20, '', '5360', '13', '', 'CARRILLO PETRO JESICA MARIA', 'JESICA', 'MARIA', 'CARRILLO', 'PETRO', '1996-08-24', '3164985513', 'jessicarrillo0826@gmail.com', 'SR Recruiter ', '600945984', 'calle 54 A #80-10 Apto 301, Medellin', '1067950680', 'ItagÃ¼Ã­', '2021-09-01', 'Amoxicilina', 'O+', 'Salud Total', ' Porvenir', '', 10, NULL),
(21, '', '5001', '13', '', 'CASTAÃ‘O RAMIREZ MATEO', 'MATEO', '', 'CASTAÃ‘O', 'RAMIREZ', '1996-10-27', '3028530629', 'castanomateo@gmail.com', 'Recruiter ', '25534047803', 'Calle24 sur #38-44 apto1305', '1039468431', 'MedellÃ­n', '2022-02-21', '', 'O+', 'SURA', ' Porvenir', '', 11, NULL),
(22, '', '5001', '13', '', 'CASTRO PARRA MARIO ENRIQUE', 'MARIO', 'ENRIQUE', 'CASTRO', 'PARRA', '1994-08-01', '3045418124', 'marioecp94@gmail.com', 'SR Recruiter ', '728874147', 'Calle 32 # 52-17 Apto 401', '1146437495', 'MedellÃ­n', '2021-11-16', 'Mariscos, betametasona, polvo.', 'A+', 'SURA', ' Porvenir', '', 3, NULL),
(23, '', '', '', '', 'CHAHIN HERNANDEZ ALEJANDRO', 'ALEJANDRO', '', 'CHAHIN', 'HERNANDEZ', '1995-10-31', '3006201033', 'alejochahin95@hotmail.com', 'Recruiter', '93583993213', 'carrera 56#99 Sur 405', '1040751111', 'La Estrella', '2022-05-31', '', 'A-', 'SURA', ' Proteccion', '', 2, NULL),
(24, '9,59E+14', '5631', '47', '1241342', 'CONTRERAS CACERES INTILLAY JEHIEL', 'INTILLAY', 'JEHIEL', 'CONTRERAS', 'CACERES', '1992-11-05', '3002526188', 'yiyi09love@gmail.com', 'Lead Recuiter', '33300000685', 'Calle 76 sur # 46 C 34 Sabaneta, calle larga.', '', 'Sabaneta', '2021-05-24', 'Penicilina', 'O+', 'SURA', ' Colfondos', '', 4, NULL),
(25, '', '5001', '13', '', 'CORREA FLOREZ JOSE MIGUEL', 'JOSE', 'MIGUEL', 'CORREA', 'FLOREZ', '1997-02-18', '3003894517', 'jose.correafl@outlook.com', 'SR Recruiter ', '200021266', 'Carrera 84A Numero 39-43 Torre 2 Apto 813. Copacabana.', '1035437630', 'MedellÃ­n', '2021-10-20', '', 'O+', 'SURA ', ' Porvenir', '', 9, NULL),
(26, '', '5001', '13', '', 'CORREA URIBE SANTIAGO', 'SANTIAGO', '', 'CORREA', 'URIBE', '1996-09-01', '3117176801', 'scorreauribe@gmail.com', 'Recruiter ', '2919540586', 'Calle 5A #39. Edificio Quinta Avenida. apto 1202', '1037647164', 'MedellÃ­n', '2022-02-21', '', 'A+', 'SURA', ' Porvenir', '', 5, NULL),
(27, '', '', '', '', 'CORZO VALDERRAMA MAIRA ALEJANDRA', 'MAIRA ', 'ALEJANDRA', 'CORZO', 'VALDERRAMA', '1994-01-09', '3153076005', 'malejacorzo90@gmail.com', 'Recruiter', '42093054657', '', '1090480915', 'Envigado', '2022-11-07', '', 'A+', 'SURA', ' Colfondos', '', 4, NULL),
(28, '', '5001', '13', '', 'CUESTA GARRIDO AILIN DAYANA', 'AILIN', 'DAYANA', 'CUESTA', 'GARRIDO', '1998-11-04', '3214500396', 'cuestaailin11@gmail.com', 'Recruiter ', '24573658627', '', '1017257706', 'Bello', '2022-02-07', 'Lacteos', 'O+', 'SISTEMA DE SALUD DE LA POLICIA NACIONAL', ' Porvenir', '', 9, NULL),
(29, '', '', '', '', 'DELGADO ZAPATA TOMAS', 'TOMAS', '', 'DELGADO', 'ZAPATA', '2000-05-26', '3207437312', 'tdelgadozapata07@hotmail.com', 'Recruiter', '42000011996', 'circular 4 #74 - 51 apto 701', '1010095559', 'MedellÃ­n', '2022-05-31', 'Loratadina en jarabe', 'A+', 'SURA', ' Porvenir', '', NULL, NULL),
(30, '', '5001', '13', '', 'DORADO GONZALEZ MARIA JOSE', 'MARIA', 'JOSE', 'DORADO', 'GONZALEZ', '1997-08-17', '3116649913', 'mdoradogonzalez97@gmail.com ', 'Recruiter ', '31616031701', 'carrera97B#64-49', '1216725590', 'MedellÃ­n', '2022-01-11', '', 'O+', 'SURA', ' proteccion', '', 8, NULL),
(31, '', '5001', '13', '', 'FRANCO CORTEZ JHONNY ALEXANDER', 'JHONNY', 'ALEXANDER', 'FRANCO', 'CORTEZ', '1986-04-09', '3023216911', 'Jhonnyfranco60@gmail.com', 'Gerente Creativo de Marketing ', '78900024460', '', '1125078593', 'MedellÃ­n', '2022-01-01', 'camarones', '', 'SURA', ' Porvenir', '', NULL, NULL),
(32, '', '5001', '13', '', 'FUQUENE RIVERA SERGIO MAURICIO', 'SERGIO', 'MAURICIO', 'FUQUENE', 'RIVERA', '1971-05-31', '3128647053', 'smfuquene@gmail.com', 'Representante de Desarrollo Organizacional ', '42003177097', 'Calle 37 #94A 31 Bloque 29 Apt. 101, Barrio Santa Monica', '1125789509', 'MedellÃ­n', '2021-02-22', '', 'O-', 'SURA', ' Proteccion', '', NULL, NULL),
(33, '', '5001', '13', '', 'GALVIS MENDOZA JUAN PABLO', 'JUAN', 'PABLO', 'GALVIS', 'MENDOZA', '1991-03-31', '3104802857', 'galvis05@hotmail.com', 'Recruiter ', '61331403414', 'Cra 82A #29-16', '1110509176', 'MedellÃ­n', '2021-12-06', '', 'O+', 'Sanitas', ' Porvenir', '', 4, NULL),
(34, '', '5001', '13', '', 'GALVIS MUÑOZ JUAN SEBASTIAN', 'JUAN', 'SEBASTIAN', 'GALVIs', 'MUñoz', '1996-05-07', '3107823117', 'sebastian_gm96@hotmail.com', 'Recruiter ', '819511373', '', '1036666661', 'MedellÃ­n', '2022-02-07', '', 'O+', 'SURA', ' Proteccion', '', 1, ''),
(35, '', '5001', '13', '', 'GARCIA LOPEZ LUZ ESNEIDY', 'LUZ', 'ESNEIDY', 'GARCIA', 'LOPEZ', '1993-11-16', '3046025122', 'luz.esneidy16@gmail.com', 'Contador', '55133870180', 'CLL 60 45 64, VILLAVICENCIO', '1121905831', 'MedellÃ­n', '2022-03-01', '', 'O+', 'SANITAS', ' PORVENIR', '', NULL, NULL),
(36, '9,60E+14', '5631', '47', '6532611', 'GARCIA VERA MARIANNIE YISETH', 'MARIANNIE', 'YISETH', 'GARCIA', 'VERA', '1998-09-14', '3212550620', 'mariannieg14@gmail.com', 'SR lead Recuiter\n', '1700020971', 'Calle 74 Sur #44-26. Int 201, Barrio Betania. Sabaneta', '', 'Sabaneta', '2020-10-01', '', 'A+', 'SURA', '', '', NULL, NULL),
(37, '', '5001', '47', '', 'GARRIDO DELGADO JAREE FRANCMAR', 'JAREE', 'FRANCMAR', 'GARRIDO', 'DELGADO', '1991-11-19', '3003303715', 'jareef1@gmail.com', 'Recruiter ', '29800000316', 'Calle 9sur #79c-199. apto 2003', '1580946', 'MedellÃ­n', '2022-02-21', 'Rinitis- polvo, frio', 'O+', 'SURA', ' Proteccion', '', 8, NULL),
(38, '', '', '', '', 'GAVIRIA HERRERA ERIKA MILENA', 'ERIKA', 'MILENA', 'GAVIRIA', 'HERRERA ', '1992-08-05', '3013675379', 'mile.gavi258@gmail.com', 'Recruiter', '61434999391', 'cll 48C #94B 15, Medellin', '1152442660', 'MedellÃ­n', '2022-11-07', '', 'O+', 'SURA', ' Proteccion', '', 4, NULL),
(39, '', '', '', '', 'GAVIRIA MELENDEZ LAURA JIMENA', 'LAURA', 'JIMENA', 'GAVIRIA', 'MELENDEZ', '1998-06-30', '3164938529', 'gavirialaura98@gmail.com', 'Recruiter', '29245263609', 'carrera 56C #83DD Sur 52, ', '1040756794', 'La Estrella', '2022-05-31', 'Polvo, animales, clima', 'O+', 'SURA', ' Porvenir', '', 8, NULL),
(40, '', '5001', '13', '', 'GOMEZ LONDOÃ‘O ESTHEFANIA', 'ESTHEFANIA', '', 'GOMEZ', 'LONDOÃ‘O', '1991-11-08', '3106845814', 'estefagomez0811@gmail.com', 'SR Recruiter ', '947041746', 'Calle 48 c sur # 39 A 165, Envigado Antioquia', '1037615076', 'MedellÃ­n', '2021-09-01', '', 'O-', 'SURA ', ' Proteccion', '', 11, NULL),
(41, '', '', '', '', 'GOMEZ MORENO BRAYAN', 'BRAYAN', '', 'GOMEZ', 'MORENO', '1998-03-28', '311 3577483', 'brn2wh@gmail.com', 'Recruiter', '91298872141', 'Carrera 56a # 44 - 23 apto 202', '1036678793', 'ItaguÃ­', '2022-05-31', 'Dexametasona', 'O+', 'SURA', '', '', NULL, NULL),
(42, '', '', '13', '', 'GOMEZ VASQUEZ CRISTIAN LEONARDO', 'CRISTIAN ', 'LEONARDO', 'GOMEZ', 'VASQUEZ', '1995-08-27', '3177933137', 'cleogv95@gmail.com', 'Recruiter', '2052332195', 'Calle 49e # 83a - 196 Calazans', '1098779165', 'MedellÃ­n', '2022-05-02', '', 'O+', 'Salud Total', ' Porvenir', '', 1, NULL),
(43, '', '5001', '13', '', 'GOMEZ VASQUEZ SERGIO ANDRES', 'SERGIO', 'ANDRES', 'GOMEZ', 'VASQUEZ', '1990-10-22', '3162723751', 'sergiogomezv90@gmail.com', 'Lead Recuiter', '5,50E+14', 'Calle 49e#83a-196 Conjunto Sol Naciente Apto 414', '1098695662', 'MedellÃ­n', '2021-07-06', '', 'O+', 'SURA ', ' Proteccion', '', 12, NULL),
(44, '', '5001', '13', '', 'GOMEZ VILLA MARIA ALEJANDRA', 'MARIA', 'ALEJANDRA', 'GOMEZ', 'VILLA', '1999-03-26', '3227503115', 'ma.gomezvilla1@gmail.com', 'Recruiter ', '37685692695', 'calle6 #5-28', '1039024952', 'MedellÃ­n', '2022-01-11', '', 'b+', 'Nueva EPS', ' Colpensiones', '', 8, NULL),
(45, '', '', '', '', 'GUERRA CASTRO ANA GABRIELA', 'ANA', 'GABRIELA', 'GUERRA', 'CASTRO', '1999-09-28', '3206232635', 'a.g.g.c_456@hotmail.com', 'Recruiter', '72300031014', 'crr 50A #64 - 90 Altos del Lago,', '1088357114', 'Rionegro', '2022-07-11', '', 'B+', 'SURA', ' Porvenir', '', 2, NULL),
(46, '', '5001', '13', '', 'GUILOMBO HENAO NATALI', 'NATALI', '', 'GUILOMBO', 'HENAO', '1992-04-11', '3136165497', 'nataligh04@gmail.com', 'Training and develpoment supervisor', '23000002591', 'Calle 48 C sur #39A-165 UrbanizaciÃ³n BalcÃ³n de la Raza apto 408', '1037623552', 'MedellÃ­n', '2021-05-24', '', 'O+', 'SURA ', ' Colpensiones', '', NULL, NULL),
(47, '', '', '', '', 'GUTIERREZ LOTERO NESTOR DANIEL', 'NESTOR', 'DANIEL', 'GUTIERREZ', 'LOTERO', '2000-11-06', '3122957659', 'ndgutierrl@eafit.edu.co', 'practicante ', '3122957659', 'Calle 112a # 64d - 15', '1001617890', 'MedellÃ¬n', '2022-11-07', '', 'O+', 'SURA', '', '', NULL, NULL),
(48, '', '', '', '5259300', 'GUTIERREZ ROJAS ANGELLY NATASHA', 'ANGELLY ', 'NATASHA', 'GUTIERREZ', 'ROJAS', '1994-04-18', '525926299', 'linternationalist@gmail.com', 'Recruiter', '27700002398', 'crr67 #52 Sur 72 San Antonio de Prado', '', 'San Antonio de Prado', '2022-11-07', 'Sol, perros, citricos.', 'O+', 'SURA', ' Proteccion', '', 12, NULL),
(49, '', '5001', '13', '', 'GUTIERREZ VILLABONA MARIA CAMILA', 'MARIA', 'CAMILA', 'GUTIERREZ', 'VILLABONA', '1994-12-15', '3162444523', 'mila15_gutierrez@hotmail.com', 'SR Lead Recuiter', '72636286860', 'Calle 31 # 21 -256 casa 14', '1098763755', 'MedellÃ­n', '2021-04-07', '', 'O+', 'SURA', ' Proteccion', '', 5, NULL),
(50, '', '', '', '', 'GUTIERREZ VILLABONA MARIA PAULA', 'MARIA', 'PAULA', 'GUTIERREZ', 'VILLABONA', '2000-04-03', '3175158716', 'mpaulagutierrez3@hotmail.com', 'Recruiter', '72662706095', 'crr 48 # 76D Sur 34', '1007868558', 'Sabaneta', '2022-11-07', 'Rinitis', 'B+', 'SURA', ' Colpensiones', '', 3, NULL),
(51, '', '5001', '13', '', 'HENAO ECHAVARRIA ANDRES SANTIAGO', 'ANDRES', 'SANTIAGO', 'HENAO', 'ECHAVARRIA', '1995-01-31', '3145918277', 'andres.shenaoechavarria@gmail.com', 'Recruiter ', '27774362709', 'carrera 58 #51a-9. apto 202', '1152207579', 'MedellÃ­n', '2022-02-21', '', 'o+', 'SURA', ' Proteccion', '', 1, NULL),
(52, '7,12E+14', '5001', '47', '5212641', 'HERNANDEZ ZAMBRANO FRANCIS MARIE', 'FRANCIS', 'MARIE', 'HERNANDEZ', 'ZAMBRANO', '1998-05-04', '3045927781', 'hernandezzfrancis@gmail.com', 'SR Recruiter ', '25300001158', 'C57 sur #43 A 16 Apto 407 Terra Santa, Sabaneta', '', 'MedellÃ­n', '2021-09-01', '', 'O+', 'SURA ', ' Porvenir', '', NULL, NULL),
(53, '', '', '13', '', 'HINCAPIE OCHOA ANA MARIA', 'ANA ', 'MARIA', 'HINCAPIE ', 'OCHOA ', '1998-09-09', '3017003097', 'Hincapieana2@gmail.com', 'Recruiter', '3017003097', 'Carrera 43A #60 sur-64', '1039472908', 'Sabaneta', '2022-05-02', '', 'O+', 'SURA', '', '', 6, NULL),
(54, '', '5001', '13', '', 'HOWARD MCLEAN HANS MARLON', 'HANS', 'MARLON', 'HOWARD', 'MC LEAN', '1991-06-09', '3177367315', 'hanshoward2014@gmail.com', 'SR Recruiter ', '24500050361', 'Carrera 81 #54-41 - Calasanz, Medellin / Free town, Providence ', '1120980663', 'MedellÃ­n', '2021-10-20', '', 'A+', 'Nueva EPS', ' Porvenir', '', 13, NULL),
(55, '', '5001', '13', '', 'JARAMILLO GOMEZ MIGUEL', 'MIGUEL', '', 'JARAMILLO', 'GOMEZ', '1999-08-30', '3113873751', 'miguel.jaramillo99@hotmail.com', 'Recruiter ', '23074060323', 'Circular 2 #66b 128', '1037670474', 'MedellÃ­n', '2022-01-11', '', 'O+', 'SURA', ' Proteccion', '', 6, NULL),
(56, '', '', '', '', 'JIMENEZ MARIN JUAN DAVID', 'JUAN ', 'DAVID', 'JIMENEZ ', 'MARIN', '1997-07-10', '3013389792', 'davidjimnz532@gmail.com', 'Recruiter ', '1935141351', 'carrera52a #36b-31', '1037659864', 'ItagÃ¼Ã­', '2022-05-31', '', 'A+', 'Savia Salud', ' Proteccion', '', 1, NULL),
(57, '', '', '', '', 'JUAN DAVID SANCHEZ USCATEGUI', 'JUAN', 'DAVID', 'SANCHEZ', 'USCATEGUI', '1989-01-23', '3015234610', 'judassu@gmail.com', 'Recruiter', '31011293525', 'Carrera 64a # 35 - 22 apto ', '1036622125', 'MedellÃ­n', '2022-05-31', '', 'A+', 'SURA', ' Colpensiones', '', 2, NULL),
(58, '', '5001', '13', '', 'LEMA OSPINA DAVID', 'DAVID', '', 'LEMA', 'OSPINA', '1994-01-28', '3165886120', 'davidlema648@gmail.com', 'SR Recruiter ', '24505477932', 'Cra79b 45-172', '1017224051', 'MedellÃ­n', '2021-10-20', '', 'A+', 'SURA ', ' Porvenir', '', 13, NULL),
(59, '', '5001', '13', '', 'LEMUS OSORIO SANTIAGO', 'SANTIAGO', '', 'LEMUS', 'OSORIO', '1999-11-03', '3116414170', 'lemus.stg@gmail.com', 'Lead Recuiter', '269267577', 'Carrera 39 #5a-61', '1037655454', 'MedellÃ­n', '2021-08-02', '', 'O+', 'SURA ', ' Porvenir', '', 10, NULL),
(60, '', '5001', '47', '', 'MARAMARA ESCALONA VENECIA ALEJANDRA', 'VENECIA', 'ALEJANDRA', 'MARAMARA', 'ESCALONA', '2000-05-26', '3234865917', 'veneciamaramara@yahoo.com', 'Recruiter ', '69300002528', 'San Javier, Carrera 102 #44-10', '6102858', 'MedellÃ­n', '2022-02-21', 'Rinitis, Asma', 'O+', 'SURA ', ' Proteccion', '', 6, NULL),
(61, '', '5001', '13', '', 'MARTINEZ CABRALES HENRY JAVIER', 'HENRY', 'JAVIER', 'MARTINEZ', 'CABRALES', '1991-05-03', '3157813523', 'henryjmartinezc@gmail.com', 'Recruiter ', '37704179678', 'Transversal 54 #32a-19. Cartagena', '1238342712', 'MedellÃ­n', '2022-02-21', '', 'O+', 'Salud Total', ' colfondos', '', 5, NULL),
(62, '', '5088', '13', '', 'MARTINEZ ECHAVARRIA BIBIANA', 'BIBIANA', '', 'MARTINEZ', 'ECHAVARRIA', '1993-03-17', '3105905830', 'BIBIANAMARTINEZE@GMAIL.COM', 'Recruiter ', '37718283389', 'Cra 47A # 44-13 Bello', '1035228564', 'Bello', '2022-02-07', 'Plasal y Metoclopramida', 'A+', 'SURA', ' Proteccion', '', 10, NULL),
(63, '', '5001', '13', '', 'MEDINA VASQUEZ ANDREA', 'ANDREA', '', 'MEDINA', 'VASQUEZ', '1992-07-22', '3023533297', 'andream.vasquez22@gmail.com', 'SR Recruiter ', '750699049', 'Carrera 92 # 35-61', '1152197019', 'MedellÃ­n', '2021-11-16', '', 'A+', 'SURA', ' Proteccion', '', 12, NULL),
(64, '', '51054', '13', '', 'MEJIA TORRES LAURA MELISSA', 'Laura', 'Melissa', 'Mejia', 'Torres', '1993-03-30', '3128749803', 'laumelissamt@gmail.com', 'Recruiter', '51100001671', 'carrera 58c #47-33', '1065013672', 'Bello', '2022-05-02', '', 'B+', 'Salud Total', ' ProtecciÃ³n', '', 6, NULL),
(65, '', '5088', '13', '', 'MONROY RODRIGUEZ LUCAS', 'LUCAS', '', 'MONROY', 'RODRIGUEZ', '1998-05-30', '3195067181', 'lucasmonroy1948@gmail.com', 'Recruiter ', '61317423356', 'diagonal50 A#32200 apto2908', '1152221305', 'Bello', '2022-01-11', '', 'B+', 'SURA', ' Porvenir', '', 8, NULL),
(66, '', '5001', '13', '', 'MONSALVE PULGARIN LESLY TATIANA', 'LESLY', 'TATIANA', 'MONSALVE', 'PULGARIN', '1997-10-20', '3016620823', 'ltmonsalvep@unal.edu.co', 'SR Recruiter ', '91224164942', 'Calle 37 sur #69C - 28 int 127', '1026158498', 'MedellÃ­n', '2021-07-06', '', 'A+', 'Nueva EPS', ' Porvenir', '', 13, NULL),
(67, '', '5001', '13', '', 'MONTERROZA DIAZ ROBERTO CARLOS', 'ROBERTO', 'CARLOS', 'MONTERROZA', 'DIAZ', '1989-02-23', '3014034578', 'robertocarlos987@gmail.com', 'SR Recruiter ', '24557539995', '', '1102823513', 'MedellÃ­n', '2021-10-20', '', 'O+', 'SURA', ' Proteccion', '', 12, NULL),
(68, '', '', '', '', 'MONTOYA BLASOTTO RICHARD JOSEPH', 'RICHARD', 'JOSEPH', 'MONTOYA', 'BLASOTTO', '1996-12-12', '3194447716', 'rickhetfield12@hotmail.com', 'Recruiter', '3194447716', 'Calle 34b # 82a - 32 la castellana/carrera 76 # 5 - 90', '1152461390', 'MedellÃ­n', '2022-11-07', '', 'O+', 'Savia Salud', ' Proteccion', '', 9, NULL),
(69, '', '5001', '13', '', 'MUÃ‘OZ GALEANO JOHN ALEJANDRO', 'JOHN', 'ALEJANDRO', 'MUÃ‘OZ', 'GALEANO', '2001-06-27', '3005660633', 'alejandromunozgaleano7@gmail.com', 'Recruiter ', '23005660633', 'Calle 6sur #79-270', '1001617729', 'MedellÃ­n', '2022-02-21', '', 'A+', 'Salud Total', ' Proteccion', '', 11, NULL),
(70, '', '5001', '13', '', 'OQUENDO GIRALDO SANTIAGO', 'SANTIAGO', '', 'OQUENDO', 'GIRALDO', '1996-10-18', '3127858988', 'santiago.oquendo18@gmail.com', 'SR Recruiter ', '24500001144', 'Calle 41#63c-44', '1214736478', 'MedellÃ­n', '2021-11-16', '', 'A+', 'SURA', ' Porvenir', '', 1, NULL),
(71, '', '5001', '13', '', 'ORTIZ ANGULO MARIA DE JESUS', 'MARIA', 'DE JESUS', 'ORTIZ', 'ANGULO', '2001-08-06', '3012481971', 'ortizmariadejesus009@gmail.com', 'Recruiter ', '5,50E+14', 'Carrera 43A #71 sur 103', '1002244538', 'MedellÃ­n', '2022-02-07', 'Camaron', 'A+', 'Salud Total', ' Proteccion', '', 10, NULL),
(72, '', '', '', '', 'OSORIO MORALES SANTIAGO', 'SANTIAGO', '', 'OSORIO', 'MORALES', '1994-10-21', '3192686859', 'satigo-825@hotmail.es', 'Recruiter', '232273227', 'carrera 68# 63 - 52, Itagui', '1036656123', 'ItagÃ¼Ã­', '2022-05-31', '', 'O-', 'SURA', ' ProtecciÃ³n', '', 5, NULL),
(73, '', '5001', '13', '', 'OSPINA ZAPATA SEBASTIAN FERNANDO', 'SEBASTIAN', 'FERNANDO', 'OSPINA', 'ZAPATA', '1992-06-05', '3003735340', 'SEBAS06924@GMAIL.COM', 'SR Recruiter ', '34200000303', 'Cr 75 DA # 1 Sur- 29 Casa 38', '1128443968', 'MedellÃ­n', '2021-11-16', 'Fresas, Picaduras de Avejas, Aceites Naturales ', 'B+', 'SURA', ' colfondos', '', 2, NULL),
(74, '', '', '13', '', 'PABON ZAPATA SIMON ANDRES', 'SIMON ', 'ANDRES', 'PABON', 'ZAPATA ', '2003-10-24', '3127469742/ 3127469749', 'simonpabon2003@gmail.com', 'Recruiter', '3127469742', 'Calle 39 #50A 28', '1001539875', 'ItagÃ¼Ã­', '2022-05-02', 'Acaros, polvo', 'O+', 'SURA', ' No tienes', '', 2, NULL),
(75, '', '5001', '13', '', 'PADILLA QUEVEDO CLAUDIA ALEJANDRA', 'CLAUDIA', 'ALEJANDRA', 'PADILLA', 'QUEVEDO', '1998-12-02', '3246673374', 'claudiapadillaq@outlook.com', 'Recruiter ', '9282003192', 'Calle 8 #84f-190 Torres de Valbuena etapa 1', '1067958733', 'MedellÃ­n', '2021-12-06', '', 'O+', 'Sanitas', ' Colpensiones', '', 4, NULL),
(76, '', '5001', '13', '', 'PALACIO MEJIA DANIELA', 'DANIELA', '', 'PALACIO', 'MEJIA', '1997-06-02', '3043695435', 'danielapalaciomejia.18@gmail.com', 'HSW Lead', '22847156710', 'Cr 59C # 40A 16.', '1036671231', 'MedellÃ­n', '2022-01-04', '', 'A+', 'SURA ', ' Porvenir', '', NULL, NULL),
(77, '', '5001', '13', '', 'PEÃ‘ALOZA MORA ANDREA STEPHANY', 'ANDREA', 'STEPHANY', 'PEÃ‘ALOZA', 'MORA', '1995-02-17', '3213133665', 'andreaspm17@gmail.com', 'Development lead', '714196430', 'Carrera 39E #48c sur-36. Apto 102. UrbanizaciÃ²n Orinoco de la Cuenca', '1126250047', 'MedellÃ­n', '2021-07-06', '', 'O+', 'SURA ', ' Proteccion', '', NULL, NULL),
(78, '', '5001', '13', '', 'PEÃ‘ALOZA MORA MELITTA KATERINE', 'MELITTA', 'KATERINE', 'PEÃ‘ALOZA', 'MORA', '1997-09-03', '3215016324', 'melittakpm@gmail.com', 'Lead Recuiter', '9682236415', 'Carrera 39E #48c sur-36. Apto 102. UrbanizaciÃ²n Orinoco de la Cuenca', '1126250044', 'MedellÃ­n', '2021-08-02', '', 'O+', 'SURA ', ' Proteccion', '', 9, NULL),
(79, '', '', '', '', 'PEREZ ERIC GARCIA', 'ERIC', '', 'GARCIA', 'PEREZ', '1996-12-19', '3116881588', 'ericgarciaperez8@hotmail.com', 'Recruiter', '913083119', 'calle 23c # 26 -15 Villadiego, Santa Rosa de Cabal', '1093227448', 'MedellÃ¬n', '2022-11-07', 'Renitis', 'O+', 'Salud Total', ' Porvenir', '', 6, NULL),
(80, '', '5001', '47', '', 'PEREZ MENDEZ ROBERT JOSE', 'ROBERT', 'JOSE', 'PEREZ', 'MENDEZ', '2000-07-15', '3046547632', 'rjosep15.rp12@gmail.com', 'Recruiter ', '2400040446', 'Rionegro Antioquia', '9607752', 'MedellÃ­n', '2022-02-07', '', '', 'SURA', ' Porvenir', '', 4, NULL),
(81, '', '', '', '', 'PULGARIN MANRIQUE CAROLINA', 'CAROLINA', '', 'PULGARIN', 'MANRIQUE', '1998-10-20', '3043883077', 'carolinapm1998@gmail.com', 'Recruiter', '3043883077', 'calle58a #85e-77 apto 302', '1017263973', 'MedellÃ­n', '2022-11-07', '', 'AB+', 'SURA', ' Proteccion', '', 3, NULL),
(82, '', '', '', '', 'PULGARIN MARIQUE SEBASTIAN', 'SEBASTIAN', '', 'PULGARIN', 'MANRIQUE ', '1998-10-20', '3052201009', 'sebaspulga@hotmail.com', 'recruiter', '686848604', 'calle 58a #85e-77 apto 302', '1017263975', 'MedellÃ­n', '2022-05-31', '', 'O+', 'SURA', ' Proteccion', '', 12, NULL),
(83, '', '5001', '13', '', 'QUINTO NOREÃ‘A SARA', 'SARA', '', 'QUINTO', 'NOREÃ‘A', '1993-01-06', '3184016357', 'squintonorena@gmail.com', 'Recruiter ', '33129506852', 'Calle 2A#52-12', '1152201040', 'MedellÃ­n', '2022-02-07', 'Camarones', 'O+', '', ' Porvenir', '', 10, NULL),
(84, '', '', '', '', 'RAMIREZ BETANCUR JUAN ALEJANDRO', 'JUAN ', 'ALEJANDRO', 'RAMIREZ', 'BETANCUR', '1990-08-23', '3107030877', 'juanalejorb@gmail.com', 'Recruiter', '7725413220', 'carrera 83 # 27a - 29 Belen los alpes/Calle 28 # 81 - 41 medellin', '1093765055', 'MedellÃ­n', '2022-11-07', '', 'O+', 'SURA ', ' Proteccion', '', 13, NULL),
(85, '', '5360', '13', '', 'RAMIREZ BOLIVAR DAVID ESTEBAN', 'DAVID', 'ESTEBAN', 'RAMIREZ', 'BOLIVAR', '1997-03-11', '3113854557', 'indifferencesir@gmail.com', 'Recruiter ', '25300003237', 'carrera48#41-57 apto201 itagui', '1001228870', 'ItagÃ¼Ã­', '2022-01-11', '', 'A+', 'Sabia Salud', ' Proteccion', '', 6, NULL),
(86, '', '5001', '13', '', 'RANGEL PATIÃ‘O JULIETTE CECILIA', 'JULIETTE', 'CECILIA', 'RANGEL', 'PATIÃ‘O', '1996-05-06', '3183895113', 'julirangelp@gmail.com', 'Recruiter ', '55400001332', 'carrera42 G #88-91 casa en barranquilla', '1140885715', 'MedellÃ­n', '2022-02-21', '', 'O+', 'SURA', ' Proteccion', '', 12, NULL),
(87, '', '5001', '13', '', 'RANGEL VELASQUEZ ANGIE MELISSA', 'ANGIE', 'MELISSA', 'RANGEL', 'VELASQUEZ', '1996-12-21', '3013376730', 'angierangelvel@gmail.com', 'SR Lead Recuiter', '77199974311', 'Cll 68b #28-75, Brranquilla ', '1140889843', 'MedellÃ­n', '2021-04-07', 'Advil', 'O+', 'SURA', ' Colpensiones', '', 6, NULL),
(88, '', '5001', '13', '', 'RAVE MARTINEZ SANTIAGO', 'SANTIAGO', '', 'RAVE', 'MARTINEZ', '1992-08-15', '3003459011', 'santyrave@hotmail.com', 'Recruiter ', '37989018834', '1A Sur - 45, Carrera 25A #, MedellÃ­n, Antioquia', '1037622929', 'MedellÃ­n', '2021-12-06', '', 'O+', 'SURA ', ' Colpensiones', '', 5, NULL),
(89, '', '', '', '', 'RESTREPO GIRALDO DIEGO ALEJANDRO', 'DIEGO', 'ALEJANDRO', 'RESTREPO', 'GIRALDO', '1997-05-23', '3148428428', 'del.rpo@gmail.com', 'recruiter', '61605139051', 'carrera 15b #45-23', '1017248319', 'MedellÃ­n', '2022-05-31', '', '0+', 'SURA', ' ProtecciÃ³n', '', 6, NULL),
(90, '', '', '', '', 'RESTREPO VERGARA VALENTINA', 'VALENTINA', '', 'RESTREPO', 'VERGARA', '2002-08-04', '350 7788346', 'valentinarestrev@gmail.com', 'Recruiter', '', 'Carrera 29a # 36d sur -72 apto 304 torre 1', '1000567766', 'Envigado', '2022-05-31', 'Aspirina', 'O+', 'SURA', '', '', 5, NULL),
(91, '', '', '', '', 'ROLDAN MARIANA MARTINEZ', 'MARIANA', '', 'MARTINEZ', 'ROLDAN', '2001-04-19', '3194460180', 'mariana2211mr@hotmail.com', 'Recruiter', '91239177706', 'Calle 49e # 83a - 171', '1001419948', 'MedellÃ¬n', '2022-11-07', 'Rinitis', 'A+', 'SURA', '', '', 13, NULL),
(92, '', '', '', '', 'SANCHEZ DOMINGUEZ JUAN GUILLERMO', 'JUAN ', 'GUILLERMO', 'SANCHEZ', 'DOMINGUEZ', '1985-11-15', '3007112710', 'johsand@outlook.com', 'Recruiter ', '82191106691', 'calle 36d sur 27d-155 envigado', '94542977', 'Envigado', '2022-11-07', '', 'A+', 'SURA ', ' Colpensiones', '', 6, NULL),
(93, '', '', '', '', 'SANGUINO RAMOS DANIEL DAVID', 'DANIEL ', 'DAVID', 'SANGUINO', 'RAMOS', '1997-10-17', '                                                ', 'danielsanguinoramos@gmail.com', 'Business Development Representative', '483212267', 'calle 40asur #24b-105 envigado', '1140415740', 'Envigado', '2022-11-07', '', 'O+', 'SURA', ' Porvenir', '', NULL, NULL),
(94, '', '5001', '13', '', 'SANGUINO RAMOS JARIBEL DANIELA', 'JARIBEL', 'DANIELA', 'SANGUINO', 'RAMOS', '2002-09-03', '3217492463', 'jaribelsanguino@gmail.com', 'SR Recruiter ', '483212691', 'Cra 102#44-10. Apto 402', '1140415739', 'MedellÃ­n', '2021-10-20', '', 'A+', 'SURA ', ' Proteccion', '', 6, NULL),
(95, '', '', '13', '', 'SIERRA CARVAJAL LEIDY ALEJANDRA', 'Leidy', 'Alejandra', 'Sierra', 'Carvajal', '1998-09-22', '3023529771', 'leidysierra_98@hotmail.com', 'Recruiter', '715100576', 'carrera 72 #89A 27', '1152223006', 'MedellÃ­n', '2022-05-02', '', 'O+', 'SURA', ' proteccion', '', 6, NULL),
(96, '', '5266', '13', '', 'SIERRA MONSALVE SANTIAGO', 'SANTIAGO', '', 'SIERRA', 'MONSALVE', '1995-11-23', '3046325895', 'santiagosierram95@gmail.com', 'Lead Recuiter', '37929464126', 'Carrera 32 # 38 A sur 57', '1037646003', 'Envigado', '2021-08-02', '', 'O+', 'SURA', ' Porvenir', '', 11, NULL),
(97, '', '', '', '5003629', 'SOTO TUDARES EDGRIANI DARLING', 'EDGRIAN', 'DARLING', 'SOTO', 'TUDARES', '1991-03-11', '3016147038', 'edgrianis@gmail.com', 'aseadora', '33183615411', 'carrera50c #80-69', '', 'MedellÃ­n', '2022-02-05', 'Rinitis', '', 'SURA ', ' porvenir', '', NULL, NULL),
(98, '', '5001', '13', '', 'SUAREZ VELASQUEZ JUAN ALBERTO', 'JUAN', 'ALBERTO', 'SUAREZ', 'VELASQUEZ', '1997-08-27', '3206967100', 'juan_alberto127@hotmail.com', 'Talent Acquisition Lead', '31604983722', 'carrera 75a # 97 - 100 Castilla / calle 27 # 56 - 32', '1152463845', 'MedellÃ­n', '2021-09-01', '', 'O+', 'SURA ', ' Porvenir', '', NULL, NULL),
(99, '', '5001', '22', '', 'SUTTON JAMES PATRICK', 'JAMES', 'PATRICK', 'SUTTON', '', '1900-01-01', '3505267592', 'JPSUTTON@VIRTUALEMPLOYEESERVICES .COM', 'Gerente ', '69300038999', '', '1016799', 'MedellÃ­n', '2021-01-04', '', '', '', '', '', NULL, NULL),
(100, '', '5001', '13', '', 'TALERO CORDOBA MONICA', 'MONICA', '', 'TALERO', 'CORDOBA', '1996-06-12', '3016112536', 'monicataleroc@gmail.com', 'SR Recruiter ', '3016112536', 'calle 78#6-237 conjunto picacho campestre reservado casa 1 (Monteria) ', '1067952698', 'MedellÃ­n', '2021-11-16', '', 'O+', 'Salud Total', ' Colpensiones', '', 5, NULL),
(101, '', '5001', '13', '', 'TOBON ALZATE LAURA', 'LAURA', '', 'TOBON', 'ALZATE', '1991-06-10', '3502388702', 'laura.tobonalzate@gmail.com', 'SR Account Manager \n', '24565650650', 'calle 63 #76-55 Urbanizacion Perlato apto 2012', '1017196132', 'MedellÃ­n', '2021-02-22', '', 'O+', 'COOMEVA', ' Colpensiones', '', NULL, NULL),
(102, '', '', '13', '', 'TOBON HOYOS ANDRES FELIPE', 'AndrÃ‘s ', 'Felipe', 'Tobon', 'Hoyos', '1994-10-24', '3209887751', 'pipetobon94@hotmail.com', 'Recruiter', '27273500222', 'Carrera 61 # 33 - 65', '1017224128', 'ItaguÃ­', '2022-02-05', '', 'A-', 'SURA', ' Porvenir', '', 5, NULL),
(103, '', '5001', '13', '', 'TORRES GARCIA YULIETH', 'YULIETH', '', 'TORRES', 'GARCIA', '1996-01-11', '3128166901', 'yulieth9611@gmail.com', 'Recruiter ', '42061187507', 'Carrera 42 BB # 48 C sur-18 / Bloque 2. Prima ( SeÃ±oria -Envigado)', '1039761661', 'MedellÃ­n', '2022-02-21', '', 'O-', 'SURA', ' Porvenir', '', 11, NULL),
(104, '', '5001', '13', '', 'TORRES MERCHAN ANA MARIA', 'Ana', 'Maria', 'Torres', 'Merchan', '1999-06-09', '3002431395', 'anamtm0609@gmail.com', 'Recruiter', '61316148297', 'calle 49d #93-115', '1152226651', 'MedellÃ­n', '2022-05-02', 'Polvo, Frio, Humedad', 'A+', 'SURA', ' Colpensiones', '', 2, NULL),
(105, '', '5001', '13', '', 'TRESPALACIOS CARDENAS LINA MARIA', 'LINA', 'MARIA', 'TRESPALACIOS', 'CARDENAS', '1996-10-17', '3137227163', 'linatrespalaciosc@hotmail.com', 'Recruiter ', '2100024384', 'Calle 29 C#35-58', '1152460479', 'MedellÃ­n', '2022-02-07', '', 'A+', 'SURA', ' proteccion', '', 9, NULL),
(106, '', '', '', '', 'Trujillo Sanclemente Sebastian David', 'Sebastian', 'David', 'Trujillo', 'Sanclemente', '1993-08-02', '3219886159', 'sebastiantrujillo403@gmail.com', 'Recruiter', '5,50E+14', 'crr 24 DD #41 Sur 190, Envigado', '1082970857', 'Envigado', '2022-11-07', '', 'AB+', 'Famisanar', ' Porvenir', '', 8, NULL),
(107, '9,42E+14', '', '', '4732596', 'TUDARES CHIRINOS ADNIELIS KARINA', 'ADNIELIS ', 'KARINA ', 'TUDARES', 'CHIRINOS ', '1974-06-10', '3225180374', 'adkatuchi@gmail.com', 'aseadora', '69300001547', 'cra 40#44-116 apto202 por la maturin ', '', 'MedellÃ­n ', '2021-01-05', '', 'O+', 'SURA', ' Colpensiones', '', NULL, NULL),
(108, '', '5088', '13', '', 'VEGA BARBA LUIS LEONARDO', 'LUIS', 'LEONARDO', 'VEGA', 'BARBA', '1993-01-19', '3173067388', 'luisvb54@gmail.com', ' Operations Manager SR', '9066291411', 'Cra 72a #78b-47 UrbanizaciÃ³n Bello Horizonte torre B apto 104', '1098732835', 'Bello', '2020-10-29', '', 'O+', 'SURA', ' Porvenir', '', NULL, NULL),
(109, '', '5001', '13', '', 'VILLAN VALENCIA LADY LISETH', 'LADY', 'LISETH', 'VILLAN', 'VALENCIA', '1983-07-11', '3202289826', 'liseth.villan@gmail.com', 'Recruiter ', '81656120371', 'Av 6ta #605', '37293679', 'MedellÃ­n', '2022-02-21', '', 'O+', 'SURA ', '', '', 11, NULL),
(110, NULL, NULL, '13,00', NULL, 'BARRETO MORALES SEBASTIAN', 'SEBASTIAN', '', 'MORALES', 'BARRETO', '2000-01-15', '3217225482', 'sona01200@hotmail.com', 'Recruiter', '91222749633', 'calle 42 #81a-60 apto 401', '1152472518', 'MEDELLIN', '2022-08-16', 'NA', 'A+', 'SURA', 'COLPENSIONES', '', NULL, NULL),
(111, NULL, NULL, '13,00', NULL, 'BARRIOS MONROY MARIA CAMILA', 'MARIA', 'CAMILA', 'MONROY', 'BARRIOS', '1994-03-30', '3233213469', 'CAMILA.9430@HOTMAIL.COM', 'Recruiter', '51100065383', 'DIAGONAL 62 AV. 48B-40 PISS INTERIOR 201', '1020459202', 'BELLO', '2022-08-16', 'RINITIS', 'B+', 'SURA', 'PROTECCION', 'BANCOLOMBIA', NULL, NULL),
(112, NULL, NULL, '13,00', NULL, 'BUSTAMANTE PIEDRAHITA ESTEFANIA', '', 'ESTEFANIA', 'PIEDRAHITA', 'BUSTAMANTE', '2000-04-20', '3217530059', 'ESTEFIBUST2@HOTMAIL.COM', 'Recruiter', '93570507069', 'CALLE 38N#6621 ', '1007222022', 'ITAGUI', '2022-08-16', 'NA', 'O-', 'SURA', 'COLPENSIONES', 'BANCOLOMBIA', NULL, NULL),
(113, NULL, NULL, '', NULL, 'HINCAPIE MEJIA ISABELLA', 'ISABELLA', '', 'MEJIA', 'HINCAPIE', '2004-03-05', '3053908102', 'ihincapie5@gmail.com', 'Recruiter', '3053908102', 'cra 45b#34 sur-70', '1036448261', 'ENVIGADO', '2022-08-16', 'NA', 'B-', 'SURA', '', 'Nequi', NULL, NULL),
(114, NULL, NULL, '', NULL, 'JIMENEZ CAVAJAL DANIELA', 'DANIELA', '', 'CARVAJAL', 'JIMENEZ', '1993-01-15', '3193294646', 'daniela.jime1993@gmail.com', 'Recruiter', '62537364896', 'cra 68#84b-36 apto 101 edificio bonaire ', '1152688900', 'MEDELLIN', '2022-08-16', 'Amoxicilina', 'A+', 'SURA', 'PORVENIR', 'BANCOLOMBIA', NULL, NULL),
(115, NULL, NULL, '13,00', NULL, 'LONDOÃ‘O HENAO KAREN TATIANA', 'KAREN', 'TATIANA', 'HENAO', 'LONDOÃ‘O', '1998-09-23', '3196776636', 'karenlondo1998@gmail.com', 'Recruiter', '24553785193', 'calle 45 #15C - 73', '1017264100', 'MEDELLIN', '2022-08-16', 'Cambios de clima fuertes', 'O+', 'Sura', 'Proteccion', 'BANCLOMBIA', NULL, NULL),
(116, NULL, NULL, '', NULL, 'LOPEZ LONGAS CRISTIAN DAVID', 'CRISTIAN', 'DAVID', 'LONGAS', 'LOPEZ', '1990-07-25', '3042185640', 'cristianlonga51@gmail.com', 'Recruiter', '1935909305', 'calle 40h sur#42 68', '1037605836', 'ENVIGADO', '2022-08-16', 'NA', 'A+', 'SURA', 'PORVENIR', 'BANCOLOMBIA', NULL, NULL),
(117, NULL, NULL, '13,00', NULL, 'MARTINEZ FERNANDEZ ANA VICTORIA', 'ANA', 'VICTORIA', 'FERNANDEZ', 'MARTINEZ', '1998-01-04', '3015532537', 'anavictoria1912@gmail.com', 'Recruiter', '43200000606', 'crr 99A #48A-13 Torreon de Santa Lucia', '1047499508', 'MEDELLIN', '2022-08-16', 'Antiobioticos : penisilina, amoxcisilina', 'O+', 'Sura', 'Colpensiones', 'BANCOLOMBIA', NULL, NULL),
(118, NULL, NULL, '13,00', NULL, 'NIÃ‘O CHARRY FANNY PAOLA', 'FANNY', 'PAOLA', 'CHARRY', 'NIÃ‘O', '1991-04-07', '3166921919', 'paolisss791@gmail.com', 'Business Development Representative', '10129075525', 'cll43 Sur #46A -56', '1022368110', 'ENVIGADO', '2022-08-16', 'Comida de mar, rinitis', 'A+', 'Sanitas', 'Porvenir', 'BANCOLOMBIA', NULL, NULL),
(119, NULL, NULL, '', NULL, 'ARREDONDO PORTILLO CAMILO', 'CAMILO', '', 'PORTILLO', 'ARREDONDO', '2001-08-31', '3206266851', 'portillocap0831@gmail.com', 'Recruiter', '3206266851', 'cra 22b calle 56bb- 17 int 203 el pinal', '1192912103', 'MEDELLIN', '2022-08-16', 'NA', 'A+', '', '', 'NEQUI', NULL, NULL),
(120, NULL, NULL, '13,00', NULL, 'QUINCHIA TORO KARINA LIZETH', 'KARINA', 'LIZETH', 'TORO', 'QUINCHIA', '1997-09-29', '3233341525', 'KARINA-QUICHIA@OUTLOOK.COM', 'Recruiter', '58014466477', 'TRANSVERSAL 42C#43-51 VILLAS DE RIONEGRO', '1020482069', 'RIONEGRO', '2022-08-16', 'NA', 'A+', 'SAVIASALUD', 'COLPENSIONES', 'BANCOLOMBIA', NULL, NULL),
(121, NULL, NULL, '13,00', NULL, 'RIBON CHAVEZ SANTIAGO', 'SANTIAGO', '', 'CHAVEZ', 'RIBON', '1993-05-27', '3502853473', 'raibon12@hotmail.com', 'Recruiter', '459200000000', 'cll43 Sur #46A -56', '1136885382', 'ENVIGADO', '2022-08-16', 'Polvo', 'O+', 'Sanitas', 'Colfondos', 'DAVIVIENDA', NULL, NULL),
(122, NULL, NULL, '13,00', NULL, 'OCAMPO GOMEZ VALENTINA', 'VALENTINA', '', 'GOMEZ', 'OCAMPO', '1997-02-27', '3234903064', 'VOG0227@HOTMAIL.COM', 'Recruiter', '7299811390', 'CALLE27DSUR#27C-15', '1037655693', 'ENVIGADO', '2022-08-16', 'NA', 'B+', 'SURA', 'PROTECCION', 'BANCOLOMBIA', NULL, NULL),
(123, NULL, NULL, '13,00', NULL, 'FLOREZ PANDALES WILMAR DANIEL', 'WILMAR', 'DANIEL', 'PANALES', 'FLOREZ', '1999-07-13', '3203410382', 'WILCAM1316@GMAIL.COM', 'Recruiter', '3118435325', 'CRA58#7-42', '1077481424', 'MEDELLIN', '2022-08-16', 'NA', 'A+', 'SUMIMEDICAL', 'PROTECCION', 'NEQUI', NULL, NULL),
(124, NULL, NULL, '13', NULL, 'SANTOS OSPINA NICOLAS FELIPE', 'NICOLAS', 'FELIPE', 'OSPINA', 'SANTOS', '1983-06-28', '3193817227', 'nikolasfelipe@gmail.com', 'SR Recruiter', '10052788029', 'CL 78 sur 40 211', '71193905', 'MEDELLIN', '2022-09-01', 'NA', 'A+', 'Sura', 'Proteccion', 'Bancolombia', NULL, NULL),
(125, NULL, NULL, '', NULL, ' GAVIRIA VASQUEZ JUAN PABLO', 'JUAN', 'PABLO', 'VASQUEZ', 'GAVIRIA', '1998-10-31', '312 623 2534', 'gaviriajuanpablo@gmail.com', 'Recruiter', '741968932', 'CALLE 32B # 86 - 41 - BELEN LAS MERCEDES ', '1037664816', 'MEDELLIN', '2022-09-20', 'NA', 'O+', 'SURA', 'PROTECCION', 'Bancolombia', NULL, NULL),
(126, NULL, NULL, '', NULL, ' OCHOA CARRILLO JOAN SEBASTIAN', 'JOAN', 'SEBASTIAN', 'CARRILLO', 'OCHOA', '1999-01-03', '322 3984476', 'Joanse132010@hotmail.com', 'Recruiter', '500001440', 'Carrera 75 nÃºmero 97-96', '1152714687', 'MEDELLIN', '2022-09-20', '', 'O+', 'SURA', 'PROTECCION', 'Bancolombia', NULL, NULL),
(127, NULL, NULL, '', NULL, ' URREGO TRUJILLO MARIA CAMILA', 'MARIA', 'CAMILIA', 'TRUJILLO', 'URREGO', '2000-07-11', '313 6982236', 'mariacamilaut@gmail.com', 'Recruiter', '91241928883', 'Carrera 48b#84b-7 Piso#3', '1000564325', 'BELLO', '2022-09-20', 'NA', 'A+', 'SURA', 'PROTECCION', 'Bancolombia', NULL, NULL),
(128, NULL, NULL, '', NULL, ' VIVAS BAEZ LUIS ANGEL', 'LUIS', 'ANGEL', 'BAEZ', 'VIVAS', '1992-11-08', '3004381008', 'l.vivas8a@gmail.com', 'Recruiter', '1727925887', 'Carrera 43 C # 68 Sur 21 - 903', '1015195615', 'SABANETA', '2022-09-20', '', 'O+', 'SURA', 'PORVENIR', 'Bancolombia', NULL, NULL),
(1192912104, '', '', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '', '', '0000-00-00', '', '', '', '', '', 10, '');

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
