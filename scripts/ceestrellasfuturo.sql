-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-10-2022 a las 01:23:13
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ceestrellasfuturo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE `asignatura` (
  `cod_asig` varchar(5) NOT NULL,
  `nom_asig` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `asignatura`
--

INSERT INTO `asignatura` (`cod_asig`, `nom_asig`) VALUES
('00001', 'Matemáticas'),
('00002', 'Humanidades'),
('00003', 'Sociales'),
('00004', 'Naturales'),
('00005', 'Artística'),
('00006', 'Geometría'),
('00007', 'Inglés'),
('00008', 'Religión'),
('00009', 'Ed.Física'),
('00010', 'Ética'),
('00011', 'Comp.Lectoras'),
('00012', 'Informática');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `id_docente` varchar(10) NOT NULL,
  `nom_doc` varchar(20) NOT NULL,
  `ape_doc` varchar(20) NOT NULL,
  `fech_nac_doc` date NOT NULL,
  `edad_doc` int(2) NOT NULL,
  `tel_doc` varchar(10) NOT NULL,
  `correo_doc` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`id_docente`, `nom_doc`, `ape_doc`, `fech_nac_doc`, `edad_doc`, `tel_doc`, `correo_doc`) VALUES
('1002738122', 'Diana Carolina', 'Mesa', '1976-08-23', 38, '3002839320', 'dicamesa@gmail.com'),
('1002839283', 'Maria Nubia', 'Bayona', '1976-08-23', 39, '3102738239', 'mariabay@gmail.com'),
('1052738291', 'Bryan Mauricio', 'Morales', '1999-04-01', 22, '3132672832', 'BryanMorales@gmail.c'),
('1053723849', 'Diana Marcela', 'Alvarez Cachope', '1978-11-30', 40, '3117283920', 'maralv@gmail.com'),
('23589765', 'Olga Edith', 'Cárdenas', '1993-07-12', 45, '3123652637', 'olgacard@gmail.com'),
('23748293', 'Gloria Cecilia', 'Zea', '1990-03-11', 31, '3162839290', 'gloriazea@gmail.com'),
('4119283', 'Claudia Consuelo', 'Becerra', '1876-01-24', 46, '3122783712', 'claubec@gmail.com'),
('74253612', 'Alba Yalile', 'Castro Vargas', '1867-05-08', 48, '3147283929', 'albacas@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docentexasignatura`
--

CREATE TABLE `docentexasignatura` (
  `cod_asig_docasi` varchar(5) NOT NULL,
  `id_docente_docasi` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `docentexasignatura`
--

INSERT INTO `docentexasignatura` (`cod_asig_docasi`, `id_docente_docasi`) VALUES
('00001', '74253612'),
('00002', '23589765'),
('00003', '4119283'),
('00004', '1053723849'),
('00005', '74253612'),
('00006', '4119283'),
('00007', '1052738291'),
('00008', '4119283'),
('00009', '1052738291'),
('00010', '1053723849'),
('00011', '23589765'),
('00012', '1053723849');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE `estudiantes` (
  `id_estudiante` varchar(10) NOT NULL,
  `nom_est` varchar(20) NOT NULL,
  `ape_est` varchar(20) NOT NULL,
  `fecha_nac` date NOT NULL,
  `edad_est` int(2) NOT NULL,
  `genero_est` varchar(10) NOT NULL,
  `tel_est` varchar(10) NOT NULL,
  `correo_est` varchar(20) NOT NULL,
  `dir_est` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id_estudiante`, `nom_est`, `ape_est`, `fecha_nac`, `edad_est`, `genero_est`, `tel_est`, `correo_est`, `dir_est`) VALUES
('1052356738', 'Cristián Alejandro', 'Velandia Guevara', '2016-01-25', 5, 'Masculino', '3112342433', '', 'Calle 5A 2-23'),
('1052378293', 'Andrea', 'Salamanca Pérez', '2015-09-30', 6, 'Femenino', '3223542171', '', 'Carrera 1 No 2-23'),
('1052637283', 'Sara Sofía', 'Camargo López', '2011-06-24', 10, 'Femenino', '311526849', 'saracamargo24@gmail.', 'Los sauces');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado`
--

CREATE TABLE `grado` (
  `cod_grado` varchar(5) NOT NULL,
  `nom_grado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `grado`
--

INSERT INTO `grado` (`cod_grado`, `nom_grado`) VALUES
('GR001', 'Parvúlos'),
('GR002', 'Pre-Jardín'),
('GR003', 'Jardín'),
('GR004', 'Transición A'),
('GR005', 'Transición B'),
('GR006', 'Primero'),
('GR007', 'Segundo'),
('GR008', 'Tercero'),
('GR009', 'Cuarto'),
('GR010', 'Quinto');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gradoxestudiantes`
--

CREATE TABLE `gradoxestudiantes` (
  `cod_grado_graest` varchar(5) DEFAULT NULL,
  `id_estudiante_graest` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `gradoxestudiantes`
--

INSERT INTO `gradoxestudiantes` (`cod_grado_graest`, `id_estudiante_graest`) VALUES
('GR006', '1052356738'),
('GR006', '1052378293'),
('GR010', '1052637283');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matricula`
--

CREATE TABLE `matricula` (
  `cod_matricula` varchar(11) NOT NULL,
  `id_estudiante` varchar(10) NOT NULL,
  `fech_matricula` date NOT NULL,
  `id_grado` varchar(5) NOT NULL,
  `id_pago` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `matricula`
--

INSERT INTO `matricula` (`cod_matricula`, `id_estudiante`, `fech_matricula`, `id_grado`, `id_pago`) VALUES
('CE001', '1052637283', '2022-11-29', 'GR010', '10001');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `matriculaxestudiante`
--

CREATE TABLE `matriculaxestudiante` (
  `cod_matricula_est` varchar(11) NOT NULL,
  `fech_matricula_est` date NOT NULL,
  `id_pago_pagoest` varchar(5) NOT NULL,
  `cod_grado_gradest` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `matriculaxestudiante`
--

INSERT INTO `matriculaxestudiante` (`cod_matricula_est`, `fech_matricula_est`, `id_pago_pagoest`, `cod_grado_gradest`) VALUES
('CE001', '2022-11-29', '10001', 'GR010');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagos`
--

CREATE TABLE `pagos` (
  `id_pago` varchar(5) NOT NULL,
  `tipo_pago` varchar(20) NOT NULL,
  `fech_pago` date NOT NULL,
  `val_pago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pagos`
--

INSERT INTO `pagos` (`id_pago`, `tipo_pago`, `fech_pago`, `val_pago`) VALUES
('PG001', 'Matrícula', '2022-01-25', 120);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagosxestudiante`
--

CREATE TABLE `pagosxestudiante` (
  `id_pago_pagoest` varchar(5) NOT NULL,
  `id_est_pagoest` varchar(10) NOT NULL,
  `tipo_pago_pagoest` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pagosxestudiante`
--

INSERT INTO `pagosxestudiante` (`id_pago_pagoest`, `id_est_pagoest`, `tipo_pago_pagoest`) VALUES
('PG001', '1052356738', 'Matricula');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL,
  `Nombre` text NOT NULL,
  `Usuario` varchar(20) NOT NULL,
  `Contraseña` varchar(8) NOT NULL,
  `Rol` varchar(20) NOT NULL,
  `Imagen` text NOT NULL,
  `Estado` int(11) NOT NULL,
  `Fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`ID`, `Nombre`, `Usuario`, `Contraseña`, `Rol`, `Imagen`, `Estado`, `Fecha`) VALUES
(1, 'Usuario Administrador\r\n', '1052378529', 'admin123', 'admin', '', 1, '2022-09-30 03:08:35');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`cod_asig`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`id_docente`);

--
-- Indices de la tabla `docentexasignatura`
--
ALTER TABLE `docentexasignatura`
  ADD KEY `cod_asig_docasi` (`cod_asig_docasi`,`id_docente_docasi`),
  ADD KEY `id_docente_docasi` (`id_docente_docasi`);

--
-- Indices de la tabla `estudiantes`
--
ALTER TABLE `estudiantes`
  ADD PRIMARY KEY (`id_estudiante`);

--
-- Indices de la tabla `grado`
--
ALTER TABLE `grado`
  ADD PRIMARY KEY (`cod_grado`);

--
-- Indices de la tabla `gradoxestudiantes`
--
ALTER TABLE `gradoxestudiantes`
  ADD KEY `cod_grado_graest` (`cod_grado_graest`,`id_estudiante_graest`),
  ADD KEY `id_estudiante_graest` (`id_estudiante_graest`);

--
-- Indices de la tabla `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`cod_matricula`),
  ADD KEY `id_pago` (`id_pago`);

--
-- Indices de la tabla `matriculaxestudiante`
--
ALTER TABLE `matriculaxestudiante`
  ADD KEY `cod_matricula_est` (`cod_matricula_est`,`id_pago_pagoest`,`cod_grado_gradest`),
  ADD KEY `cod_grado_gradest` (`cod_grado_gradest`);

--
-- Indices de la tabla `pagos`
--
ALTER TABLE `pagos`
  ADD PRIMARY KEY (`id_pago`);

--
-- Indices de la tabla `pagosxestudiante`
--
ALTER TABLE `pagosxestudiante`
  ADD KEY `id_pago_pagoest` (`id_pago_pagoest`,`id_est_pagoest`),
  ADD KEY `id_est_pagoest` (`id_est_pagoest`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Usuario`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `docentexasignatura`
--
ALTER TABLE `docentexasignatura`
  ADD CONSTRAINT `docentexasignatura_ibfk_1` FOREIGN KEY (`cod_asig_docasi`) REFERENCES `asignatura` (`cod_asig`),
  ADD CONSTRAINT `docentexasignatura_ibfk_2` FOREIGN KEY (`id_docente_docasi`) REFERENCES `docente` (`id_docente`);

--
-- Filtros para la tabla `gradoxestudiantes`
--
ALTER TABLE `gradoxestudiantes`
  ADD CONSTRAINT `gradoxestudiantes_ibfk_1` FOREIGN KEY (`id_estudiante_graest`) REFERENCES `estudiantes` (`id_estudiante`),
  ADD CONSTRAINT `gradoxestudiantes_ibfk_2` FOREIGN KEY (`cod_grado_graest`) REFERENCES `grado` (`cod_grado`);

--
-- Filtros para la tabla `matriculaxestudiante`
--
ALTER TABLE `matriculaxestudiante`
  ADD CONSTRAINT `matriculaxestudiante_ibfk_1` FOREIGN KEY (`cod_matricula_est`) REFERENCES `matricula` (`cod_matricula`),
  ADD CONSTRAINT `matriculaxestudiante_ibfk_2` FOREIGN KEY (`cod_grado_gradest`) REFERENCES `grado` (`cod_grado`);

--
-- Filtros para la tabla `pagosxestudiante`
--
ALTER TABLE `pagosxestudiante`
  ADD CONSTRAINT `pagosxestudiante_ibfk_1` FOREIGN KEY (`id_pago_pagoest`) REFERENCES `pagos` (`id_pago`),
  ADD CONSTRAINT `pagosxestudiante_ibfk_2` FOREIGN KEY (`id_est_pagoest`) REFERENCES `estudiantes` (`id_estudiante`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
