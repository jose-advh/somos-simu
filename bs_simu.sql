-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-09-2024 a las 18:47:25
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bs_simu`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `intento`
--

CREATE TABLE `intento` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `fecha_inicio` datetime DEFAULT NULL,
  `fecha_final` datetime DEFAULT NULL,
  `puntuacion_final` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `id` varchar(2) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id`, `nombre`) VALUES
('cn', 'Ciencias naturales'),
('in', 'Ingles'),
('lc', 'Lectura critica'),
('ma', 'Matematicas'),
('sc', 'Sociales y ciudadania');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opcion`
--

CREATE TABLE `opcion` (
  `pregunta_id` int(11) DEFAULT NULL,
  `texto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `opcion`
--

INSERT INTO `opcion` (`pregunta_id`, `texto`) VALUES
(1, '3'),
(1, '9'),
(1, '24'),
(1, '30'),
(2, '2 millones'),
(2, '5 millones'),
(2, '10 millones'),
(2, '15 millones'),
(3, 'La riqueza del mundo está en la naturaleza'),
(3, 'Hay mayor libertad y felicidad en la austeridad'),
(3, 'Los millonarios son pésimos seres humanos'),
(3, 'Para que exista la belleza es necesario ser pobre'),
(5, 'Positivamente, porque al aumentar las ventas de autos particulares, se debe aumentar el número de vendedores.'),
(5, 'Negativamente, por la perdida y/o disminución de empleos dentro del sector automotor..'),
(5, 'Positivamente, por el aumento de empleos en el sector de la construcción vial.'),
(5, 'Negativamente, porque al disminuir el uso del transporte público, se disminuye el número de conductores.'),
(6, 'El ecologismo, porque defiende el uso responsable de los recursos para proteger el medio ambiente.'),
(6, 'El capitalismo, porque prioriza el consumo acelerado de productos y disminuye su durabilidad.'),
(6, 'El socialismo, porque privilegia el control de la producción de los trabajadores industriales.'),
(6, 'El humanismo, porque promueve el avance cientifico para favorecer la calidad de vida del ser humano.'),
(4, 'A las limitaciones de vivir con poco dinero.'),
(4, 'A la condición de vivir en función de las posesiones.'),
(4, 'A la esclavitud de vivir en una tierra de personas infelices.'),
(4, 'A la restricción de vivir sin pode salir de la tierra de Urras.'),
(7, 'Se degradarían moléculas en su interior.'),
(7, 'Perdería todo el agua del citoplasma.'),
(7, 'No habría respiración celular.'),
(7, 'No se formarían proteínas.'),
(8, 'La poca disponibilidad de oxígeno atmosférico y luz solar.'),
(8, 'La excesiva liberación de gases de efecto invernadero.'),
(8, 'La pérdida de hábitat natural y el alto uso de plaguicidas.'),
(8, 'Las elevadas tasas de exportación de los países tropicales.'),
(9, 'Novelistic.'),
(9, 'Informative.'),
(9, 'Scientific.'),
(9, 'Hitorical.'),
(10, 'Zoltan was interested in vampires in his childhood.'),
(10, 'reptiles and amphibians can only be found in Hungary.'),
(10, 'Dr. Takacs is allergic to snakes.'),
(10, 'Dr. Takacs is an animal person.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pregunta`
--

CREATE TABLE `pregunta` (
  `id` int(11) NOT NULL,
  `materia_id` varchar(2) DEFAULT NULL,
  `enunciado` text DEFAULT NULL,
  `pregunta` varchar(255) DEFAULT NULL,
  `es_correcta` varchar(255) DEFAULT NULL,
  `valor_puntos` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`id`, `materia_id`, `enunciado`, `pregunta`, `es_correcta`, `valor_puntos`) VALUES
(1, 'ma', 'En un grupo inicial de 30 personas, el 20% de estas tiene internet en su hogar. Se va a aumentar el grupo inicial hasta completar un nuevo grupo de 60 personas, de manera que, en este nuevo grupo, el porcentaje de personas que tengan internet en sus hogares sea del 50%.\r\nEs necesario saber cuántas de las personas que ingresan nuevas deben tener internet en su casa, y, para hacerlo, se proponen los siguientes pasos:\r\nPaso 1. Hallar el 20% del número de personas del grupo ini-\r\ncial.\r\nPaso 2. Hallar el 50% del número de personas del grupo de 60 personas.\r\nPaso 3. Restar el valor obtenido en el paso 1 del valor obteni- do en el paso 2.', '¿Cual es el valor obtenido en el ultimo paso del procedimiento anterior?', '24', 0.5),
(2, 'ma', 'En una ciudad se realizará una competencia de ciclismo de ruta. Para premiar a los participantes se tiene 50 millones de pesos, que se repartirán entre los tres primeros puestos, como se indica a continuación:\r\nPrimer puesto: 1/2 del dinero total. Segundo puesto: 2/5 del dinero total. Tercero puesto: el dinero restante.\r\nPara calcular el dinero correspondiente al tercer puesto, se propone sumar el dinero recibido por el primero y segundo puesto, y el resultado restário a los 50 millones.', '¿Que cantidad de dinero recibe el tercer puesto ?', '5 millones', 0.5),
(3, 'lc', 'Los desposeídos es una novela de ciencia ficción que se desarro-lla en un lugar llamado Urras, un planeta que se asemeja a la Tierra en tiempos de la Guerra Fría; y en un satélite llamado Anarres, una comuna anarquista, con recursos limitados que desconoce el concepto de propiedad privada.\r\nUstedes los urrasti tienen suficiente para todos. Aire suficiente, lluvia suficiente, pastos, océanos, alimentos, música, edificios, fábricas, máquinas, libros, ropas, historia. Ustedes son ricos, nosotros pobres. Ustedes tienen, nosotros no tenemos. Todo es hermoso aquí. Menos las caras.\r\nEn Anarres nada es hermoso, nada excepto las caras. Las otras caras, los hombres y las mujeres. Nosotros no tenemos nada más. Aquí uno ve las joyas, allí uno ve los ojos. Y en los ojos ve el esplendor, el esplendor del espíritu humano.\r\nPorque nuestros hombres y mujeres son libres. Y ustedes los poseedores son poseídos. Viven todos en una cárcel. Eso veo en los ojos de ustedes...', 'El narrador defiende la idea de que', 'Hay mayor libertad y felicidad en la austeridad', 0.5),
(4, 'lc', 'Los desposeídos es una novela de ciencia ficción que se desarro-lla en un lugar llamado Urras, un planeta que se asemeja a la Tierra en tiempos de la Guerra Fría; y en un satélite llamado Anarres, una comuna anarquista, con recursos limitados que desconoce el concepto de propiedad privada.\r\nUstedes los urrasti tienen suficiente para todos. Aire suficiente, lluvia suficiente, pastos, océanos, alimentos, música, edificios, fábricas, máquinas, libros, ropas, historia. Ustedes son ricos, nosotros pobres. Ustedes tienen, nosotros no tenemos. Todo es hermoso aquí. Menos las caras.\r\nEn Anarres nada es hermoso, nada excepto las caras. Las otras caras, los hombres y las mujeres. Nosotros no tenemos nada más. Aquí uno ve las joyas, allí uno ve los ojos. Y en los ojos ve el esplendor, el esplendor del espíritu humano.\r\nPorque nuestros hombres y mujeres son libres. Y ustedes los poseedores son poseídos. Viven todos en una cárcel. Eso veo en los ojos de ustedes...', '¿A que carcel se refiere el narrador', 'A la condición de vivir en función de las poseciones', 0.5),
(5, 'sc', 'El aumento de carros y motos en las vías de una ciudad genera grandes problemas de movilidad. Frente a estos, el gobierno local destina recursos financieros suficientes para ampliar la capacidad de 10% de las vías. Expertos en el tema de movilidad señalan que para mejorarla no es suficiente ampliar las vías porque con el paso del tiempo seguirá incrementándose el numero de vehículos. Sugieren, por su parte, que la solución es frenar la compra de vehículos en el pais y fortalecer el sistema de transporte público.', 'Las medidas propuestas por los expertos afectan la generación de empleo', 'Negativamente, por la perdida y/o disminución de empleos dentro del sector automotor.', 0.5),
(6, 'sc', 'Un sujeto afirmó: \"está de moda la expresión obsolescencia programada, un concepto que se refiere a que los fabricantes planean ciclos de vida cortos para los articulos, en especial tecnológicos, para que sean obsoletos o inservibles en poco tiempo. Esto es bueno para los negocios, pues aumenta la demanda, fomenta la industria y genera riqueza. La idea no es nueva, por ejemplo, en 1881, Thomas Alva Edison inventó el primer bombillo, que duraba 1.500 horas, y en 1911 alcanzaba 2.500 horas. Pero en 1924, los fabrican- tes de bombillos pactaron limitar la vida útil a 1.000 horas incrementando las ventas y las utilidades\".\r\nTomado y adaptado de: Obsolescencia programada; la cara oscura. Revista Semana, http://semana.com', '¿Cuál de las siguientes cosmovisiones es afin a la posición del sujeto?', 'El capitalismo, porque prioriza el consumo acelerado de productos y disminuye su durabilidad.', 0.5),
(7, 'cn', '\r\n. En las células animales los lisosomas son los organelos encargados de digerir con enzimas los nutrientes que la célula consume', 'Si todos los lisosomas de una célula se rompieran, ¿qué le sucedería inicialmente a la célula?', 'Se degradarían moléculas en su interior.', 0.5),
(8, 'cn', 'Los aceites de palma africana lideran la producción mundial de aceites y grasas, y se utilizan de manera masiva en los sectores de la alimentación, cosméticos y biocombustibles, debido principalmente a su bajo precio. Esta palma se planta como monocultivo en ambientes tropicales de todo el mundo, y para garantizar su rentabilidad requiere grandes extensiones de tierra, hecho que anualmente transforma miles de hectáreas de selva tropical lluviosa en este tipo de cultivo. Adicionalmente, estos cultivos requieren grandes cantidades de fertilizantes y plagui- cidas ricos en fósforo, cuyo exceso es lixiviado (transportado por el agua corriente) a las masas de agua circundantes. El fósforo en exceso aumenta el crecimiento de organismos dependientes de este, como las algas, las cuales proliferan usando grandes cantidades de oxigeno disuelto en agua y previniendo que los rayos de sol entren en el medio líquido. Este fenómeno se conoce comúnmente como eutrofización.', '¿Cuál sería la causa directa más probable de la pérdida de biodiversidad asociada con los cultivos de palma africana?', 'La perdida de habitat natural y el alto uso de plaguicidas.', 0.5),
(9, 'in', 'Instead of collecting comic books or sports memorabilia as a kid, Dr. Zoltan Takacs collected all kinds of different snakes. The Hungarian herpetologist says his initial interest in snakes came from spending his childhood summers in Transylvania, a region in the neighboring country of Romania. A herpetologist is someone who studies reptiles and amphibians. \"That is where I was exposed first to snakes, reptiles, amphibians and other wildlife, so I started to catch them, take them home and keep them in all kinds of basic conditions,\" he says. \"Later, in high school, this turned into a more advanced snake-keeping hobby. That is how I got into the snake business.\" Takacs is currently a research associate and assistant professor at the University of Chicago and a National Geographic Emerging Explorer. The herpetologist says he discovered valuable information about snakes during his early encounters with the animals while growing up in Budapest, Hungary. Those experiences were not always pleasant. \"I kept vipers at home in my room, and I got bitten once,\" he says. \"I tried to measure the length of the snake. It was my mistake; just as the other six bites I have had since then. I gave anti-venom to myself... just to find out a few weeks later that I am allergic to the snake anti-venom! I did learn a lot during that early period.\"\r\nEventually, Takacs found out that he was not only fascinated by snakes, but that he was also intrigued by their venom, a poisonous fluid some snakes secrete and use on their prey. \"I think the venom and the molecules in the venom-the toxins-are the coolest molecules nature ever invented,\" he says. Takacs interest in venoms led him to study pharmacology, which is the study of drugs and their effects. Eventually, he earned a PhD from Columbia University in New York City. One aspect of venom that intrigued Takacs was how the substance is able to zoom in on particular components of the prey is body to immobilize or kill it. Some venoms target the way a prey animal is blood clots. Without the capability to clot, a prey animal quickly bleeds to death. Other venoms target muscles, paralyzing the target. Still other venoms target the heart or lungs, causing the target to suffocate.\r\nAlthough these venoms can be deadly to prey animals-and sometimes humans-they can also provide valuable medical assistance for some diseases. Venom that prevents blood from clotting, for instance, may help create a drug for heart attack victims by encouraging blood flow.', 'What kind of article is this?', 'Informative.', 0.5),
(10, 'in', 'Instead of collecting comic books or sports memorabilia as a kid, Dr. Zoltan Takacs collected all kinds of different snakes. The Hungarian herpetologist says his initial interest in snakes came from spending his childhood summers in Transylvania, a region in the neighboring country of Romania. A herpetologist is someone who studies reptiles and amphibians. \"That is where I was exposed first to snakes, reptiles, amphibians and other wildlife, so I started to catch them, take them home and keep them in all kinds of basic conditions,\" he says. \"Later, in high school, this turned into a more advanced snake-keeping hobby. That is how I got into the snake business.\" Takacs is currently a research associate and assistant professor at the University of Chicago and a National Geographic Emerging Explorer. The herpetologist says he discovered valuable information about snakes during his early encounters with the animals while growing up in Budapest, Hungary. Those experiences were not always pleasant. \"I kept vipers at home in my room, and I got bitten once,\" he says. \"I tried to measure the length of the snake. It was my mistake; just as the other six bites I have had since then. I gave anti-venom to myself...just to find out a few weeks later that I am allergic to the snake anti-venom! I did learn a lot during that early period.\"\r\nEventually, Takacs found out that he was not only fascinated by snakes, but that he was also intrigued by their venom, a poisonous fluid some snakes secrete and use on their prey. \"I think the venom and the molecules in the venom-the toxins-are the coolest molecules nature ever invented,\" he says. Takacs interest in venoms led him to study pharmacology, which is the study of drugs and their effects. Eventually, he earned a PhD from Columbia University in New York City. One aspect of venom that intrigued Takacs was how the substance is able to zoom in on particular components of the prey is body to immobilize or kill it. Some venoms target the way a prey animal is blood clots. Without the capability to clot, a prey animal quickly bleeds to death. Other venoms target muscles, paralyzing the target. Still other venoms target the heart or lungs, causing the target to suffocate.\r\nAlthough these venoms can be deadly to prey animals-and sometimes humans-they can also provide valuable medical assistance for some diseases. Venom that prevents blood from clotting, for instance, may help create a drug for heart attack victims by encouraging blood flow.', 'According to the article a reader can infer that...', 'Dr. Takacs is allergic to snakes.', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta_usuario`
--

CREATE TABLE `respuesta_usuario` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `pregunta_id` int(11) DEFAULT NULL,
  `opcion_seleccionada_id` int(11) DEFAULT NULL,
  `puntos_obtenidos` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contrasena` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `intento`
--
ALTER TABLE `intento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `opcion`
--
ALTER TABLE `opcion`
  ADD KEY `pregunta_id` (`pregunta_id`);

--
-- Indices de la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materia_id` (`materia_id`);

--
-- Indices de la tabla `respuesta_usuario`
--
ALTER TABLE `respuesta_usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pregunta_id` (`pregunta_id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `respuesta_usuario_ibfk_3` (`opcion_seleccionada_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `intento`
--
ALTER TABLE `intento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `respuesta_usuario`
--
ALTER TABLE `respuesta_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `intento`
--
ALTER TABLE `intento`
  ADD CONSTRAINT `intento_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `opcion`
--
ALTER TABLE `opcion`
  ADD CONSTRAINT `opcion_ibfk_1` FOREIGN KEY (`pregunta_id`) REFERENCES `pregunta` (`id`);

--
-- Filtros para la tabla `pregunta`
--
ALTER TABLE `pregunta`
  ADD CONSTRAINT `pregunta_ibfk_1` FOREIGN KEY (`materia_id`) REFERENCES `materia` (`id`);

--
-- Filtros para la tabla `respuesta_usuario`
--
ALTER TABLE `respuesta_usuario`
  ADD CONSTRAINT `respuesta_usuario_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `intento` (`id`),
  ADD CONSTRAINT `respuesta_usuario_ibfk_2` FOREIGN KEY (`pregunta_id`) REFERENCES `pregunta` (`id`),
  ADD CONSTRAINT `respuesta_usuario_ibfk_3` FOREIGN KEY (`opcion_seleccionada_id`) REFERENCES `opcion` (`pregunta_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
