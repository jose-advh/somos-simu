-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-10-2024 a las 07:07:04
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
-- Base de datos: `bd_quiz`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  `totalPreguntas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `config`
--

INSERT INTO `config` (`id`, `usuario`, `password`, `totalPreguntas`) VALUES
(1, 'admin', 'admin', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadisticas`
--

CREATE TABLE `estadisticas` (
  `id` int(11) NOT NULL,
  `visitas` int(11) NOT NULL,
  `respondidas` int(11) NOT NULL,
  `completados` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estadisticas`
--

INSERT INTO `estadisticas` (`id`, `visitas`, `respondidas`, `completados`) VALUES
(1, 4, 10, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL,
  `tema` int(11) NOT NULL,
  `pregunta` text NOT NULL,
  `opcion_a` text NOT NULL,
  `opcion_b` text NOT NULL,
  `opcion_c` text NOT NULL,
  `opcion_d` text NOT NULL,
  `correcta` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `tema`, `pregunta`, `opcion_a`, `opcion_b`, `opcion_c`, `opcion_d`, `correcta`) VALUES
(1, 1, 'En un grupo inicial de 30 personas, el 20% de estas tiene internet en su hogar. Se va a aumentar el grupo inicial hasta completar un nuevo grupo de 60 personas, de manera que, en este nuevo grupo, el porcentaje de personas que tengan internet en sus hogares sea del 50%.\r\nEs necesario saber cuántas de las personas que ingresan nuevas deben tener internet en su casa, y, para hacerlo, se proponen los siguientes pasos:\r\nPaso 1. Hallar el 20% del número de personas del grupo inicial.\r\nPaso 2. Hallar el 50% del número de personas del grupo de 60 personas.\r\nPaso 3. Restar el valor obtenido en el paso 1 del valor obtenido en el paso 2.\r\n¿Cual es el valor obtenido en el ultimo paso del procedimiento anterior?\r\n', '3', '9', '24', '30', 'C'),
(2, 1, 'En una ciudad se realizará una competencia de ciclismo de ruta. Para premiar a los participantes se tiene 50 millones de pesos, que se repartirán entre los tres primeros puestos, como se indica a continuación:\r\nPrimer puesto: 1/2 del dinero total. Segundo puesto: 2/5 del dinero total. Tercero puesto: el dinero restante.\r\nPara calcular el dinero correspondiente al tercer puesto, se propone sumar el dinero recibido por el primero y segundo puesto, y el resultado restário a los 50 millones.\r\n¿Que cantidad de dinero recibe el tercer puesto ?', '15 millones', '10 millones', '2 millones', '5 millones', 'D'),
(3, 1, 'Una persona compra una botella de vino por $134, y se le informa que el año siguiente el valor de la botella será el doble. Para saber cuánto valdrá la botella en el año siguiente, esta persona realiza el siguiente procedimiento: 2x2x (134). Este procedimiento es ...', 'incorrecto, porque debe realizar sumas en lugar de multiplicaciones.', 'correcto, porque tiene en cuenta que cada año el valor se duplica.', 'incorrecto, porque el valor obtenido corresponde a cuatro veces el valor inicial.', 'correcto, porque al multiplicar por dos se calcula el doble del valor.', 'C'),
(4, 1, 'Una prueba atlética tiene un récord mundial de 10,49 segundos y un récord olímpico de 10,50 segundos. ¿Es posible que un atleta registre un tiempo, en el mismo tipo de prueba, que rompa el récord olímpico pero no el mundial?', 'Sí, porque puede registrar, por ejemplo, un tiempo de 10,497 segundos, que está entre los tiempos récord.', 'Si, porque puede registrar un tiempo menor que 10,4 y marcaría un nuevo récord.', 'No, porque no existe un registro posible entre los dos tiempos récord.', ' No, porque cualquier registro menor que el récord olímpico va a ser menor que el récord mundial.', 'A'),
(5, 1, 'En una nevera hay 50 jugos, de los cuales 10 son de naranja y los demás de manzana. Si antes de que alguien tome un jugo al azar, otra persona guarda 5 más de cada sabor, la probabilidad de que tome un jugo de naranja, ahora respecto al momento en el que había 50 jugos, es', 'mayor, porque se agrega la misma cantidad de cada sabor.', 'menor, porque la proporción de jugos de naranja disminuye respecto al total.', 'menor, porque la cantidad de jugos en total aumenta.', 'mayor, porque la proporción de jugos de naranja aumenta respecto al total.', 'D'),
(6, 1, 'Una caja contiene nueve balotas marcadas con los dígitos 1, 2, 3, 4, 5, 6, 7, 8 y 9. Si se selecciona una balota al azar, ¿es correcto afirmar que es más probable que esta balota tenga marcado un número impar?', ' Sí, porque sin importar como se marquen las balotas, nueve es impar.', 'No, porque cada balota tiene la misma probabilidad de seleccionarse.', 'Si, porque en las balotas hay marcados más números impares que pares.', 'No, porque la probabilidad de que el número marcado sea par o impar es la misma.', 'C'),
(7, 1, 'Un investigador considera atípico un dato si su distancia a la media es mayor que dos veces la desviación estándar; de lo contrario, se considera típico. En un experimento, tanto el valor -4 como el valor 12 se consideran típi- cos (no atípicos). Con esta información, el investigador considera 0 como otro valor tipi- co en esa medición. ¿Cuál de las siguientes afirmaciones sustenta correctamente esta consideración?', 'Los posibles valores típicos forman un intervalo, si dos valores son típicos los que hay entre ellos también.', 'Por ser un número neutro, ni positivo ni negativo, O se considera un valor típico en cualquier medición.', 'Como -4 y 12 son típicos, la media debe ser 4 y la desviación estándar 4, por lo que O es un valor típico.', 'Sin conocer valores de media ni desvia- ción estándar, cualquier valor es típico; no hay razones para que 0 no lo sea.', 'A'),
(8, 1, 'Un niño mira el reloj de pared y se da cuenta de que son exactamente las 10:10. Le pre- gunta a su padre: \"¿Cuántas veces se cruza- rán el horario y el segundero dentro de una hora y cincuenta segundos?\" El padre le res- ponde: \"Se cruzan 61 veces\".\r\nEsta afirmación es...', 'correcta; en ese tiempo tanto el horario como el segundero pasan 61 veces por el número 10, y en cada vuelta se cruzan.', 'equivocada; en ese tiempo el horario da 60 vueltas completas y el segundero da solo una, luego de una vuelta no se cruzan.', 'equivocada; en ese tiempo el horario se ha movido, por lo que en la última vuelta que da el segundero no alcanzan a cruzarse.', 'correcta; en ese tiempo el horario no se mueve y el segundero lo cruzará el núme- ro indicado de veces.', 'C'),
(9, 1, 'Una persona lee el boletín y desea saber cuál fue el número total de hombres y mujeres que respondieron la encuesta. ¿Qué datos debe usar?', ' Hombres y mujeres que leyeron y no leyeron libros y revistas.', 'Hombres y mujeres que leyeron libros y revistas.', 'Hombres y mujeres que leyeron y no leyeron libros.', 'Hombres y mujeres que leyeron solamen- te libros.', 'C'),
(10, 1, 'Un lector del boletín afirma que la información presentada en la tabla 2 no es consistente con la información de la tabla 1. La interpretación del lector es...', 'correcta, porque la tabla 2 omite informa- ción relevante de la tabla 1, como las mujeres y los hombres que no leyeron libros. ', 'incorrecta, porque en la tabla 2 se puede observar exactamente la misma informa- ción que en la tabla 1.', 'correcta, porque al analizar la tabla 2 se puede observar que la población que res- pondió allí es diferente de la tabla 1.', 'incorrecta, porque la tabla 2 presenta información de la tabla 1, pero de una manera más detallada.', 'A'),
(11, 2, 'Un grupo de estudiantes realizó un experimento en el que se medía la temperatura de cuatro objetos de la misma masa y forma exterior, después de exponerlos durante 4 horas a la luz solar. Un objeto era de madera, otro de cobre, otro de plástico y otro de concreto. Teniendo en cuenta la información anterior, ¿qué quería investigar este grupo de estudiantes?', '¿Cómo varía la forma de un objeto según el tiempo de exposición a la luz solar?', '¿A qué temperatura se produce un cambio de estado de los diferentes materiales?', '¿Cómo depende la absorción de calor de la forma de los objetos?', '¿Cuál material tiene mayor capacidad de absorber calor?', 'D'),
(12, 2, 'Unos estudiantes analizaron el agua de un río y encontraron que contenía altos niveles de cadmio y plomo, que son metales tóxicos. Al estudiar el origen de la contaminación descubrieron que los metales provenian de filtraciones de la descomposición de pilas en un botadero de basura cercano. Los estudiantes proponen que a futuro se deberían separar las pilas del resto de los desechos en contenedores completamente aislados. Con base en la información anterior, se puede afirmar que la propuesta de los estudiantes es', 'inapropiada, porque es mejor desarmar las pilas y luego desecharlas.', 'apropiada, porque se evitaría la presencia de metales pesados en el agua.', 'apropiada, porque luego se podrían reutili- zar las pilas desechadas.', 'inapropiada, porque es mejor quemarlas ya que no entrarían en contacto con el agua.', 'A'),
(13, 2, 'Un grupo de ingenieros investiga si una nueva llanta para automóvil con buena adherencia en suelo seco, también tiene una buena adherencia al suelo mojado. En la investigación se mide el tiempo de frenado de un auto que usa las llantas nuevas en suelo mojado. Para interpretar los resultados de su investigación, los ingenieros deben comparar', 'la temperatura de la llanta antes y después de la prueba.', 'sus resultados con los resultados de una prueba en suelo seco.', 'el valor de la presión del aire en la llanta antes y después de la prueba.', 'sus resultados con el valor de humedad en el suelo durante toda la prueba.', 'B'),
(14, 2, 'Se tiene una mezcla de tres sólidos: limadura de hierro, sal y arena. Esta mezcla de sólidos se deposita en un vaso con agua, se agita durante algunos minutos y luego se filtra con un papel filtro. Con base en lo anterior, se puede asegurar que lo que paso a través del papel de filtro fue', 'la sal al disolverse en el agua.', 'la sal, la arena y la limadura de hierro disueltas en el agua.', 'la limadura de hierro al oxidarse en el agua.', 'la arena al disolverse en el agua.', 'A'),
(15, 2, 'La píldora es un método anticonceptivo con una efectividad mayor al 99% cuando se usa correctamente, porque su función se centra en inhibir la ovulación en las mujeres. Sin embargo, este método anticonceptivo solo se recomienda a parejas estables. Con base en esta información, ¿qué desventaja tiene el uso de la pildora anticonceptiva en individuos que no tienen una pareja estable?', 'No previene contagiarse de enfermedades de transmisión sexual.', ' No es 100% efectiva para evitar embarazos.', 'Debe utilizarse en mayores dosis, si se tienen más parejas sexuales.', ' Aumenta el riesgo de contraer enfermeda- des en los ovarios.', 'A'),
(16, 2, 'Elementos como el fósforo, el calcio, el azufre y el hierro circulan en los ecosistemas. En un estudio se encontró que el suelo de una isla es rico en iones de hierro. ¿Cuál de los siguientes procesos podría dar origen a la alta concentración de iones de hierro disueltos en el suelo de la isla?', 'El aporte de hierro por las corrientes de aire que llegan a la isla.', 'La descomposición de plantas y animales en la isla.', 'El aporte de hierro por el agua lluvia en las temporadas invernales.', 'La degradación del material rocoso generado por la acción del agua.', 'D'),
(17, 2, 'Dos de las etapas en el ciclo de vida de la rana Pelophylax esculentus son: (1) renacuajo, se desarrolla en charcas o lagos, y se alimenta de plantas acuáticas; (2) rana adulta, se desarrolla en ambiente terrestre donde se alimenta de insectos, babosas, gusanos y lombrices.\r\nTeniendo en cuenta la información anterior, se puede afirmar que uno de los motivos por los que la competencia entre los renacuajos y las ranas adultas es baja, es porque', 'el uso de pocos recursos por los renacuajos aumenta la disponibilidad de alimento para las ranas adultas.', 'los renacuajos, al ser más pequeños que las ranas adultas, aseguran un mayor espacio para los adultos.', 'durante el desarrollo de su ciclo de vida los renacuajos y las ranas adultas ocupan diferentes ecosistemas.', 'ningún otro organismo en estos ecosiste- mas se alimenta de plantas acuáticas y animales pequeños.', 'C'),
(18, 2, 'Pensando en la Tierra como un sistema termodinámico, ¿cuál es el efecto producido en la Tierra por el incremento de la concentración atmosférica de los gases de efecto invernadero?', 'El aumento en la transferencia del calor hacia el espacio exterior.', 'La disminución en la transferencia de calor desde la Tierra al espacio exterior.', 'Una disminución considerable de la energía proveniente de la radiación solar.', 'La transferencia de todo el calor del aire hacia el espacio exterior.', 'B'),
(19, 2, '\r\nLos leones son grandes carnívoros, viven en manadas y habitan en las sabanas. Una población de leones caza únicamente presas grandes como antilopes y cebras, y con ellos se alimentan los leones adultos y sus crías.\r\nUn grupo de leopardos fue liberado en este hábitat, lost cuales cazan el mismo tipo de presas que los leones, lo que generó una competencia entre especies por el alimento. De acuerdo con la información anterior, ¿qué le puede ocurrir a la población de leones, a largo plazo, producto de esta competencia entre especies?', 'Los leones serán más grandes y gordos porque les será más fácil conseguir alimento.', 'La población de leones tendrá menos individuos porque el alimento disponible disminuirá en la sabana.', 'La población de leones tendrá más individuos porque se volverán herbívoros para disminuir la competencia.', 'La población de leones tendrá crías con la población de leopardos para poblar la sabana con una nueva especie.', 'B'),
(20, 2, 'En los cultivos de café, los frutos se encuentran en diferentes estados de maduración. Esto ocurre debido a fluctuaciones en las lluvias, irregularidades en los periodos de cosecha, variaciones en la altura a la que se siembra la planta y variaciones en el suelo. Una empresa está interesada en comercializar café de buen aroma y sabor, pero con un alto contenido de cafeína.\r\n¿Cuál de las siguientes preguntas puede abordarse en las ciencias naturales para resolver la problemática de la empresa?', '¿Cuáles son las familias de tradición cafetera en el país y de qué regiones son?', '¿Cuáles es la variación de precios del café con cafeína y sin esta?', '¿En qué regiones del país utilizan el café como abono para el suelo?', '¿Cómo se relaciona la humedad del suelo con el conteni- do de cafeína del café?', 'D'),
(21, 3, 'El perro y el gato son dos de las mascotas más populares en el hogar. Mientras que el perro es conocido por su lealtad y capacidad para ser entrenado, el gato es valorado por su independencia y bajo mantenimiento.\r\nSegún el texto, ¿cuál es una característica destacada del perro?', 'Su independencia', 'Su lealtad', 'Su bajo mantenimiento', 'Su naturaleza solitaria', 'B'),
(22, 3, 'El reciclaje es un proceso que permite convertir materiales usados en nuevos productos. Esto ayuda a reducir la cantidad de desechos en los vertederos y a conservar recursos naturales.\r\n¿Cuál es uno de los beneficios del reciclaje mencionado en el texto?', 'Aumentar la producción de residuos', 'Conservar recursos naturales', 'Facilitar la compra de nuevos productos', 'Incrementar el uso de plásticos', 'B'),
(23, 3, 'La lectura diaria mejora las habilidades cognitivas. A través de los libros, las personas pueden ampliar su vocabulario y mejorar su comprensión.\r\n¿Qué efecto tiene la lectura diaria, según el texto?', 'Reduce el vocabulario', 'Aumenta la comprensión', 'Mejora las habilidades físicas', 'Aumenta la memoria a corto plazo', 'B'),
(24, 3, 'El clima está cambiando a un ritmo alarmante. Las temperaturas globales han aumentado, lo que provoca derretimiento de glaciares y fenómenos climáticos extremos.\r\n¿Qué consecuencia del cambio climático se menciona en el texto?', 'Aumento del nivel del mar', 'Disminución de temperaturas', 'Menos fenómenos climáticos', 'Estabilidad de los glaciares', 'A'),
(25, 3, 'La música tiene un poder especial. Puede evocar emociones, recordar momentos y unir a las personas en diferentes culturas.\r\nSegún el texto, ¿qué puede lograr la música?', 'Aislar a las personas', 'Evocar emociones', 'Mejorar la memoria a largo plazo', 'Producir desinterés', 'B'),
(26, 3, 'La fotografía es una forma de arte que captura momentos en el tiempo. Permite a las personas ver el mundo desde diferentes perspectivas y apreciar la belleza en lo cotidiano.\r\n¿Cuál es una función de la fotografía según el texto?', 'Documentar solo eventos trágicos', 'Capturar momentos y perspectivas', 'Limitar la creatividad', 'Disminuir la apreciación del arte', 'B'),
(27, 3, 'La educación es fundamental para el desarrollo de la sociedad. A través de ella, las personas adquieren conocimientos y habilidades necesarias para contribuir al bienestar común.\r\n¿Cuál es un aspecto esencial de la educación mencionado en el texto?', 'Fomentar la competencia', 'Desarrollar habilidades para el bienestar común', 'Limitar el acceso al conocimiento', 'Aumentar la desigualdad social', 'B'),
(28, 3, 'El ejercicio regular no solo mejora la salud física, sino que también beneficia la salud mental. Muchas personas encuentran en la actividad física una manera de liberar estrés.\r\n¿Qué beneficio del ejercicio se menciona en el texto?', 'Solo mejora la salud física', 'Aumenta el estrés', 'Mejora la salud mental', 'Disminuye la energía', 'C'),
(29, 3, 'La tecnología ha revolucionado la forma en que nos comunicamos. Las redes sociales permiten mantener el contacto con amigos y familiares, sin importar la distancia.\r\nSegún el texto, ¿qué permite la tecnología en la comunicación?', 'Aislar a las personas', 'Mantener contacto a larga distancia', 'Reducir el uso de dispositivos', 'Disminuir la comunicación cara a cara', 'B'),
(30, 3, 'El voluntariado ofrece la oportunidad de ayudar a otros y al mismo tiempo adquirir nuevas experiencias. Participar en actividades comunitarias puede enriquecer la vida de las personas.\r\n¿Cuál es un beneficio del voluntariado mencionado en el texto?', 'Aislamiento social', 'Falta de experiencias', 'Oportunidad de ayudar y adquirir experiencias', 'Dificultad para involucrarse en la comunidad', 'C'),
(31, 4, 'La democracia es un sistema de gobierno en el que el poder reside en el pueblo. Los ciudadanos tienen el derecho de elegir a sus representantes a través del voto. La participación activa en la política es fundamental para asegurar que las decisiones reflejen la voluntad de la mayoría. Sin embargo, muchas personas todavía se sienten desilusionadas y desconectadas del proceso electoral.\r\nSegún el texto, ¿qué es fundamental para que la democracia funcione?', 'La apatía de los ciudadanos', 'La desilusión política', 'La participación activa en la política', 'La falta de elecciones', 'C'),
(32, 4, 'Los derechos humanos son un conjunto de principios que buscan garantizar la dignidad y libertad de todas las personas. Estos derechos son universales, inalienables e indivisibles, lo que significa que no se pueden quitar y son iguales para todos, sin importar su nacionalidad, género o raza. Sin embargo, en muchas partes del mundo, estos derechos son violados.\r\n¿Cuál de las siguientes afirmaciones es correcta según el texto?', 'Los derechos humanos son opcionales', 'Los derechos humanos varían según la nacionalidad', 'Los derechos humanos son universales e indivisibles', 'Los derechos humanos solo son válidos en democracias', 'C'),
(33, 4, 'La globalización ha transformado las economías y culturas en todo el mundo. A través de la interconexión de mercados, las naciones pueden intercambiar bienes y servicios con mayor facilidad. Sin embargo, este fenómeno también ha generado preocupaciones sobre la pérdida de identidad cultural y el impacto ambiental. Es importante encontrar un equilibrio entre el desarrollo económico y la preservación de las culturas locales.\r\nSegún el texto, ¿cuál es una preocupación asociada a la globalización?', 'La mejora en la economía', 'El aumento de identidades culturales', 'La pérdida de identidad cultural', 'La reducción del comercio internacional', 'C'),
(34, 4, 'La educación cívica es crucial para formar ciudadanos informados y responsables. A través de ella, las personas aprenden sobre sus derechos y deberes, así como sobre el funcionamiento de las instituciones democráticas. Una buena educación cívica fomenta la participación en la sociedad y el compromiso con el bienestar común.\r\n¿Qué aspecto de la educación cívica se menciona en el texto?', 'Solo enseña sobre historia', 'Fomenta la desinformación', 'Promueve la participación en la sociedad', 'Es irrelevante en la democracia', 'C'),
(35, 4, 'El medio ambiente es un tema de gran importancia en la actualidad. La contaminación y el cambio climático son problemas que afectan a todos los países del mundo. Es responsabilidad de cada ciudadano contribuir a la protección del planeta, adoptando prácticas sostenibles y apoyando políticas que fomenten la conservación.\r\n¿qué deben hacer los ciudadanos respecto al medio ambiente?', 'Ignorar el cambio climático', 'Contribuir a la protección del planeta', 'Solo preocuparse por sus intereses personales', 'Depender únicamente de las políticas gubernamentales', 'B'),
(36, 4, 'La diversidad cultural en una sociedad enriquece la vida cotidiana y fomenta la tolerancia. Al convivir diferentes tradiciones y costumbres, las personas pueden aprender unas de otras y construir un ambiente más armonioso. Sin embargo, es vital respetar y valorar las diferencias para evitar conflictos.\r\n¿Qué beneficio trae la diversidad cultural, según el texto?', 'Genera conflictos', 'Enriquece la vida cotidiana', 'Hace que las tradiciones desaparezcan', 'Fomenta la intolerancia', 'B'),
(37, 4, 'La participación ciudadana es fundamental para el fortalecimiento de la democracia. Involucrarse en la toma de decisiones, ya sea a través del voto, protestas pacíficas o en foros comunitarios, permite a los ciudadanos expresar sus opiniones y necesidades. Esto asegura que el gobierno responda a la voluntad del pueblo.\r\n¿Cuál es un aspecto clave de la participación ciudadana según el texto?', 'Aislamiento político', 'Expresar opiniones y necesidades', 'Ignorar la toma de decisiones', 'Desinterés por el gobierno', 'B'),
(38, 4, 'El sistema de salud es un derecho fundamental que debe garantizar el acceso a servicios médicos de calidad para todos. Sin embargo, en muchas sociedades, existen desigualdades en el acceso a estos servicios, lo que afecta a poblaciones vulnerables. La equidad en la atención médica es crucial para mejorar la salud pública. ¿qué es crucial para mejorar la salud pública?', 'Desigualdad en el acceso a servicios', 'Equidad en la atención médica', 'Exclusividad en el tratamiento', 'Ignorar las necesidades de la población', 'B'),
(39, 4, 'El trabajo comunitario puede ser una poderosa herramienta para el cambio social. A través de la colaboración entre vecinos, se pueden abordar problemas locales como la pobreza, la educación y la seguridad. El compromiso de los ciudadanos es esencial para crear comunidades más fuertes y solidarias.\r\n¿Cuál es un beneficio del trabajo comunitario mencionado en el texto?', 'Aislamiento social', 'Dificultad para resolver problemas', 'Fortalecimiento de comunidades', 'Fomento de la competencia entre vecinos', 'C'),
(40, 4, 'Las elecciones libres y justas son un pilar de la democracia. Permiten que los ciudadanos elijan a sus representantes y participen en el proceso político. Sin embargo, la transparencia en las elecciones es esencial para garantizar que los resultados reflejen la verdadera voluntad del pueblo.\r\n¿qué es esencial para que las elecciones sean efectivas?', 'Falta de transparencia', 'Elecciones manipuladas', 'Transparencia en el proceso electoral', 'Ignorar la participación ciudadana', 'C'),
(41, 5, 'The Internet has revolutionized communication. It allows people to connect instantly, share information, and access a vast amount of knowledge. However, it can also lead to distractions and the spread of misinformation.\r\nWhat is a potential downside of the Internet mentioned in the text?', 'Instant communication', 'Access to knowledge', 'Distractions and misinformation', 'Global connectivity', 'C'),
(42, 5, 'Renewable energy sources, such as solar and wind power, are essential for combating climate change. They offer cleaner alternatives to fossil fuels, which contribute significantly to pollution and global warming.\r\n¿According to the text, what is a benefit of renewable energy?', 'Increased pollution', 'Combating climate change', 'Higher costs', 'Limited availability', 'B'),
(43, 5, 'Participating in community service can enhance social bonds and improve local conditions. When individuals work together for a common cause, they not only address immediate needs but also foster a sense of belonging.\r\nWhat is a benefit of community service mentioned in the text?', 'Social isolation', 'Improved local conditions', 'Decreased participation', 'Increased competition', 'B'),
(44, 5, 'Education plays a crucial role in shaping an individual\'s future. It equips people with knowledge and skills necessary for personal and professional growth. Yet, access to quality education remains a challenge in many regions. What does education provide, according to the text?', 'Social barriers', 'Knowledge and skills', 'Financial wealth', 'Personal isolation', 'B'),
(45, 5, 'Cultural diversity enriches societies by bringing various perspectives and traditions. While it promotes understanding and tolerance, it can also present challenges in terms of integration and communication. What is a positive aspect of cultural diversity mentioned in the text?', 'Challenges in communication', 'Promoting understanding and tolerance', 'Homogenization of cultures', 'Increased conflict', 'B'),
(46, 5, 'Healthy eating habits are essential for maintaining overall well-being. A balanced diet can prevent various health issues and improve quality of life. However, many people struggle to make healthy choices due to convenience and marketing.\r\nAccording to the text, what is a benefit of healthy eating?', 'Increased health issues', 'Improved quality of life', 'Convenience over health', 'Less nutritional knowledge', 'B'),
(47, 5, 'The role of technology in education has grown significantly. It can enhance learning experiences and provide access to resources that were previously unavailable. However, reliance on technology can also lead to reduced interpersonal skills. What is a concern related to technology in education?', 'Enhanced learning experiences', 'Improved access to resources', 'Reduced interpersonal skills', 'Increased engagement', 'C'),
(48, 5, 'Volunteering provides individuals with opportunities to give back to their communities. It can lead to personal growth, new friendships, and a deeper understanding of social issues. Many people find fulfillment through helping others. What is one benefit of volunteering mentioned in the text?', 'Increased loneliness', 'Personal growth', 'Lack of fulfillment', 'Decreased social awareness', 'B'),
(49, 5, 'The media plays a significant role in shaping public opinion. It can inform citizens about important issues, but it can also spread biased information. Critical thinking is necessary to evaluate the reliability of sources.\r\nAccording to the text, what is essential for evaluating media information?', 'Trusting all sources', 'Critical thinking', 'Ignoring biases', 'Accepting popular opinion', 'B'),
(50, 5, 'Sustainable development seeks to meet the needs of the present without compromising the ability of future generations to meet their own needs. This approach emphasizes the balance between economic growth, environmental protection, and social equity.\r\nWhat is a key principle of sustainable development mentioned in the text?', 'Ignoring future needs', 'Economic growth only', 'Balance between growth and protection', 'Environmental degradation', 'C'),
(51, 6, '¿Cuál de los siguientes procesos es parte del ciclo del agua?', 'Fotosíntesis', 'Evaporación', 'Polinización', 'Descomposición', 'B'),
(52, 6, 'Las células son las unidades básicas de la vida y pueden clasificarse en células vegetales y animales. Las células vegetales tienen estructuras únicas, como los cloroplastos, que les permiten realizar la fotosíntesis y producir su propio alimento.\r\n¿Cuál es la estructura responsable de la fotosíntesis en las células vegetales?', 'Mitocondria', 'Cloroplasto', 'Núcleo', 'Ribosoma', 'B'),
(53, 6, 'La democracia es un sistema de gobierno donde los ciudadanos tienen el derecho a participar en la toma de decisiones. Esto se logra a través de elecciones libres y justas, donde cada voto cuenta. La participación activa es esencial para que la democracia funcione correctamente.\r\n¿Cuál es una característica del sistema democrático?', 'Concentración del poder', 'Elecciones libres y justas', 'Censura de medios', 'Falta de participación ciudadana', 'B'),
(54, 6, 'La globalización ha llevado a una mayor interconexión entre países, facilitando el comercio, la comunicación y el intercambio cultural. Sin embargo, también ha generado preocupaciones sobre la pérdida de identidades culturales locales y el aumento de la homogeneidad cultural.\r\nEl concepto de \"globalización\" se refiere a:', 'El aislamiento de las naciones', 'La interconexión económica y cultural entre países', 'La uniformidad cultural', 'La eliminación de fronteras políticas', 'B'),
(55, 6, 'Texto: Resolver ecuaciones es una habilidad fundamental en matemáticas. Estas ecuaciones representan relaciones entre variables y requieren que se aísle una variable para encontrar su valor.\r\nSi x+5=12x+5=12, ¿cuál es el valor de xx?', '5', '7', '17', '-5', 'B'),
(56, 6, 'El área de un triángulo se puede calcular utilizando la fórmula: Area=1/2base×alturaArea=21​×base×altura. Esta fórmula es útil para determinar la superficie que ocupa un triángulo en un plano.\r\n¿Cuál es el área de un triángulo con base 8 cm y altura 5 cm?', '20 cm²', '30 cm²', '40 cm²', '10 cm²', 'A'),
(57, 6, 'Social media has transformed the way we interact with others, offering platforms for communication and information sharing. However, it also comes with challenges such as misinformation and privacy concerns.\r\nWhat is the main idea of the following sentence? \"Social media can connect people worldwide, but it also has the potential to spread false information.\"', 'Social media is always positive.', 'Social media only spreads false information.', 'Social media has both benefits and drawbacks.', 'Social media is a new concept.', 'C'),
(58, 6, 'Understanding language structure is key to effective communication. In English, knowing how to use different tenses helps convey time and action clearly.\r\nChoose the correct word to complete the sentence: \"The results of the experiment were ______ to the theory proposed by the scientists.\"', 'contradicting', 'confirm', 'confirmation', 'confirmed', 'D'),
(59, 6, 'La educación es un derecho fundamental que promueve el desarrollo de la sociedad. Sin embargo, muchas personas aún no tienen acceso a una educación de calidad, lo que perpetúa la desigualdad.\"\r\n¿Cuál es el tema principal del texto?', 'La importancia de la educación', 'La desigualdad en el acceso a la educación', 'El desarrollo de la sociedad', 'Los derechos humanos', 'B'),
(60, 6, '\"El cambio climático representa un desafío global que requiere acciones inmediatas. La colaboración entre países es esencial para mitigar sus efectos y promover un futuro sostenible.\"\r\n¿Qué se sugiere en el texto sobre el cambio climático?', 'Es un problema local.', 'No es necesario actuar.', 'La colaboración internacional es crucial.', 'Solo afecta a ciertos países.', 'C');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temas`
--

CREATE TABLE `temas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `temas`
--

INSERT INTO `temas` (`id`, `nombre`) VALUES
(1, 'Matematicas'),
(2, 'Ciencias naturales'),
(3, 'Lectura Critica'),
(4, 'Sociales y ciudadania'),
(5, 'Ingles'),
(6, 'Simulacro general');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estadisticas`
--
ALTER TABLE `estadisticas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `temas`
--
ALTER TABLE `temas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `estadisticas`
--
ALTER TABLE `estadisticas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `temas`
--
ALTER TABLE `temas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
