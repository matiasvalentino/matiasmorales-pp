-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 20-04-2026 a las 23:38:47
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `facultad`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ALUMNOS`
--

CREATE TABLE `ALUMNOS` (
  `ID_ALUMNO` int(11) NOT NULL,
  `NOMBRE` varchar(100) NOT NULL,
  `EDAD` int(11) DEFAULT NULL,
  `DNI` varchar(20) NOT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `ID_CARRERA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ALUMNOS`
--

INSERT INTO `ALUMNOS` (`ID_ALUMNO`, `NOMBRE`, `EDAD`, `DNI`, `EMAIL`, `ID_CARRERA`) VALUES
(1, 'Juan Pérez', 20, '40123456', 'juan.perez@email.com', 1),
(2, 'María García', 22, '39876543', 'maria.garcia@email.com', 2),
(3, 'Carlos López', 19, '41234567', 'carlos.lopez@email.com', 3),
(4, 'Ana Martínez', 21, '40567890', 'ana.martinez@email.com', 4),
(5, 'Lucas Rodríguez', 23, '38901234', 'lucas.rodriguez@email.com', 1),
(6, 'Valentina Fernández', 20, '40345678', 'valentina.fernandez@email.com', 2),
(7, 'Martín González', 24, '38234567', 'martin.gonzalez@email.com', 3),
(8, 'Sofía Díaz', 18, '42345678', 'sofia.diaz@email.com', 4),
(9, 'Tomás Sánchez', 22, '39567890', 'tomas.sanchez@email.com', 1),
(10, 'Camila Romero', 21, '40678901', 'camila.romero@email.com', 2),
(11, 'Nicolás Torres', 25, '37890123', 'nicolas.torres@email.com', 3),
(12, 'Florencia Álvarez', 19, '41456789', 'florencia.alvarez@email.com', 4),
(13, 'Santiago Ruiz', 20, '40890123', 'santiago.ruiz@email.com', 1),
(14, 'Lucía Ramírez', 23, '39012345', 'lucia.ramirez@email.com', 2),
(15, 'Matías Flores', 22, '39345678', 'matias.flores@email.com', 3),
(16, 'Julieta Acosta', 21, '40234567', 'julieta.acosta@email.com', 4),
(17, 'Facundo Medina', 26, '37012345', 'facundo.medina@email.com', 1),
(18, 'Agustina Herrera', 20, '40456789', 'agustina.herrera@email.com', 2),
(19, 'Bruno Castro', 19, '41567890', 'bruno.castro@email.com', 3),
(20, 'Milagros Suárez', 24, '38345678', 'milagros.suarez@email.com', 4),
(21, 'Ignacio Morales', 22, '39678901', 'ignacio.morales@email.com', 1),
(22, 'Catalina Ortiz', 21, '40012345', 'catalina.ortiz@email.com', 2),
(23, 'Federico Silva', 23, '39123456', 'federico.silva@email.com', 3),
(24, 'Rocío Gutiérrez', 20, '40789012', 'rocio.gutierrez@email.com', 4),
(25, 'Benjamín Rojas', 18, '42456789', 'benjamin.rojas@email.com', 1),
(26, 'Martina Molina', 25, '37234567', 'martina.molina@email.com', 2),
(27, 'Gonzalo Navarro', 22, '39789012', 'gonzalo.navarro@email.com', 3),
(28, 'Delfina Cabrera', 21, '40901234', 'delfina.cabrera@email.com', 4),
(29, 'Ezequiel Aguirre', 20, '40111222', 'ezequiel.aguirre@email.com', 1),
(30, 'Abril Vargas', 19, '41678901', 'abril.vargas@email.com', 2),
(31, 'Lautaro Peralta', 24, '38456789', 'lautaro.peralta@email.com', 3),
(32, 'Bianca Ríos', 22, '39890123', 'bianca.rios@email.com', 4),
(33, 'Thiago Domínguez', 21, '40222333', 'thiago.dominguez@email.com', 1),
(34, 'Candela Vega', 23, '39234567', 'candela.vega@email.com', 2),
(35, 'Maximiliano Sosa', 20, '40333444', 'maximiliano.sosa@email.com', 3),
(36, 'Pilar Luna', 26, '37345678', 'pilar.luna@email.com', 4),
(37, 'Joaquín Campos', 19, '41789012', 'joaquin.campos@email.com', 1),
(38, 'Morena Paz', 22, '39901234', 'morena.paz@email.com', 2),
(39, 'Emiliano Giménez', 21, '40444555', 'emiliano.gimenez@email.com', 3),
(40, 'Renata Coronel', 20, '40555666', 'renata.coronel@email.com', 4),
(41, 'Sebastián Ojeda', 25, '37456789', 'sebastian.ojeda@email.com', 1),
(42, 'Alma Ledesma', 18, '42567890', 'alma.ledesma@email.com', 2),
(43, 'Dante Mansilla', 23, '39345679', 'dante.mansilla@email.com', 3),
(44, 'Jazmín Villalba', 22, '39456780', 'jazmin.villalba@email.com', 4),
(45, 'Bautista Montero', 20, '40666777', 'bautista.montero@email.com', 1),
(46, 'Emma Bravo', 21, '40777888', 'emma.bravo@email.com', 2),
(47, 'Franco Quiroga', 24, '38567890', 'franco.quiroga@email.com', 3),
(48, 'Isabella Cáceres', 19, '41890123', 'isabella.caceres@email.com', 4),
(49, 'Mateo Bustos', 22, '39567891', 'mateo.bustos@email.com', 1),
(50, 'Lola Figueroa', 20, '40888999', 'lola.figueroa@email.com', 2),
(51, 'Agustín Lucero', 21, '40999111', 'agustin.lucero@email.com', 3),
(52, 'Mía Godoy', 23, '39678902', 'mia.godoy@email.com', 4),
(53, 'Ramiro Escobar', 26, '37567890', 'ramiro.escobar@email.com', 1),
(54, 'Zoe Ponce', 20, '40112233', 'zoe.ponce@email.com', 2),
(55, 'Ciro Maldonado', 19, '41901234', 'ciro.maldonado@email.com', 3),
(56, 'Olivia Soria', 22, '39789013', 'olivia.soria@email.com', 4),
(57, 'Felipe Ibáñez', 21, '40223344', 'felipe.ibanez@email.com', 1),
(58, 'Antonella Miranda', 24, '38678901', 'antonella.miranda@email.com', 2),
(59, 'Gabriel Fuentes', 20, '40334455', 'gabriel.fuentes@email.com', 3),
(60, 'Julia Pereyra', 18, '42678901', 'julia.pereyra@email.com', 4),
(61, 'Diego Ramos', 25, '37678901', 'diego.ramos@email.com', 1),
(62, 'Clara Benítez', 22, '39890124', 'clara.benitez@email.com', 2),
(63, 'Iván Leiva', 21, '40445566', 'ivan.leiva@email.com', 3),
(64, 'Lara Arrieta', 20, '40556677', 'lara.arrieta@email.com', 4),
(65, 'Rafael Villar', 23, '39012346', 'rafael.villar@email.com', 1),
(66, 'Nina Cordero', 19, '41012345', 'nina.cordero@email.com', 2),
(67, 'Hugo Barreto', 22, '39123457', 'hugo.barreto@email.com', 3),
(68, 'Celeste Duarte', 21, '40667788', 'celeste.duarte@email.com', 4),
(69, 'Simón Arce', 24, '38789012', 'simon.arce@email.com', 1),
(70, 'Vera Maidana', 20, '40778899', 'vera.maidana@email.com', 2),
(71, 'Nahuel Paredes', 26, '37789012', 'nahuel.paredes@email.com', 3),
(72, 'Elena Garay', 22, '39234568', 'elena.garay@email.com', 4),
(73, 'Marcos Juárez', 21, '40889900', 'marcos.juarez@email.com', 1),
(74, 'Guadalupe Blanco', 20, '40990011', 'guadalupe.blanco@email.com', 2),
(75, 'Adrián Gallego', 19, '41123456', 'adrian.gallego@email.com', 3),
(76, 'Amparo Correa', 23, '39345680', 'amparo.correa@email.com', 4),
(77, 'Leonardo Palacios', 22, '39456781', 'leonardo.palacios@email.com', 1),
(78, 'Victoria Páez', 25, '37890124', 'victoria.paez@email.com', 2),
(79, 'Andrés Villegas', 20, '40101112', 'andres.villegas@email.com', 3),
(80, 'Macarena Barrios', 21, '40121314', 'macarena.barrios@email.com', 4),
(81, 'Pablo Cárdenas', 24, '38890123', 'pablo.cardenas@email.com', 1),
(82, 'Daniela Gómez', 18, '42789012', 'daniela.gomez@email.com', 2),
(83, 'Emilio Contreras', 22, '39567892', 'emilio.contreras@email.com', 3),
(84, 'Paloma Arias', 20, '40131415', 'paloma.arias@email.com', 4),
(85, 'Alan Méndez', 21, '40141516', 'alan.mendez@email.com', 1),
(86, 'Luana Acuña', 23, '39678903', 'luana.acuna@email.com', 2),
(87, 'Rodrigo Ávila', 26, '37901234', 'rodrigo.avila@email.com', 3),
(88, 'Priscila Leguizamón', 19, '41234568', 'priscila.leguizamon@email.com', 4),
(89, 'Fernando Rivas', 22, '39789014', 'fernando.rivas@email.com', 1),
(90, 'Micaela Oliva', 20, '40151617', 'micaela.oliva@email.com', 2),
(91, 'Alexis Vera', 21, '40161718', 'alexis.vera@email.com', 3),
(92, 'Aldana Soto', 24, '38901235', 'aldana.soto@email.com', 4),
(93, 'Christian Figueroa', 20, '40171819', 'christian.figueroa@email.com', 1),
(94, 'Sol Ceballos', 25, '37012346', 'sol.ceballos@email.com', 2),
(95, 'Axel Espinoza', 22, '39890125', 'axel.espinoza@email.com', 3),
(96, 'Maite Salazar', 21, '40181920', 'maite.salazar@email.com', 4),
(97, 'Enzo Bermúdez', 19, '41345679', 'enzo.bermudez@email.com', 1),
(98, 'Brisa Sandoval', 23, '39901235', 'brisa.sandoval@email.com', 2),
(99, 'Kevin Chávez', 20, '40191021', 'kevin.chavez@email.com', 3),
(100, 'Ayelén Saavedra', 22, '39012347', 'ayelen.saavedra@email.com', 4),
(101, 'Héctor Peña', 26, '37123456', 'hector.pena@email.com', 1),
(102, 'Tamara Castaño', 18, '42890123', 'tamara.castano@email.com', 2),
(103, 'Nicolás Toro', 21, '40201122', 'nicolas.toro@email.com', 3),
(104, 'Carolina Núñez', 24, '38012346', 'carolina.nunez@email.com', 4),
(105, 'Damián Lagos', 20, '40211223', 'damian.lagos@email.com', 1),
(106, 'Natalia Orozco', 22, '39123458', 'natalia.orozco@email.com', 2),
(107, 'Leandro Gallardo', 21, '40221324', 'leandro.gallardo@email.com', 3),
(108, 'Ludmila Cano', 25, '37234568', 'ludmila.cano@email.com', 4),
(109, 'Ramón Barrientos', 20, '40231425', 'ramon.barrientos@email.com', 1),
(110, 'Josefina Prieto', 19, '41456790', 'josefina.prieto@email.com', 2),
(111, 'Ariel Aguero', 23, '39234569', 'ariel.aguero@email.com', 3),
(112, 'Ailén Mónaco', 22, '39345681', 'ailen.monaco@email.com', 4),
(113, 'Iñaki Salgado', 21, '40241526', 'inaki.salgado@email.com', 1),
(114, 'Milena Serra', 20, '40251627', 'milena.serra@email.com', 2),
(115, 'Tobías Rivero', 24, '38123457', 'tobias.rivero@email.com', 3),
(116, 'Nadia Quiroz', 26, '37345679', 'nadia.quiroz@email.com', 4),
(117, 'Julián Ayala', 22, '39456782', 'julian.ayala@email.com', 1),
(118, 'Gisela Funes', 18, '42901234', 'gisela.funes@email.com', 2),
(119, 'Roberto Andrade', 21, '40261728', 'roberto.andrade@email.com', 3),
(120, 'Melina Carballo', 20, '40271829', 'melina.carballo@email.com', 4),
(121, 'Esteban Aráoz', 23, '39567893', 'esteban.araoz@email.com', 1),
(122, 'Ailín Vergara', 25, '37456780', 'ailin.vergara@email.com', 2),
(123, 'Omar Segovia', 19, '41567891', 'omar.segovia@email.com', 3),
(124, 'Lourdes Allende', 22, '39678904', 'lourdes.allende@email.com', 4),
(125, 'Daniel Paz', 21, '40281930', 'daniel.paz@email.com', 1),
(126, 'Yésica Montiel', 24, '38234568', 'yesica.montiel@email.com', 2),
(127, 'Mauricio Escalante', 20, '40292031', 'mauricio.escalante@email.com', 3),
(128, 'Paula Zárate', 22, '39789015', 'paula.zarate@email.com', 4),
(129, 'Hernán Videla', 26, '37567891', 'hernan.videla@email.com', 1),
(130, 'Karen Quintero', 20, '40302132', 'karen.quintero@email.com', 2),
(131, 'César Villanueva', 21, '40312233', 'cesar.villanueva@email.com', 3),
(132, 'Lorena Ahumada', 23, '39890126', 'lorena.ahumada@email.com', 4),
(133, 'Walter Medrano', 19, '41678902', 'walter.medrano@email.com', 1),
(134, 'Débora Coria', 22, '39901236', 'debora.coria@email.com', 2),
(135, 'Maximiliano Tejada', 20, '40322334', 'max.tejada@email.com', 3),
(136, 'Maitén Ferreyra', 25, '37678902', 'maiten.ferreyra@email.com', 4),
(137, 'Lisandro Barrera', 21, '40332435', 'lisandro.barrera@email.com', 1),
(138, 'Jazmín Iglesias', 24, '38345679', 'jazmin.iglesias@email.com', 2),
(139, 'Genaro Cisneros', 22, '39012348', 'genaro.cisneros@email.com', 3),
(140, 'Malena Carrizo', 18, '42012345', 'malena.carrizo@email.com', 4),
(141, 'Renzo Montes', 20, '40342536', 'renzo.montes@email.com', 1),
(142, 'Berenice Cardozo', 21, '40352637', 'berenice.cardozo@email.com', 2),
(143, 'Joel Meza', 23, '39123459', 'joel.meza@email.com', 3),
(144, 'Abigail Olmos', 26, '37789013', 'abigail.olmos@email.com', 4),
(145, 'Samuel Retamozo', 22, '39234570', 'samuel.retamozo@email.com', 1),
(146, 'Oriana Espósito', 20, '40362738', 'oriana.esposito@email.com', 2),
(147, 'Osvaldo Taborda', 19, '41789013', 'osvaldo.taborda@email.com', 3),
(148, 'Milagros Cuello', 21, '40372839', 'milagros.cuello@email.com', 4),
(149, 'Marcos Pereyra', 24, '38456790', 'marcos.pereyra@email.com', 1),
(150, 'Camila Heredia', 25, '37890125', 'camila.heredia@email.com', 2),
(151, 'Darío Valenzuela', 20, '40382940', 'dario.valenzuela@email.com', 3),
(152, 'Kiara Mendieta', 22, '39345682', 'kiara.mendieta@email.com', 4),
(153, 'Gustavo Giordano', 21, '40393041', 'gustavo.giordano@email.com', 1),
(154, 'Florencia Toledo', 23, '39456783', 'florencia.toledo@email.com', 2),
(155, 'Elías Guzmán', 18, '42123456', 'elias.guzman@email.com', 3),
(156, 'Ivana Zapata', 20, '40403142', 'ivana.zapata@email.com', 4),
(157, 'Mariano Pizarro', 22, '39567894', 'mariano.pizarro@email.com', 1),
(158, 'Josefina Luna', 26, '37901235', 'josefina.luna@email.com', 2),
(159, 'Tiziano Durán', 21, '40413243', 'tiziano.duran@email.com', 3),
(160, 'Luciana Brizuela', 19, '41890124', 'luciana.brizuela@email.com', 4),
(161, 'Nelson Acevedo', 24, '38567891', 'nelson.acevedo@email.com', 1),
(162, 'Yamila Zárate', 20, '40423344', 'yamila.zarate@email.com', 2),
(163, 'Rodolfo Bazán', 22, '39678905', 'rodolfo.bazan@email.com', 3),
(164, 'Sofía Echevarría', 25, '37012347', 'sofia.echevarria@email.com', 4),
(165, 'Patricio Santana', 21, '40433445', 'patricio.santana@email.com', 1),
(166, 'Virginia Melgarejo', 23, '39789016', 'virginia.melgarejo@email.com', 2),
(167, 'Lucio Iriarte', 20, '40443546', 'lucio.iriarte@email.com', 3),
(168, 'Noelia Avalos', 22, '39890127', 'noelia.avalos@email.com', 4),
(169, 'Jonathan Lescano', 18, '42234567', 'jonathan.lescano@email.com', 1),
(170, 'Andrea Villagra', 24, '38678902', 'andrea.villagra@email.com', 2),
(171, 'Cristian Rolón', 21, '40453647', 'cristian.rolon@email.com', 3),
(172, 'Solange Albornoz', 26, '37123457', 'solange.albornoz@email.com', 4),
(173, 'Brian Roldán', 20, '40463748', 'brian.roldan@email.com', 1),
(174, 'Magalí Tissera', 22, '39901237', 'magali.tissera@email.com', 2),
(175, 'Osvaldo Guerrero', 19, '41901235', 'osvaldo.guerrero@email.com', 3),
(176, 'Micaela Olguín', 21, '40473849', 'micaela.olguin@email.com', 4),
(177, 'Ernesto Tapia', 23, '39012349', 'ernesto.tapia@email.com', 1),
(178, 'Martina Agüero', 25, '37234569', 'martina.aguero@email.com', 2),
(179, 'Adriel Moyano', 20, '40483950', 'adriel.moyano@email.com', 3),
(180, 'Romina Luna', 22, '39123460', 'romina.luna@email.com', 4),
(181, 'Claudio Sotelo', 24, '38789013', 'claudio.sotelo@email.com', 1),
(182, 'Belén Moreira', 18, '42345679', 'belen.moreira@email.com', 2),
(183, 'Sergio Vidal', 21, '40494051', 'sergio.vidal@email.com', 3),
(184, 'Vanesa Páez', 20, '40504152', 'vanesa.paez@email.com', 4),
(185, 'Gastón Rivero', 22, '39234571', 'gaston.rivero@email.com', 1),
(186, 'Catalina Oviedo', 26, '37345680', 'catalina.oviedo@email.com', 2),
(187, 'Emanuel Echeverría', 19, '41012346', 'emanuel.echeverria@email.com', 3),
(188, 'Valeria Marinero', 23, '39345683', 'valeria.marinero@email.com', 4),
(189, 'Rubén Acosta', 21, '40514253', 'ruben.acosta@email.com', 1),
(190, 'Cecilia Reinoso', 20, '40524354', 'cecilia.reinoso@email.com', 2),
(191, 'Nicolás Arias', 24, '38890124', 'nicolas.arias@email.com', 3),
(192, 'Estefanía Vázquez', 22, '39456784', 'estefania.vazquez@email.com', 4),
(193, 'Germán Córdoba', 25, '37456781', 'german.cordoba@email.com', 1),
(194, 'Marina Pinto', 21, '40534455', 'marina.pinto@email.com', 2),
(195, 'Gonzalo Pérez', 20, '40544556', 'gonzalo.perez2@email.com', 3),
(196, 'Eliana Giménez', 18, '42456790', 'eliana.gimenez@email.com', 4),
(197, 'Matías Aranda', 23, '39567895', 'matias.aranda@email.com', 1),
(198, 'Jesica Romero', 22, '39678906', 'jesica.romero@email.com', 2),
(199, 'Agustín Valdez', 21, '40554657', 'agustin.valdez@email.com', 3),
(200, 'Camila Suárez', 24, '38901236', 'camila.suarez@email.com', 4),
(201, 'Ignacio Soria', 26, '37567892', 'ignacio.soria@email.com', 1),
(202, 'Lucía Benítez', 20, '40564758', 'lucia.benitez@email.com', 2),
(203, 'Tomás Salinas', 19, '41123457', 'tomas.salinas@email.com', 3),
(204, 'Valentina Peralta', 22, '39789017', 'valentina.peralta@email.com', 4),
(205, 'Franco Ledesma', 21, '40574859', 'franco.ledesma@email.com', 1),
(206, 'Abril Moyano', 25, '37678903', 'abril.moyano@email.com', 2),
(207, 'Facundo Rosas', 20, '40584960', 'facundo.rosas@email.com', 3),
(208, 'Sofía Gutiérrez', 23, '39890128', 'sofia.gutierrez2@email.com', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CARRERAS`
--

CREATE TABLE `CARRERAS` (
  `ID_CARRERA` int(11) NOT NULL,
  `NOMBRE` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `CARRERAS`
--

INSERT INTO `CARRERAS` (`ID_CARRERA`, `NOMBRE`) VALUES
(1, 'Análisis de Sistemas'),
(2, 'Profesorado de Historia'),
(3, 'Profesorado de Matemáticas'),
(4, 'Contabilidad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MATERIAS`
--

CREATE TABLE `MATERIAS` (
  `ID_MATERIA` int(11) NOT NULL,
  `NOMBRE` varchar(100) NOT NULL,
  `ID_PROFESOR` int(11) DEFAULT NULL,
  `CURSO` varchar(50) DEFAULT NULL,
  `ID_CARRERA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `MATERIAS`
--

INSERT INTO `MATERIAS` (`ID_MATERIA`, `NOMBRE`, `ID_PROFESOR`, `CURSO`, `ID_CARRERA`) VALUES
(1, 'Algoritmos y Estructuras de Datos', 5, '1° Año', 1),
(2, 'Arquitectura de Computadores', 13, '1° Año', 1),
(3, 'Sistemas Operativos', 21, '2° Año', 1),
(4, 'Bases de Datos I', 33, '2° Año', 1),
(5, 'Ingeniería de Software', 45, '3° Año', 1),
(6, 'Redes y Comunicaciones', 7, '3° Año', 1),
(7, 'Seguridad Informática', 25, '4° Año', 1),
(8, 'Gestión de Proyectos IT', 38, '4° Año', 1),
(9, 'Historia Antigua', 24, '1° Año', 2),
(10, 'Prehistoria y Arqueología', 27, '1° Año', 2),
(11, 'Historia Medieval', 31, '2° Año', 2),
(12, 'Historia Argentina I', 18, '2° Año', 2),
(13, 'Historiografía Genérica', 43, '3° Año', 2),
(14, 'Didáctica de las Ciencias Sociales', 14, '3° Año', 2),
(15, 'Historia Americana Contemporánea', 35, '4° Año', 2),
(16, 'Pensamiento Político Argentino', 48, '4° Año', 2),
(17, 'Análisis Matemático I', 3, '1° Año', 3),
(18, 'Álgebra y Geometría Analítica', 11, '1° Año', 3),
(19, 'Lógica Simbólica', 22, '2° Año', 3),
(20, 'Probabilidad y Estadística', 40, '2° Año', 3),
(21, 'Cálculo Numérico', 17, '3° Año', 3),
(22, 'Topología General', 32, '3° Año', 3),
(23, 'Didáctica de la Matemática', 10, '4° Año', 3),
(24, 'Contabilidad Básica', 1, '1° Año', 4),
(25, 'Derecho Comercial', 41, '1° Año', 4),
(26, 'Macroeconomía', 29, '2° Año', 4),
(27, 'Sistemas de Información Contable', 15, '2° Año', 4),
(28, 'Auditoría I', 19, '3° Año', 4),
(29, 'Impuestos y Regímenes Tributarios', 6, '3° Año', 4),
(30, 'Análisis de Estados Contables', 47, '4° Año', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PROFESORES`
--

CREATE TABLE `PROFESORES` (
  `ID_PROFESOR` int(11) NOT NULL,
  `NOMBRE` varchar(100) NOT NULL,
  `EMAIL` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `PROFESORES`
--

INSERT INTO `PROFESORES` (`ID_PROFESOR`, `NOMBRE`, `EMAIL`) VALUES
(1, 'Juan Carlos Rossi', 'j.rossi@universidad.edu'),
(2, 'Martha Estévez', 'm.estevez@universidad.edu'),
(3, 'Ricardo Darín', 'r.darin@universidad.edu'),
(4, 'Lucía Galán', 'l.galan@universidad.edu'),
(5, 'Jorge Drexler', 'j.drexler@universidad.edu'),
(6, 'Elena Roger', 'e.roger@universidad.edu'),
(7, 'Gustavo Santaolalla', 'g.santaolalla@universidad.edu'),
(8, 'Mercedes Sosa', 'm.sosa@universidad.edu'),
(9, 'Fito Páez', 'f.paez@universidad.edu'),
(10, 'Julieta Venegas', 'j.venegas@universidad.edu'),
(11, 'Andrés Calamaro', 'a.calamaro@universidad.edu'),
(12, 'Natalia Lafourcade', 'n.lafourcade@universidad.edu'),
(13, 'Charly García', 'c.garcia@universidad.edu'),
(14, 'Leonor Manso', 'l.manso@universidad.edu'),
(15, 'Luis Alberto Spinetta', 'l.spinetta@universidad.edu'),
(16, 'Cecilia Roth', 'c.roth@universidad.edu'),
(17, 'Ricardo Mollo', 'r.mollo@universidad.edu'),
(18, 'Norma Aleandro', 'n.aleandro@universidad.edu'),
(19, 'Diego Peretti', 'd.peretti@universidad.edu'),
(20, 'Graciela Borges', 'g.borges@universidad.edu'),
(21, 'Joaquín Sabina', 'j.sabina@universidad.edu'),
(22, 'Serrat Joan Manuel', 'j.serrat@universidad.edu'),
(23, 'Isabel Allende', 'i.allende@universidad.edu'),
(24, 'Gabriel García Márquez', 'g.marquez@universidad.edu'),
(25, 'Mario Benedetti', 'm.benedetti@universidad.edu'),
(26, 'Jorge Luis Borges', 'j.borges@universidad.edu'),
(27, 'Julio Cortázar', 'j.cortazar@universidad.edu'),
(28, 'Alejandra Pizarnik', 'a.pizarnik@universidad.edu'),
(29, 'Ernesto Sabato', 'e.sabato@universidad.edu'),
(30, 'Alfonsina Storni', 'a.storni@universidad.edu'),
(31, 'Pablo Neruda', 'p.neruda@universidad.edu'),
(32, 'Gabriela Mistral', 'g.mistral@universidad.edu'),
(33, 'Eduardo Galeano', 'e.galeano@universidad.edu'),
(34, 'Roberto Arlt', 'r.arlt@universidad.edu'),
(35, 'Horacio Quiroga', 'h.quiroga@universidad.edu'),
(36, 'Adolfo Bioy Casares', 'a.bioy@universidad.edu'),
(37, 'Silvina Ocampo', 's.ocampo@universidad.edu'),
(38, 'Victoria Ocampo', 'v.ocampo@universidad.edu'),
(39, 'Juan Rulfo', 'j.rulfo@universidad.edu'),
(40, 'Octavio Paz', 'o.paz@universidad.edu'),
(41, 'Carlos Fuentes', 'c.fuentes@universidad.edu'),
(42, 'Laura Restrepo', 'l.restrepo@universidad.edu'),
(43, 'Claudia Piñeiro', 'c.pineiro@universidad.edu'),
(44, 'Samanta Schweblin', 's.schweblin@universidad.edu'),
(45, 'Mariana Enríquez', 'm.enriquez@universidad.edu'),
(46, 'Hernán Casciari', 'h.casciari@universidad.edu'),
(47, 'Eduardo Sacheri', 'e.sacheri@universidad.edu'),
(48, 'Leila Guerriero', 'l.guerriero@universidad.edu'),
(49, 'Fabián Casas', 'f.casas@universidad.edu'),
(50, 'Washington Cucurto', 'w.cucurto@universidad.edu');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ALUMNOS`
--
ALTER TABLE `ALUMNOS`
  ADD PRIMARY KEY (`ID_ALUMNO`),
  ADD UNIQUE KEY `DNI` (`DNI`),
  ADD KEY `ID_CARRERA` (`ID_CARRERA`);

--
-- Indices de la tabla `CARRERAS`
--
ALTER TABLE `CARRERAS`
  ADD PRIMARY KEY (`ID_CARRERA`);

--
-- Indices de la tabla `MATERIAS`
--
ALTER TABLE `MATERIAS`
  ADD PRIMARY KEY (`ID_MATERIA`),
  ADD KEY `ID_PROFESOR` (`ID_PROFESOR`),
  ADD KEY `ID_CARRERA` (`ID_CARRERA`);

--
-- Indices de la tabla `PROFESORES`
--
ALTER TABLE `PROFESORES`
  ADD PRIMARY KEY (`ID_PROFESOR`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ALUMNOS`
--
ALTER TABLE `ALUMNOS`
  MODIFY `ID_ALUMNO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ALUMNOS`
--
ALTER TABLE `ALUMNOS`
  ADD CONSTRAINT `alumnos_ibfk_1` FOREIGN KEY (`ID_CARRERA`) REFERENCES `CARRERAS` (`ID_CARRERA`);

--
-- Filtros para la tabla `MATERIAS`
--
ALTER TABLE `MATERIAS`
  ADD CONSTRAINT `materias_ibfk_1` FOREIGN KEY (`ID_PROFESOR`) REFERENCES `PROFESORES` (`ID_PROFESOR`),
  ADD CONSTRAINT `materias_ibfk_2` FOREIGN KEY (`ID_CARRERA`) REFERENCES `CARRERAS` (`ID_CARRERA`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
