
-- PostgreSQL database dump
--

-- Dumped from database version 10.8
-- Dumped by pg_dump version 10.8

-- Started on 2019-06-15 04:20:48

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12924)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2818 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 197 (class 1259 OID 21106)
-- Name: documentos; Type: TABLE; Schema: public; Owner: postgres
--
DROP TABLE IF EXISTS public.documentos;
CREATE TABLE public.documentos (
    id_doc bigint NOT NULL,
    texto_doc text,
    titulo_doc character varying(255)
);


ALTER TABLE public.documentos OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 21104)
-- Name: hibernate_sequence; Type: SEQUENCE; Schema: public; Owner: postgres
--
DROP SEQUENCE IF EXISTS public.hibernate_sequence;
CREATE SEQUENCE public.hibernate_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.hibernate_sequence OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 21114)
-- Name: indice; Type: TABLE; Schema: public; Owner: postgres
--
DROP TABLE IF EXISTS public.indice;
CREATE TABLE public.indice (
    id_indice bigint NOT NULL,
    cantidad bigint,
    n_doc bigint,
    texto_palabra character varying(255)
);


ALTER TABLE public.indice OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 21119)
-- Name: palabra; Type: TABLE; Schema: public; Owner: postgres
--
DROP TABLE IF EXISTS public.palabra;
CREATE TABLE public.palabra (
    id_palabra bigint NOT NULL,
    palabra text
);


ALTER TABLE public.palabra OWNER TO postgres;

--
-- TOC entry 2808 (class 0 OID 21106)
-- Dependencies: 197
-- Data for Name: documentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.documentos (id_doc, texto_doc, titulo_doc) VALUES (1, '<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
Si bien la computadora puede ser de dos tipos, computadora analógica o sistema digital, el primer tipo es usado para pocos y muy específicos propósitos; la más difundida, utilizada y conocida es la computadora digital (de propósitos generales); de tal modo que en términos generales (incluso populares), cuando se habla de «la computadora» se está refiriendo a computadora digital. Las hay de arquitectura mixta, llamadas computadoras híbridas, siendo también éstas de propósitos especiales.
</body>
</html></body>
</html>
', 'Documento 1 -HTML');
INSERT INTO public.documentos (id_doc, texto_doc, titulo_doc) VALUES (30, '<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
En la actualidad se puede tener la impresión de que los computadores están ejecutando varios programas al mismo tiempo. Esto se conoce como multitarea, y es más común que se utilice el segundo término. En realidad, la CPU ejecuta instrucciones de un programa y después tras un breve periodo de tiempo, cambian a un segundo programa y ejecuta algunas de sus instrucciones. Esto crea la ilusión de que se están ejecutando varios programas simultáneamente, repartiendo el tiempo de la CPU entre los programas. Esto es similar a la película que está formada por una sucesión rápida de fotogramas. El sistema operativo es el programa que generalmente controla el reparto del tiempo. El procesamiento simultáneo viene con computadoras de más de un CPU, lo que da origen al multiprocesamiento.
</body>
</html></body>
</html>
', 'Documento 2 - HTML');
INSERT INTO public.documentos (id_doc, texto_doc, titulo_doc) VALUES (70, '<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
Es común pensar que la etapa de programación o codificación (algunos la llaman implementación) es la que insume la mayor parte del trabajo de desarrollo del software; sin embargo, esto puede ser relativo (y generalmente aplicable a sistemas de pequeño porte) ya que las etapas previas son cruciales, críticas y pueden llevar bastante más tiempo. Se suele hacer estimaciones de un 30% del tiempo total insumido en la programación, pero esta cifra no es consistente ya que depende en gran medida de las características del sistema, su criticidad y el lenguaje de programación elegido.9En tanto menor es el nivel del lenguaje mayor será el tiempo de programación requerido, así por ejemplo se tardaría más tiempo en codificar un algoritmo en lenguaje ensamblador que el mismo programado en lenguaje C.
</body>
</html></body>
</html>
', 'Documento 3 - HTML');
INSERT INTO public.documentos (id_doc, texto_doc, titulo_doc) VALUES (117, '<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
La programación automática es un estilo de programación que crea código fuente mediante clases genéricas, prototipos, plantillas, aspectos, y generadores de código para aumentar la productividad del programador. El código fuente se genera con herramientas de programación tal como un procesador de plantilla o un IDE. La forma más simple de un generador de código fuente es un procesador macro, tal como el preprocesador de C, que reemplaza patrones de código fuente de acuerdo a reglas relativamente simples.
</body>
</html></body>
</html>
', 'Documento 4 - HTML');
INSERT INTO public.documentos (id_doc, texto_doc, titulo_doc) VALUES (148, '<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
El código objeto no existe si el programador trabaja con un lenguaje a modo de intérprete puro, en este caso el mismo intérprete se encarga de traducir y ejecutar línea por línea el código fuente (de acuerdo al flujo del programa), en tiempo de ejecución. En este caso tampoco existe el o los archivos de código ejecutable. Una desventaja de esta modalidad es que la ejecución del programa o sistema es un poco más lenta que si se hiciera con un intérprete intermedio, y bastante más lenta que si existe el o los archivos de código ejecutable. Es decir no favorece el rendimiento en velocidad de ejecución. Pero una gran ventaja de la modalidad intérprete puro, es que él está forma de trabajo facilita enormemente la tarea de depuración del código fuente (frente a la alternativa de hacerlo con un compilador puro). Frecuentemente se suele usar una forma mixta de trabajo (si el lenguaje de programación elegido lo permite), es decir inicialmente trabajar a modo de intérprete puro, y una vez depurado el código fuente (liberado de errores) se utiliza un compilador del mismo lenguaje para obtener el código ejecutable completo, con lo cual se agiliza la depuración y la velocidad de ejecución se optimiza.
</body>
</html></body>
</html>
', 'Documento 5 - HTML');
INSERT INTO public.documentos (id_doc, texto_doc, titulo_doc) VALUES (207, '<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
Del latín systema, un sistema es módulo ordenado de elementos que se encuentran interrelacionados y que interactúan entre sí. El concepto se utiliza tanto para definir a un conjunto de conceptos como a objetos reales dotados de organización.
Un sistema conceptual o ideal es un conjunto organizado de definiciones, símbolos y otros instrumentos del pensamiento (como las matemáticas, la notación musical y la lógica formal).

Un sistema real, en cambio, es una entidad material formada por componentes organizados que interactúan de forma en que las propiedades del conjunto no pueden deducirse por completo de las propiedades de la partes (denominadas propiedades emergentes).

Los sistemas reales comprenden intercambios de energía, información o materia con su entorno. Las células y la biosfera son ejemplos de sistemas naturales. Existen tres tipos de sistemas reales: abiertos (recibe flujos de su ambiente, adaptando su comportamiento de acuerdo a esto), cerrados (sólo intercambia energía con su entorno) y aislados (no realiza ningún tipo de intercambio con su entorno).

La Teoría General de Sistemas, por su parte, es el estudio interdisciplinario que busca las propiedades comunes a estas entidades. Su desarrolló comenzó a mediados del siglo XX, con los estudios del biólogo austriaco Ludwig von Bertalanffy. Se la considera como una metateoría (teoría de teorías) que parte del concepto abstracto de sistema para encontrar reglas de valor general.

También puede mencionarse la noción de sistema informático, muy común en las sociedades modernas. Este tipo de sistemas denominan al conjunto de hardware, software y soporte humano que forman parte de una empresa u organización. Incluyen ordenadores con los programas necesarios para procesar datos y las personas encargadas de su manejo.</body>
</html>
', 'Documento 6 - HTML');
INSERT INTO public.documentos (id_doc, texto_doc, titulo_doc) VALUES (326, '<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
Del latín basis (que, a su vez, tiene su origen en un vocablo griego), la base es el apoyo, fundamento o soporte de algo. Puede tratarse de un elemento físico (el componente que sirve de sostén a una construcción o una estatua) o simbólico (el apoyo a una persona, organización o idea).
Base puede ser el punto de apoyo de una estructura. Por ejemplo: “El edificio se cayó porque tenía problemas en su base”, “El artista encargó una base de cemento de 50 kilogramos para sostener la obra”.
El lugar donde se concentra personal y equipamiento para la organización de campañas o expediciones también se conoce como base: “Intentamos llegar a la cima pero, ante la tormenta, tuvimos que regresar a la base”, “La base de operaciones norteamericana en Bagdad fue bombardeada por tropas insurgentes”.
A nivel político o social, se conoce como base al grupo de personas representadas por un dirigente. La base es, por lo tanto, el sostén popular de un proyecto político o de una candidatura: “Las bases han reclamado a los líderes un mayor esfuerzo en la defensa de la soberanía económica”.
En el deporte, la base puede ser cada una de las esquinas del campo de béisbol que deben defender los jugadores o la posición que ocupa el armador de juego en el baloncesto: “Cuidado, intentarán robarnos la base”, “Steve Nash es el mejor base de los últimos años en la NBA”.
Las normas que regulan un sorteo o concurso, la línea paralela a aquella en la que teóricamente descansa una figura geométrica y la sustancia que, en combinación con los ácidos, puede formar sales, son otras significaciones de este concepto.
</body>
</html>
', 'Documento 7 - HTML');
INSERT INTO public.documentos (id_doc, texto_doc, titulo_doc) VALUES (438, '<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
El origen etimológico del término hardware que ahora vamos a analizar en profundidad lo encontramos claramente en el inglés. Y es que aquel está conformado por la unión de dos vocablos de la lengua anglosajona: hard que puede traducirse como “duro” y ware que es sinónimo de “cosas”.
La Real Academia Española define al hardware como el conjunto de los componentes que conforman la parte material (física) de una computadora, a diferencia del software que refiere a los componentes lógicos (intangibles). Sin embargo, el concepto suele ser entendido de manera más amplia y se utiliza para denominar a todos los componentes físicos de una tecnología.

En el caso de la informática y de las computadoras personales, el hardware permite definir no sólo a los componentes físicos internos (disco duro, placa madre, microprocesador, circuitos, cables, etc.), sino también a los periféricos (escáners, impresoras).

El hardware suele distinguirse entre básico (los dispositivos necesarios para iniciar el funcionamiento de un ordenador) y complementario (realizan ciertas funciones específicas).

En cuanto a los tipos de hardware, pueden mencionarse a los periféricos de entrada (permiten ingresar información al sistema, como el teclado y el mouse), los periféricos de salida (muestran al usuario el resultado de distintas operaciones realizadas en la computadora. Ejemplo: monitor, impresora), los periféricos de entrada/salida (módems, tarjetas de red, memorias USB), la unidad central de procesamiento o CPU (los componentes que interpretan las instrucciones y procesan los datos) y la memoria de acceso aleatorio o RAM (que se utiliza para el almacenamiento temporal de información).

En el caso de lo que es la memoria RAM tenemos que subrayar además que existe una clasificación de la misma en dos grandes categorías. Así, por un lado, tenemos lo que se conoce como dinámicas, el conjunto de tarjetas que en los ordenadores están conectadas al bus de memoria de la placa base, y por otro lado están las especiales. Estas últimas, al contrario que las anteriores, no se utilizan en las computadoras como memoria central.

Entre estas últimas habría que destacar las VRAM (Video Random Access Memory), las SRAM (Static Random Acces Memory) y las NVRAM (Non-Volatile Random Access Memory).

La historia del desarrollo del hardware, por otra parte, marca diversos hitos y etapas. Se habla de una primera generación (con tubos de vidrio que albergaban circuitos eléctricos), una segunda generación (con transistores), una tercera generación (que permitió empaquetar cientos de transistores en un circuito integrado de un chip de silicio) y una cuarta generación (con el advenimiento del microprocesador). El avance en los estudios sobre nanotecnología permite prever la aparición de un hardware más avanzado en los próximos años.

Además de toda la información expuesta hasta el momento tampoco podemos pasar por alto lo que se conoce como hardware libre. Este es un concepto de gran importancia en el sector pues hace referencia al conjunto de dispositivos que se caracterizan por el hecho de que cualquier persona, bien de forma gratuita o bien mediante el pago de una determinada cantidad, puede acceder de manera pública a lo que son sus especificaciones.

En concreto, este tipo de hardware puede clasificarse tomando como punto de partida su naturaleza, lo que dará lugar a dos categorías (estático o reconfigurable), o según su filosofía. En este último caso nos encontraremos, por ejemplo, con el libre hardware design o con el open source hardware.
</body>
</html>
', 'Documento 8 - HTML');
INSERT INTO public.documentos (id_doc, texto_doc, titulo_doc) VALUES (657, '<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
Un hotel es un establecimiento que se dedica al alojamiento de huéspedes o viajeros. El término proviene del vocablo francés hôtel, que hace referencia a una “casa adosada”.
El hotel es un edificio equipado y planificado para albergar a las personas de manera temporal. Sus servicios básicos incluyen una cama, un armario y un cuarto de baño. Otras prestaciones usuales son la televisión, una pequeña heladera (refrigerador) y sillas en el cuarto, mientras que otras instalaciones pueden ser de uso común para todos los huéspedes (como una piscina, un gimnasio o un restaurante).
Existen diversas clasificaciones de hoteles de acuerdo a las comodidades y servicios que brindan al viajero. La más usual está compuesta por estrellas: un hotel de cinco estrellas es el que ofrece el máximo nivel de confort. Al otro extremo, los hoteles de una estrella sólo brindan un servicio básico.
Normalmente se utilizan las estrellas para poder clasificar y catalogar a un hotel en lo que respecta a sus prestaciones, servicios e instalaciones. No obstante, no podemos pasar por alto que en otros países del mundo esa citada clasificación se realiza utilizando letras e incluso diamantes.
Es posible distinguir entre distintos tipos de hoteles.
Así, por ejemplo, nos encontramos con los llamados hoteles rurales. Como su propio nombre indica son aquellos que se encuentran situados en un paraje medioambiental, en plena Naturaleza, y alejados de lo que es bullicio y estrés de las grandes ciudades. En los últimos años se han convertido en unos establecimientos muy demandados ya que en ellos el huésped encuentra tranquilidad y puede realizar todo tipo de actividades al aire libre tales como senderismo o rutas a caballo.
También tendríamos que hablar de los conocidos como hoteles-monumento. En concreto se trata de establecimientos hoteleros que se asientan en una edificación histórica como puede ser un palacio, un castillo o incluso una iglesia. En el caso de España es habitual que a los alojamientos de este tipo se les conozca por el nombre de paradores.
Y luego además están los hoteles balnearios. Estos son unos establecimientos donde los clientes no sólo tienen todos y cada uno de los servicios que se pueden encontrar en cualquier hotel sino que además disponen de un balneario. Así, gracias a ello pueden recibir todo tipo de tratamientos termales y medicinales mediante masajes, circuitos de baños, barros…
Los hoteles-casino, los hostales o los hoteles de montaña son otros de los tipos de alojamiento que nos podemos encontrar.
Un apart-hotel es aquel que tiene la estructura necesaria para que el cliente pueda consumir alimentos dentro de la habitación (por ejemplo, al contar con horno y heladera). Los moteles son aquellos hoteles que cuentan con estacionamiento junto a la habitación, que tiene entrada independiente (es decir, no es necesario pasar por la recepción antes de ingresar).
Se conoce como hotel alojamiento o albergue transitorio al hotel que alquila sus cuartos por hora para brindar privacidad a las parejas que desean tener relaciones sexuales. Estos hoteles no requieren del registro de los pasajeros sino que basan su servicio en la discreción.
</body>
</html>
', 'Documento 9 - HTML');
INSERT INTO public.documentos (id_doc, texto_doc, titulo_doc) VALUES (852, '<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
El software es una palabra que proviene del idioma inglés, pero que gracias a la masificación de uso, ha sido aceptada por la Real Academia Española. Según la RAE, el software es un conjunto de programas, instrucciones y reglas informáticas que permiten ejecutar distintas tareas en una computadora.
Se considera que el software es el equipamiento lógico e intangible de un ordenador. En otras palabras, el concepto de software abarca a todas las aplicaciones informáticas, como los procesadores de textos, las planillas de cálculo y los editores de imágenes.
El software es desarrollado mediante distintos lenguajes de programación, que permiten controlar el comportamiento de una máquina. Estos lenguajes consisten en un conjunto de símbolos y reglas sintácticas y semánticas, que definen el significado de sus elementos y expresiones. Un lenguaje de programación permite a los programadores del software especificar, en forma precisa, sobre qué datos debe operar una computadora.
Dentro de los tipos de software, uno de los más importantes es el software de sistema o software de base, que permite al usuario tener el control sobre el hardware (componentes físicos) y dar soporte a otros programas informáticos. Los llamados sistemas operativos, que comienzan a funcionar cuando se enciende la computadora, son software de base.
La industria del desarrollo de software se ha convertido en un protagonista importante dentro de la economía global, ya que mueve millones de dólares al año. La compañía más grande y popular del mundo es Microsoft, fundada en 1975 por Bill Gates y Paul Allen. Esta empresa logró trascender gracias a su sistema operativo Windows y a su suite de programas de oficina Office.
</body>
</html>
', 'Documento 10 - HTML');
INSERT INTO public.documentos (id_doc, texto_doc, titulo_doc) VALUES (965, '<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
Rendición de Cuentas
Queridos compatriotas:
Hoy, tal como lo ordena la Constitución y lo establece nuestra tradición republicana, vengo ante ustedes y ante el país a rendir cuenta.
Hoy es tiempo de balances y de que hablen los hechos, con toda su fuerza y elocuencia.
Balance de la Reconstrucción.
Desde el mismo 27 de febrero, la reconstrucción se planificó e implementó en tres etapas, de distinta naturaleza pero de inicio simultáneo. Primero se enfrentó la emergencia inmediata: restablecer el orden público, reponer el abastecimiento de servicios básicos, y recuperar la conectividad terrestre y los servicios de comunicación.
Luego vino la emergencia del invierno, en la que volcamos toda nuestra energía en brindar a los damnificados la mayor y más oportuna protección posible, antes que el invierno trajera el frío, las lluvias y las enfermedades. Para ello contamos con la colaboración de la sociedad civil, las Fuerzas Armadas, miles de voluntarios y países amigos.
Este esfuerzo permitió que un millón 250 mil niños que perdieron sus escuelas, no perdieran su año escolar. Restablecimos el acceso digno y oportuno a los servicios de salud. Entregamos más de 80 mil viviendas de emergencia. Recuperamos íntegramente la conectividad física de nuestro país. Y, en 120 días, nuestra economía volvió a crecer y a crear empleos con gran fuerza.
Esta semana, hemos dispuesto recursos para que cada familia, que aún se encuentre en una vivienda de emergencia, acceda a materiales de construcción, por hasta por 50 mil pesos, para mejorar su vivienda y enfrentar mejor el frío y las lluvias de este invierno. Este programa llamado Manos a la Obra 3, beneficiará a 64 mil 726 familias.</body>
</html>
', 'Documento 1 - TXT');
INSERT INTO public.documentos (id_doc, texto_doc, titulo_doc) VALUES (1081, '<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
Siempre dijimos que la reconstrucción definitiva no duraría semanas ni meses. Dijimos que ella requeriría el esfuerzo permanente durante los cuatro años de nuestro gobierno. Hoy, a poco más de catorce meses de aquel trágico y devastador 27 de febrero, responsablemente puedo informar al país, que más de la mitad de la reconstrucción ya está cumplida, pero aún nos falta la otra mitad.
El terremoto y maremoto destruyeron o dañaron significativamente 220 mil viviendas, aumentando en un 37 por ciento las familias chilenas sin hogar. A marzo de este año, hemos entregado 146 mil de los 220 mil subsidios de reconstrucción comprometidos. 92 mil proyectos están iniciados o entregados, y cada mes se inician más de diez mil obras nuevas. Las soluciones habitacionales terminadas y entregadas alcanzan a 40 mil.
¡Cómo me gustaría que todos los damnificados ya tuviesen sus casas o escuelas definitivas!
Desgraciadamente, la magnitud del terremoto no lo hace posible. Hemos trabajado y seguiremos trabajando sin descanso. Pero aún nos queda mucho por hacer. A fines de este año habremos entregado los 220 mil subsidios comprometidos, 100 mil soluciones habitacionales estarán terminadas y 80 mil más iniciadas. Antes del invierno del 2012, todas las familias que viven en aldeas habrán recibido sus viviendas definitivas o éstas estarán en notable estado de avance.
En el campo de la educación, hemos reconstruido o reparado el 70 por ciento de los cuatro mil 538 establecimientos educacionales destruidos o dañados por el terremoto, lo que representó más de la mitad de las escuelas o colegios de las regiones afectadas, beneficiando a más de un millón de alumnos. Y estamos trabajando para terminar esta tarea durante nuestro gobierno.</body>
</html>
', 'Documento 2 - TXT');
INSERT INTO public.documentos (id_doc, texto_doc, titulo_doc) VALUES (1185, '<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
En salud hemos recuperado el 85 por ciento de los hospitales, el 100 por ciento de las camas, el 84 por ciento de los pabellones y el 95 por ciento del equipamiento médico, destruido o inutilizado. Durante el segundo semestre entregaremos nueve hospitales públicos de construcción acelerada: Putaendo, Parral, Talca externo, Talca interno, Curicó, Cauquenes, Hualañé, Chillán y el Félix Bulnes en Santiago, que beneficiarán a más de tres millones de compatriotas.
El 99 por ciento de la infraestructura pública destruida o dañada ha sido recuperada y se encuentra operativa. Ello incluye mil 554 kms. de caminos, la infraestructura portuaria, los sistemas de Agua Potable Rural, los aeródromos y aeropuertos, los embalses, canales y colectores de aguas lluvias. También hemos recuperado el 98 por ciento de los puentes, incluidos el puente Juan Pablo II y Llacolén sobre el río Bío Bío, y el 99 por ciento de la infraestructura pública concesionada.
Es necesario e importante reconocer que ese 27 de febrero la ONEMI no estaba preparada para asumir su desafío y cumplir la misión para la cual fue creada. Desde luego no está en nuestras manos impedir que la naturaleza vuelva a golpearnos. Pero sí tenemos el deber de estar preparados para dar alertas tempranas, ayuda oportuna y proteger con eficacia las vidas de nuestros compatriotas. Para eso enviamos a este Congreso el proyecto de ley que crea la Agencia Nacional de Protección Civil, que reemplazará a la antigua ONEMI, y estará dotada de los necesarios recursos humanos y de tecnología de última generación. Este proyecto también considera la participación inmediata de nuestras Fuerzas Armadas y de Orden en la insustituible misión de proteger a la población, sin que sea necesario decretar Estado de Excepción Constitucional, como ocurre en la actualidad. Y estamos realizando campañas masivas de educación y entrenamiento de la población civil, para crear una sólida cultura de seguridad y prevención de riesgos.
No puedo concluir este balance de la reconstrucción sin honrar la memoria de quienes perdieron la vida y solidarizar con sus familias. Tampoco, sin agradecer el esfuerzo y la colaboración de miles de compatriotas e instituciones que dieron testimonio de gran nobleza y generosidad. Y también quisiera asegurar a las personas que llevan meses sufriendo, que estamos y vamos a seguir trabajando incansablemente para ayudarlos. Ellos nos inspiran, todos los días, a no perder ni un minuto.
Balance de nuestros siete compromisos de gobierno
Hace un año planteamos a todos los chilenos, en este Congreso Pleno, que junto con el desafío de la reconstrucción, asumiríamos en plenitud la responsabilidad de concretar nuestro Programa de Gobierno. Nos comprometimos con siete grandes desafíos para Chile, establecimos metas y plazos concretos, y también pedimos al pueblo que nos juzgara no sólo por nuestras buenas intenciones, sino que, especialmente, por los logros y resultados. Los chilenos ya estamos sintiendo cómo el cambio está llegando a nuestras vidas. De estos siete grandes compromisos paso a rendir cuenta.</body>
</html>
', 'Documento 3 - TXT');
INSERT INTO public.documentos (id_doc, texto_doc, titulo_doc) VALUES (1395, '<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
Recuperar la capacidad de crecimiento
Recuperar la capacidad de crecimiento es el principal instrumento para crear oportunidades y derrotar la pobreza. El crecimiento económico genera empleo, mejora los salarios, da más oportunidades y aporta recursos para financiar el gasto social, y especialmente nuestra Agenda Social, en beneficio de la clase media y los sectores más vulnerables.
Hace un año nos fijamos una meta muy audaz. Tan audaz que muchos la consideraron imposible: que Chile duplicará su ritmo de crecimiento, alcanzando un 6 por ciento anual.
Pues bien, durante los primeros doce meses de nuestro gobierno, y a pesar de los devastadores efectos del terremoto y maremoto, Chile está creciendo en torno al 7 por ciento anual, el ritmo más alto de los últimos quince años. Esto nos ubica nuevamente entre los países de mayor crecimiento de América Latina y la OCDE. Y este crecimiento es sólido y sustentable, pues está construido sobre roca y no sobre arena. En efecto, durante el año 2010, por fin logramos no sólo detener, sino también revertir la caída que venía mostrando la productividad desde el año 2006, e iniciar una recuperación, de forma tal que ésta deje de ser un lastre y vuelva a ser un motor de crecimiento. La tasa de inversión creció en un 18,8 por ciento en términos reales, 2,6 veces el crecimiento promedio de la última década. Las exportaciones, a precios corrientes, crecieron 31,5 por ciento, alcanzando 71 mil millones de dólares, la cifra más alta de nuestra historia. El consumo privado creció un 10,4 por ciento en términos reales, duplicando el promedio registrado durante la última década.
Estos logros se deben en parte a la recuperación de la confianza y al esfuerzo de los trabajadores y emprendedores. También a la profunda agenda de incentivos a la inversión y el emprendimiento desarrollada por el gobierno de la Coalición por el Cambio. Entre ellas destaco la eliminación del impuesto a las Pymes por sus utilidades reinvertidas y la reducción a la mitad del impuesto de timbres y estampillas. Y también a la responsabilidad macroeconómica de los gobiernos anteriores.
Adicionalmente, acabamos de lanzar la Agenda de Impulso Competitivo, cuyo principal objetivo, a través de un conjunto de reformas, es fomentar la innovación y el emprendimiento, los verdaderos recursos renovables e inagotables con que contamos, potenciar la ciencia y tecnología, los instrumentos más poderosos de la sociedad del conocimiento y la información, y de esta forma, incrementar el crecimiento potencial de nuestra economía.
En materia de inflación, estamos muy conscientes que el alza en los precios internacionales, especialmente de los alimentos y el petróleo, está golpeando el bolsillo de la gente, particularmente nuestra clase media y sectores más vulnerables. Para evitar estos efectos, tanto el Banco Central como el gobierno estamos tomando las medidas para mantener la inflación dentro de rangos aceptables. El Banco Central ha actuado a través de la política de tasa de interés y el gobierno a través de mayor austeridad y reducciones del gasto público.
Crear un millón de empleos
Hablar de oportunidades exige necesariamente crear buenos empleos y con sueldos justos. En los últimos años, cientos de miles de chilenos vivieron la angustia de no tener trabajo. Por eso, era necesario fijarnos una meta extraordinariamente ambiciosa. Crear un millón de empleos en el período 2010-2014.
El que ha estado cesante sabe lo que esto significa: sufre la familia, se resiente la dignidad y la angustia de no poder cumplir con los compromisos económicos afecta la vida familiar. Una persona desempleada no sólo es una persona desesperada sino una oportunidad perdida. Por eso sentimos una enorme alegría, de haber podido todos juntos, crear 487 mil empleos, la cifra más alta de nuestra historia. Y lo más importante: la mitad de estos trabajos fueron para mujeres.
Pero tan importante como la cantidad, es la calidad del trabajo. Queremos trabajos mejor remunerados, en que se respeten los derechos de los trabajadores. Queremos un trato respetuoso y un ambiente seguro. Quiero ser muy claro: he dado instrucciones de ser inflexibles en la defensa de los derechos laborales y sindicales frente a cualquier abuso. Hemos aumentado el número de fiscalizadores en terreno, estamos modernizando profundamente la Dirección del Trabajo y seguiremos avanzando en perfeccionar la justicia laboral.</body>
</html>
', 'Documento 4 - TXT');
INSERT INTO public.documentos (id_doc, texto_doc, titulo_doc) VALUES (1664, '<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
Siento también gran satisfacción por el aumento de las remuneraciones, que crecieron en promedio un 6,3 por ciento nominal, con un gran avance en el caso de las mujeres y los trabajadores de pequeñas y medianas empresas. Durante el año 2010 capacitamos a un millón 100 mil trabajadores, y estamos avanzando hacia nuestra meta de capacitar a cinco millones de compatriotas durante nuestro gobierno.
Hemos asumido el compromiso de convertir a Chile en un país modelo en seguridad laboral. Próximamente, enviaremos al Congreso el proyecto de reforma a la Superintendencia de Seguridad Social y firmaremos tres decretos que dan vida al Nuevo Sistema de Seguridad Laboral. Este año enviaremos los proyectos que modifican la Ley de Accidentes del Trabajo y reforman el modelo de fiscalización. Pero las modificaciones legales no bastan si no van acompañadas de una cultura de seguridad laboral. Las reformas incluyen un completo protocolo de prevención al interior de la empresa, con autoevaluaciones y plena participación de los trabajadores. Nuestra meta es reducir en un 25 por ciento los accidentes del trabajo y salvar así muchas vidas. Estas son metas exigentes que obligarán al gobierno, a los empleadores, a los trabajadores, a sus organizaciones sindicales y a las entidades de prevención a instaurar una verdadera cultura de seguridad en el trabajo.
Delincuencia, narcotráfico y acceso a la justicia.
En materia de seguridad ciudadana la mano está cambiando. Se está poniendo más dura con los delincuentes y narcotraficantes y más amigable con las víctimas y los ciudadanos. El año 2009, una de cada tres familias fue víctima de un delito. Cuatro de cada cinco chilenos vivían con temor. La droga y el narcotráfico seguían atrapando jóvenes y destruyendo vidas y habían transformado a Chile en el país de mayor consumo de América Latina. Esta situación producía rabia y angustia en nuestros compatriotas.
Con el apoyo de todos los sectores creamos el Ministerio de Interior y Seguridad Pública, implementamos el Plan Chile Seguro, los programas Barrio en Paz Residencial y Comercial. Aprobamos la reforma constitucional que crea la Defensoría de las Víctimas y pusimos en marcha los programas Vida Nueva y Vida Sana.
Y para superar el déficit de nuestras policías, estamos aumentando la dotación de Carabineros en diez mil efectivos y la dotación de la PDI en mil detectives profesionales, los cuales estarán en las calles protegiendo a la gente inocente.
Estamos implementando quince nuevos planes Cuadrante, para llegar al término de nuestro gobierno a operar en todas las ciudades con más de 25 mil habitantes.
Han transcurrido sólo catorce meses desde que pusimos en marcha una alianza estratégica entre el gobierno, las policías y la ciudadanía, para empezar a ganar la batalla contra la delincuencia y el narcotráfico y devolver a las familias una mayor paz y seguridad. El esfuerzo ha sido grande y ya empezamos a ver sus primeros resultados concretos. El año 2010, los delitos cayeron en un 16 por ciento, lo que significa que 222 mil 363 familias, en su mayoría de hogares vulnerables y de clase media, dejaron de ser víctimas de delitos. También el temor de los ciudadanos empezó a disminuir.
Hemos logrado la detención de más de 50 mil prófugos de la justicia, la recuperación del 80 por ciento de los automóviles robados, la incautación de casi tres mil 500 armas de fuego y, sobre todo, los mayores niveles de decomiso de drogas de nuestra historia. Todos conocemos la estrecha relación que existe entre armas, drogas y delitos. Cada vez que incautamos un arma ilegal estamos protegiendo la vida y cada vez que incautamos drogas estamos salvando niños y jóvenes.</body>
</html>
', 'Documento 5 - TXT');


--
-- TOC entry 2809 (class 0 OID 21114)
-- Dependencies: 198
-- Data for Name: indice; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (2, 1, 1, 'tipo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (3, 1, 1, 'utilizada');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (4, 1, 1, 'arquitectura');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (5, 1, 1, 'hibridas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (6, 1, 1, 'primer');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (7, 1, 1, 'sistema');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (8, 1, 1, 'dos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (9, 5, 1, 'computadora');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (10, 2, 1, 'generales');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (11, 1, 1, 'llamadas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (12, 1, 1, 'analogica');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (13, 1, 1, 'populares');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (14, 1, 1, 'especiales');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (15, 1, 1, 'modo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (16, 3, 1, 'digital');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (17, 1, 1, 'puede');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (18, 1, 1, 'terminos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (19, 1, 1, 'usado');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (20, 1, 1, 'difundida');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (21, 1, 1, 'tipos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (22, 1, 1, 'computadoras');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (23, 3, 1, 'propositos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (24, 1, 1, 'pocos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (25, 1, 1, 'conocida');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (26, 1, 1, 'especificos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (27, 1, 1, 'mixta');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (28, 1, 1, 'refiriendo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (29, 1, 1, 'siendo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (31, 2, 30, 'instrucciones');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (32, 1, 30, 'multiprocesamiento');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (33, 1, 30, 'pelicula');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (34, 1, 30, 'procesamiento');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (35, 1, 30, 'formada');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (36, 1, 30, 'periodo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (37, 1, 30, 'sistema');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (38, 1, 30, 'ilusion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (39, 3, 30, 'programa');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (40, 2, 30, 'ejecuta');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (41, 1, 30, 'origen');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (42, 1, 30, 'impresion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (43, 1, 30, 'fotogramas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (44, 1, 30, 'controla');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (45, 2, 30, 'segundo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (46, 1, 30, 'realidad');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (47, 1, 30, 'tener');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (48, 1, 30, 'simultaneo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (49, 1, 30, 'operativo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (50, 1, 30, 'termino');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (51, 1, 30, 'puede');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (52, 1, 30, 'similar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (53, 1, 30, 'simultaneamente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (54, 3, 30, 'cpu');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (55, 1, 30, 'computadores');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (56, 1, 30, 'sucesion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (57, 1, 30, 'utilice');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (58, 1, 30, 'computadoras');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (59, 1, 30, 'conoce');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (60, 1, 30, 'multitarea');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (61, 1, 30, 'repartiendo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (62, 4, 30, 'tiempo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (63, 1, 30, 'rapida');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (64, 3, 30, 'programas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (65, 1, 30, 'actualidad');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (66, 1, 30, 'viene');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (67, 2, 30, 'ejecutando');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (68, 1, 30, 'cambian');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (69, 1, 30, 'reparto');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (71, 1, 70, 'previas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (72, 1, 70, 'caracteristicas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (73, 1, 70, 'insumido');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (74, 1, 70, 'software');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (75, 1, 70, 'consistente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (76, 1, 70, 'etapa');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (77, 1, 70, 'sistema');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (78, 1, 70, 'trabajo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (79, 1, 70, 'pensar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (80, 1, 70, 'cifra');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (81, 1, 70, 'llevar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (82, 1, 70, 'hacer');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (83, 4, 70, 'lenguaje');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (84, 1, 70, 'total');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (85, 1, 70, 'tardaria');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (86, 1, 70, 'menor');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (87, 1, 70, 'estimaciones');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (88, 1, 70, 'programado');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (89, 1, 70, 'porte');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (90, 4, 70, 'programacion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (91, 1, 70, 'depende');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (92, 1, 70, 'ensamblador');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (93, 1, 70, 'puede');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (94, 1, 70, 'codificar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (95, 1, 70, 'medida');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (96, 1, 70, 'relativo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (97, 1, 70, 'elegido');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (98, 1, 70, 'requerido');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (99, 1, 70, 'criticidad');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (100, 1, 70, 'codificacion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (101, 1, 70, 'implementacion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (102, 1, 70, 'insume');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (103, 1, 70, 'pequeno');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (104, 1, 70, 'aplicable');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (105, 1, 70, 'llaman');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (106, 1, 70, 'pueden');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (107, 1, 70, 'sistemas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (108, 4, 70, 'tiempo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (109, 1, 70, 'suele');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (110, 1, 70, 'desarrollo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (111, 1, 70, 'etapas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (112, 1, 70, 'algoritmo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (113, 1, 70, 'criticas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (114, 1, 70, 'nivel');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (115, 1, 70, 'cruciales');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (116, 1, 70, 'ejemplo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (118, 1, 117, 'genera');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (119, 1, 117, 'estilo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (120, 1, 117, 'reglas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (121, 1, 117, 'clases');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (122, 4, 117, 'fuente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (123, 1, 117, 'productividad');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (124, 1, 117, 'simple');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (125, 1, 117, 'programador');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (126, 1, 117, 'forma');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (127, 1, 117, 'generadores');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (128, 1, 117, 'aumentar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (129, 1, 117, 'relativamente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (130, 1, 117, 'simples');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (131, 1, 117, 'patrones');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (132, 1, 117, 'automatica');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (133, 1, 117, 'reemplaza');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (134, 1, 117, 'genericas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (135, 1, 117, 'generador');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (136, 1, 117, 'prototipos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (137, 3, 117, 'programacion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (138, 1, 117, 'herramientas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (139, 1, 117, 'macro');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (140, 5, 117, 'codigo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (141, 1, 117, 'aspectos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (142, 1, 117, 'preprocesador');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (143, 1, 117, 'ide');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (144, 2, 117, 'procesador');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (145, 1, 117, 'mediante');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (146, 1, 117, 'plantilla');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (147, 1, 117, 'plantillas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (149, 1, 148, 'completo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (150, 1, 148, 'sistema');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (151, 3, 148, 'fuente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (152, 2, 148, 'trabajo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (153, 2, 148, 'programa');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (154, 1, 148, 'intermedio');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (155, 1, 148, 'programador');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (156, 1, 148, 'encarga');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (157, 1, 148, 'optimiza');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (158, 1, 148, 'tarea');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (159, 2, 148, 'archivos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (160, 1, 148, 'hiciera');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (161, 1, 148, 'traducir');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (162, 1, 148, 'liberado');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (163, 2, 148, 'decir');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (164, 1, 148, 'agiliza');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (165, 2, 148, 'modo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (166, 1, 148, 'trabajar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (167, 1, 148, 'poco');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (168, 7, 148, 'codigo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (169, 1, 148, 'flujo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (170, 1, 148, 'desventaja');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (171, 1, 148, 'permite');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (172, 1, 148, 'enormemente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (173, 1, 148, 'favorece');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (174, 1, 148, 'utiliza');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (175, 1, 148, 'frecuentemente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (176, 5, 148, 'interprete');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (177, 4, 148, 'puro');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (178, 4, 148, 'ejecucion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (179, 1, 148, 'obtener');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (180, 1, 148, 'inicialmente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (181, 1, 148, 'trabaja');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (182, 1, 148, 'ejecutar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (183, 2, 148, 'velocidad');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (184, 1, 148, 'ventaja');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (185, 2, 148, 'depuracion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (186, 2, 148, 'compilador');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (187, 1, 148, 'objeto');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (188, 1, 148, 'hacerlo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (189, 2, 148, 'forma');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (190, 2, 148, 'linea');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (191, 1, 148, 'depurado');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (192, 3, 148, 'lenguaje');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (193, 1, 148, 'facilita');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (194, 3, 148, 'ejecutable');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (195, 1, 148, 'programacion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (196, 2, 148, 'lenta');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (197, 1, 148, 'elegido');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (198, 3, 148, 'existe');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (199, 1, 148, 'alternativa');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (200, 1, 148, 'errores');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (201, 1, 148, 'rendimiento');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (202, 2, 148, 'modalidad');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (203, 1, 148, 'tiempo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (204, 1, 148, 'suele');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (205, 1, 148, 'mixta');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (206, 1, 148, 'usar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (208, 2, 207, 'tipo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (209, 1, 207, 'necesarios');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (210, 1, 207, 'software');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (211, 1, 207, 'completo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (212, 5, 207, 'sistema');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (213, 1, 207, 'ludwig');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (214, 1, 207, 'datos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (215, 1, 207, 'latin');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (216, 1, 207, 'soporte');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (217, 1, 207, 'hardware');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (218, 1, 207, 'musical');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (219, 1, 207, 'denominan');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (220, 1, 207, 'tipos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (221, 1, 207, 'utiliza');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (222, 1, 207, 'biologo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (223, 1, 207, 'personas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (224, 1, 207, 'austriaco');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (225, 1, 207, 'intercambios');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (226, 2, 207, 'concepto');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (227, 1, 207, 'teorias');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (228, 1, 207, 'comenzo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (229, 1, 207, 'modulo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (230, 1, 207, 'deducirse');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (231, 1, 207, 'simbolos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (232, 1, 207, 'abiertos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (233, 1, 207, 'busca');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (234, 1, 207, 'ambiente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (235, 1, 207, 'sociedades');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (236, 1, 207, 'partes');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (237, 1, 207, 'metateoria');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (238, 1, 207, 'componentes');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (239, 1, 207, 'logica');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (240, 1, 207, 'adaptando');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (241, 1, 207, 'aislados');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (242, 4, 207, 'conjunto');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (243, 1, 207, 'interrelacionados');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (244, 1, 207, 'manejo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (245, 1, 207, 'interdisciplinario');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (246, 1, 207, 'objetos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (247, 1, 207, 'systema');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (248, 1, 207, 'emergentes');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (249, 1, 207, 'valor');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (250, 1, 207, 'denominadas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (251, 3, 207, 'entorno');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (252, 1, 207, 'conceptual');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (253, 1, 207, 'instrumentos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (254, 1, 207, 'elementos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (255, 1, 207, 'existen');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (256, 1, 207, 'abstracto');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (257, 4, 207, 'propiedades');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (258, 1, 207, 'intercambio');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (259, 1, 207, 'definir');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (260, 2, 207, 'interactuan');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (261, 3, 207, 'reales');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (262, 1, 207, 'comportamiento');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (263, 1, 207, 'modernas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (264, 1, 207, 'estudios');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (265, 1, 207, 'cerrados');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (266, 1, 207, 'encontrar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (267, 1, 207, 'siglo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (268, 1, 207, 'intercambia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (269, 1, 207, 'informacion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (270, 1, 207, 'biosfera');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (271, 1, 207, 'comprenden');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (272, 2, 207, 'teoria');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (273, 1, 207, 'recibe');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (274, 1, 207, 'tres');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (275, 1, 207, 'realiza');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (276, 1, 207, 'cambio');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (277, 1, 207, 'comunes');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (278, 1, 207, 'encuentran');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (279, 1, 207, 'ideal');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (280, 1, 207, 'procesar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (281, 1, 207, 'bertalanffy');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (282, 2, 207, 'energia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (283, 1, 207, 'ordenadores');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (284, 1, 207, 'matematicas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (285, 1, 207, 'mediados');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (286, 1, 207, 'real');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (287, 1, 207, 'pensamiento');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (288, 1, 207, 'forman');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (289, 1, 207, 'formal');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (290, 1, 207, 'naturales');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (291, 1, 207, 'ordenado');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (292, 1, 207, 'pueden');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (293, 1, 207, 'organizado');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (294, 1, 207, 'mencionarse');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (295, 1, 207, 'entidades');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (296, 1, 207, 'desarrollo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (297, 1, 207, 'definiciones');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (298, 1, 207, 'empresa');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (299, 1, 207, 'notacion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (300, 1, 207, 'encargadas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (301, 1, 207, 'reglas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (302, 1, 207, 'formada');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (303, 1, 207, 'flujos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (304, 1, 207, 'forma');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (305, 2, 207, 'general');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (306, 1, 207, 'ejemplos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (307, 1, 207, 'von');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (308, 1, 207, 'estudio');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (309, 1, 207, 'celulas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (310, 2, 207, 'organizacion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (311, 1, 207, 'puede');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (312, 1, 207, 'informatico');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (313, 1, 207, 'considera');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (314, 1, 207, 'material');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (315, 5, 207, 'sistemas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (316, 1, 207, 'conceptos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (317, 1, 207, 'entidad');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (318, 1, 207, 'programas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (319, 1, 207, 'dotados');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (320, 1, 207, 'humano');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (321, 1, 207, 'nocion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (322, 1, 207, 'incluyen');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (323, 1, 207, 'materia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (324, 1, 207, 'ningun');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (325, 1, 207, 'organizados');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (327, 1, 326, 'intentamos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (328, 1, 326, 'vocablo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (329, 1, 326, 'sirve');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (330, 1, 326, 'intentaran');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (331, 1, 326, 'latin');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (332, 1, 326, 'concurso');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (333, 1, 326, 'soporte');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (334, 1, 326, 'persona');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (335, 1, 326, 'punto');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (336, 1, 326, 'estatua');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (337, 1, 326, 'defensa');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (338, 1, 326, 'personal');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (339, 1, 326, 'nba');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (340, 1, 326, 'personas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (341, 1, 326, 'tuvimos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (342, 1, 326, 'concepto');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (343, 1, 326, 'bombardeada');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (344, 1, 326, 'estructura');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (345, 1, 326, 'nivel');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (346, 1, 326, 'tropas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (347, 1, 326, 'cemento');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (348, 1, 326, 'candidatura');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (349, 1, 326, 'sorteo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (350, 1, 326, 'proyecto');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (351, 1, 326, 'acidos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (352, 1, 326, 'origen');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (353, 1, 326, 'armador');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (354, 1, 326, 'bases');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (355, 1, 326, 'posicion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (356, 1, 326, 'tratarse');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (357, 1, 326, 'cima');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (358, 1, 326, 'baloncesto');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (359, 1, 326, 'griego');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (360, 1, 326, 'tormenta');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (361, 1, 326, 'steve');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (362, 1, 326, 'expediciones');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (363, 1, 326, 'regulan');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (364, 1, 326, 'componente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (365, 1, 326, 'paralela');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (366, 1, 326, 'popular');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (367, 1, 326, 'ultimos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (368, 1, 326, 'concentra');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (369, 1, 326, 'dirigente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (370, 1, 326, 'geometrica');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (371, 1, 326, 'tenia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (372, 1, 326, 'soberania');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (373, 2, 326, 'conoce');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (374, 1, 326, 'obra');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (375, 1, 326, 'elemento');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (376, 1, 326, 'cada');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (377, 1, 326, 'problemas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (378, 1, 326, 'nash');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (379, 1, 326, 'edificio');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (380, 1, 326, 'algo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (381, 1, 326, 'operaciones');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (382, 1, 326, 'defender');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (383, 1, 326, 'construccion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (384, 1, 326, 'deporte');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (385, 1, 326, 'lugar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (386, 1, 326, 'grupo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (387, 1, 326, 'campanas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (388, 1, 326, 'reclamado');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (389, 1, 326, 'beisbol');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (390, 1, 326, 'norteamericana');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (391, 1, 326, 'fisico');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (392, 1, 326, 'sales');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (393, 1, 326, 'teoricamente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (394, 1, 326, 'insurgentes');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (395, 1, 326, 'equipamiento');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (396, 1, 326, 'encargo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (397, 1, 326, 'ocupa');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (398, 1, 326, 'sostener');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (399, 1, 326, 'sustancia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (400, 1, 326, 'artista');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (401, 1, 326, 'simbolico');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (402, 2, 326, 'sosten');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (403, 1, 326, 'formar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (404, 1, 326, 'basis');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (405, 1, 326, 'campo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (406, 1, 326, 'robarnos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (407, 3, 326, 'apoyo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (408, 1, 326, 'bagdad');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (409, 1, 326, 'ejemplo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (410, 1, 326, 'llegar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (411, 1, 326, 'idea');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (412, 1, 326, 'combinacion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (413, 1, 326, 'linea');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (414, 1, 326, 'representadas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (415, 1, 326, 'esquinas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (416, 1, 326, 'kilogramos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (417, 1, 326, 'significaciones');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (418, 1, 326, 'cuidado');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (419, 2, 326, 'organizacion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (420, 1, 326, 'cayo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (421, 1, 326, 'deben');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (422, 1, 326, 'lideres');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (423, 1, 326, 'economica');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (424, 4, 326, 'puede');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (425, 1, 326, 'descansa');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (426, 1, 326, 'social');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (427, 1, 326, 'figura');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (428, 1, 326, 'normas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (429, 1, 326, 'regresar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (430, 1, 326, 'jugadores');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (431, 1, 326, 'esfuerzo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (432, 1, 326, 'juego');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (433, 1, 326, 'fundamento');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (434, 1, 326, 'anos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (435, 2, 326, 'politico');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (436, 1, 326, 'porque');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (437, 12, 326, 'base');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (439, 1, 438, 'complementario');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (440, 1, 438, 'necesarios');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (441, 1, 438, 'especificas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (442, 1, 438, 'pasar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (443, 2, 438, 'computadora');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (444, 1, 438, 'entendido');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (445, 1, 438, 'grandes');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (446, 1, 438, 'toda');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (447, 1, 438, 'marca');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (448, 1, 438, 'expuesta');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (449, 1, 438, 'datos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (450, 1, 438, 'integrado');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (451, 1, 438, 'permiten');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (452, 1, 438, 'funcionamiento');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (453, 1, 438, 'temporal');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (454, 2, 438, 'ram');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (455, 1, 438, 'tomando');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (456, 1, 438, 'ultimo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (457, 1, 438, 'aparicion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (458, 1, 438, 'persona');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (459, 2, 438, 'permite');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (460, 1, 438, 'avanzado');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (461, 1, 438, 'vamos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (462, 2, 438, 'manera');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (463, 1, 438, 'encontramos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (464, 1, 438, 'claramente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (465, 1, 438, 'vidrio');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (466, 2, 438, 'concepto');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (467, 1, 438, 'acceder');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (468, 2, 438, 'access');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (469, 1, 438, 'acceso');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (470, 1, 438, 'ware');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (471, 1, 438, 'empaquetar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (472, 1, 438, 'etimologico');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (473, 3, 438, 'conjunto');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (474, 1, 438, 'denominar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (475, 1, 438, 'realizadas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (476, 1, 438, 'diversos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (477, 1, 438, 'cosas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (478, 1, 438, 'cuarta');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (479, 1, 438, 'chip');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (480, 1, 438, 'cualquier');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (481, 1, 438, 'almacenamiento');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (482, 2, 438, 'circuitos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (483, 1, 438, 'traducirse');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (484, 1, 438, 'union');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (485, 1, 438, 'anglosajona');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (486, 2, 438, 'suele');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (487, 1, 438, 'escaners');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (488, 1, 438, 'dinamicas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (489, 1, 438, 'fisica');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (490, 1, 438, 'muestran');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (491, 1, 438, 'open');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (492, 1, 438, 'referencia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (493, 1, 438, 'bus');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (494, 1, 438, 'definir');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (495, 1, 438, 'lugar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (496, 1, 438, 'source');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (497, 2, 438, 'ultimas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (498, 1, 438, 'estudios');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (499, 1, 438, 'red');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (500, 1, 438, 'cientos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (501, 1, 438, 'mouse');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (502, 1, 438, 'permitio');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (503, 1, 438, 'tercera');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (504, 1, 438, 'subrayar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (505, 1, 438, 'personales');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (506, 1, 438, 'sector');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (507, 2, 438, 'duro');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (508, 1, 438, 'sino');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (509, 1, 438, 'static');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (510, 1, 438, 'determinada');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (511, 1, 438, 'ordenadores');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (512, 1, 438, 'ingresar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (513, 1, 438, 'pago');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (514, 1, 438, 'proximos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (515, 1, 438, 'pueden');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (516, 1, 438, 'mediante');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (517, 1, 438, 'especificaciones');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (518, 1, 438, 'profundidad');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (519, 1, 438, 'cantidad');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (520, 2, 438, 'tenemos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (521, 1, 438, 'modems');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (522, 3, 438, 'memory');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (523, 1, 438, 'basico');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (524, 1, 438, 'disco');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (525, 1, 438, 'aleatorio');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (526, 1, 438, 'ciertas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (527, 1, 438, 'video');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (528, 1, 438, 'non');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (529, 1, 438, 'reconfigurable');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (530, 3, 438, 'random');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (531, 1, 438, 'analizar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (532, 2, 438, 'central');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (533, 1, 438, 'nanotecnologia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (534, 1, 438, 'hard');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (535, 1, 438, 'termino');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (536, 1, 438, 'diferencia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (537, 1, 438, 'electricos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (538, 1, 438, 'intangibles');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (539, 1, 438, 'publica');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (540, 1, 438, 'historia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (541, 1, 438, 'iniciar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (542, 1, 438, 'memorias');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (543, 1, 438, 'resultado');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (544, 2, 438, 'categorias');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (545, 1, 438, 'monitor');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (546, 1, 438, 'volatile');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (547, 1, 438, 'albergaban');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (548, 1, 438, 'destacar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (549, 2, 438, 'computadoras');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (550, 1, 438, 'lengua');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (551, 1, 438, 'impresora');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (552, 1, 438, 'material');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (553, 4, 438, 'generacion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (554, 1, 438, 'contrario');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (555, 1, 438, 'anos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (556, 1, 438, 'informatica');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (557, 1, 438, 'sram');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (558, 1, 438, 'base');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (559, 1, 438, 'tipo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (560, 1, 438, 'segunda');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (561, 4, 438, 'memoria');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (562, 1, 438, 'software');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (563, 1, 438, 'sistema');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (564, 1, 438, 'distintas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (565, 1, 438, 'circuito');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (566, 1, 438, 'nvram');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (567, 1, 438, 'vocablos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (568, 1, 438, 'habria');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (569, 11, 438, 'hardware');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (570, 1, 438, 'punto');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (571, 1, 438, 'silicio');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (572, 1, 438, 'tipos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (573, 2, 438, 'utiliza');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (574, 1, 438, 'sinonimo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (575, 1, 438, 'tecnologia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (576, 1, 438, 'avance');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (577, 1, 438, 'encontraremos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (578, 1, 438, 'etapas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (579, 1, 438, 'usuario');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (580, 1, 438, 'caracterizan');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (581, 1, 438, 'tubos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (582, 1, 438, 'conectadas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (583, 1, 438, 'instrucciones');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (584, 1, 438, 'importancia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (585, 1, 438, 'dara');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (586, 1, 438, 'procesamiento');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (587, 1, 438, 'pues');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (588, 2, 438, 'transistores');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (589, 3, 438, 'dos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (590, 1, 438, 'origen');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (591, 4, 438, 'perifericos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (592, 5, 438, 'componentes');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (593, 1, 438, 'naturaleza');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (594, 2, 438, 'libre');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (595, 1, 438, 'hitos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (596, 2, 438, 'placa');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (597, 1, 438, 'gratuita');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (598, 1, 438, 'hecho');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (599, 1, 438, 'acces');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (600, 1, 438, 'existe');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (601, 1, 438, 'partida');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (602, 2, 438, 'conoce');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (603, 1, 438, 'unidad');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (604, 1, 438, 'funciones');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (605, 2, 438, 'entrada');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (606, 1, 438, 'realizan');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (607, 1, 438, 'espanola');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (608, 1, 438, 'estatico');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (609, 1, 438, 'operaciones');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (610, 1, 438, 'teclado');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (611, 1, 438, 'podemos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (612, 1, 438, 'usb');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (613, 1, 438, 'impresoras');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (614, 1, 438, 'internos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (615, 3, 438, 'informacion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (616, 1, 438, 'ingles');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (617, 1, 438, 'academia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (618, 1, 438, 'conforman');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (619, 1, 438, 'etc');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (620, 1, 438, 'especiales');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (621, 1, 438, 'cables');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (622, 1, 438, 'logicos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (623, 1, 438, 'procesan');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (624, 1, 438, 'cpu');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (625, 1, 438, 'interpretan');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (626, 1, 438, 'advenimiento');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (627, 1, 438, 'real');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (628, 1, 438, 'utilizan');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (629, 1, 438, 'madre');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (630, 1, 438, 'clasificarse');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (631, 1, 438, 'prever');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (632, 1, 438, 'mencionarse');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (633, 1, 438, 'desarrollo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (634, 2, 438, 'ejemplo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (635, 1, 438, 'concreto');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (636, 1, 438, 'alto');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (637, 1, 438, 'forma');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (638, 1, 438, 'refiere');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (639, 2, 438, 'salida');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (640, 1, 438, 'momento');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (641, 1, 438, 'primera');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (642, 1, 438, 'distinguirse');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (643, 2, 438, 'tarjetas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (644, 1, 438, 'conformado');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (645, 1, 438, 'design');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (646, 1, 438, 'define');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (647, 1, 438, 'vram');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (648, 2, 438, 'fisicos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (649, 3, 438, 'puede');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (650, 1, 438, 'ordenador');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (651, 1, 438, 'filosofia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (652, 2, 438, 'dispositivos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (653, 2, 438, 'microprocesador');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (654, 1, 438, 'amplia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (655, 1, 438, 'anteriores');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (656, 1, 438, 'clasificacion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (658, 1, 657, 'iglesia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (659, 1, 657, 'vocablo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (660, 2, 657, 'pasar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (661, 1, 657, 'grandes');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (662, 1, 657, 'posible');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (663, 1, 657, 'recibir');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (664, 1, 657, 'temporal');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (665, 1, 657, 'independiente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (666, 1, 657, 'barros');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (667, 1, 657, 'usuales');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (668, 1, 657, 'restaurante');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (669, 1, 657, 'personas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (670, 1, 657, 'manera');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (671, 4, 657, 'servicios');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (672, 1, 657, 'encontramos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (673, 1, 657, 'hoteleros');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (674, 1, 657, 'letras');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (675, 1, 657, 'situados');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (676, 1, 657, 'nivel');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (677, 1, 657, 'huesped');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (678, 1, 657, 'albergue');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (679, 1, 657, 'gracias');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (680, 1, 657, 'ello');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (681, 1, 657, 'privacidad');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (682, 2, 657, 'cuarto');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (683, 1, 657, 'propio');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (684, 1, 657, 'paradores');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (685, 1, 657, 'alquila');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (686, 9, 657, 'hotel');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (687, 1, 657, 'montana');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (688, 1, 657, 'consumir');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (689, 1, 657, 'cama');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (690, 1, 657, 'ultimos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (691, 1, 657, 'apart');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (692, 1, 657, 'necesaria');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (693, 1, 657, 'cualquier');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (694, 1, 657, 'circuitos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (695, 2, 657, 'prestaciones');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (696, 1, 657, 'maximo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (697, 1, 657, 'cuartos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (698, 1, 657, 'desean');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (699, 1, 657, 'encuentra');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (700, 3, 657, 'establecimientos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (701, 1, 657, 'bano');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (702, 1, 657, 'paises');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (703, 2, 657, 'habitacion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (704, 1, 657, 'necesario');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (705, 1, 657, 'aire');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (706, 1, 657, 'frances');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (707, 1, 657, 'existen');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (708, 1, 657, 'masajes');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (709, 1, 657, 'clasificar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (710, 1, 657, 'referencia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (711, 1, 657, 'armario');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (712, 2, 657, 'heladera');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (713, 1, 657, 'habitual');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (714, 1, 657, 'extremo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (715, 1, 657, 'bullicio');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (716, 1, 657, 'hablar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (717, 1, 657, 'recepcion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (718, 1, 657, 'balneario');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (719, 1, 657, 'refrigerador');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (720, 1, 657, 'cinco');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (721, 2, 657, 'encontrar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (722, 1, 657, 'caballo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (723, 1, 657, 'alejados');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (724, 1, 657, 'comodidades');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (725, 1, 657, 'realiza');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (726, 1, 657, 'horno');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (727, 2, 657, 'sino');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (728, 1, 657, 'usual');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (729, 1, 657, 'brindar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (730, 1, 657, 'transitorio');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (731, 1, 657, 'viajeros');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (732, 1, 657, 'ingresar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (733, 3, 657, 'estrellas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (734, 1, 657, 'cliente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (735, 3, 657, 'pueden');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (736, 1, 657, 'mediante');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (737, 1, 657, 'basicos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (738, 1, 657, 'conozca');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (739, 1, 657, 'distinguir');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (740, 1, 657, 'basico');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (741, 1, 657, 'medicinales');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (742, 1, 657, 'catalogar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (743, 1, 657, 'basan');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (744, 1, 657, 'tratamientos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (745, 1, 657, 'diamantes');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (746, 1, 657, 'termino');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (747, 1, 657, 'pequena');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (748, 1, 657, 'ciudades');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (749, 2, 657, 'servicio');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (750, 10, 657, 'hoteles');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (751, 1, 657, 'mundo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (752, 2, 657, 'instalaciones');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (753, 1, 657, 'respecta');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (754, 1, 657, 'tienen');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (755, 1, 657, 'asientan');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (756, 1, 657, 'registro');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (757, 1, 657, 'incluyen');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (758, 1, 657, 'anos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (759, 1, 657, 'clasificaciones');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (760, 1, 657, 'rutas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (761, 1, 657, 'conocidos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (762, 1, 657, 'plena');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (763, 1, 657, 'monumento');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (764, 1, 657, 'casa');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (765, 3, 657, 'tipo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (766, 1, 657, 'realizar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (767, 1, 657, 'sexuales');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (768, 1, 657, 'parejas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (769, 1, 657, 'tranquilidad');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (770, 1, 657, 'ofrece');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (771, 1, 657, 'viajero');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (772, 1, 657, 'termales');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (773, 1, 657, 'gimnasio');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (774, 1, 657, 'tener');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (775, 1, 657, 'medioambiental');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (776, 1, 657, 'decir');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (777, 1, 657, 'tendriamos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (778, 1, 657, 'pueda');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (779, 1, 657, 'llamados');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (780, 1, 657, 'indica');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (781, 1, 657, 'demandados');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (782, 1, 657, 'pasajeros');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (783, 1, 657, 'planificado');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (784, 2, 657, 'tipos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (785, 1, 657, 'historica');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (786, 1, 657, 'estructura');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (787, 1, 657, 'compuesta');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (788, 1, 657, 'sillas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (789, 1, 657, 'obstante');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (790, 2, 657, 'huespedes');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (791, 1, 657, 'hora');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (792, 1, 657, 'requieren');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (793, 1, 657, 'estacionamiento');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (794, 1, 657, 'naturaleza');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (795, 1, 657, 'cuentan');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (796, 2, 657, 'brindan');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (797, 1, 657, 'piscina');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (798, 1, 657, 'libre');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (799, 1, 657, 'distintos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (800, 1, 657, 'equipado');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (801, 1, 657, 'television');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (802, 1, 657, 'normalmente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (803, 1, 657, 'conoce');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (804, 1, 657, 'cada');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (805, 1, 657, 'discrecion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (806, 1, 657, 'entrada');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (807, 1, 657, 'edificio');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (808, 1, 657, 'senderismo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (809, 2, 657, 'podemos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (810, 1, 657, 'castillo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (811, 1, 657, 'casino');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (812, 1, 657, 'rurales');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (813, 1, 657, 'utilizando');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (814, 1, 657, 'uso');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (815, 1, 657, 'disponen');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (816, 1, 657, 'proviene');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (817, 1, 657, 'clientes');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (818, 1, 657, 'banos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (819, 1, 657, 'diversas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (820, 1, 657, 'encuentran');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (821, 1, 657, 'estrella');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (822, 1, 657, 'moteles');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (823, 1, 657, 'establecimiento');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (824, 1, 657, 'albergar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (825, 1, 657, 'utilizan');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (826, 1, 657, 'paraje');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (827, 1, 657, 'palacio');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (828, 1, 657, 'estres');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (829, 2, 657, 'ejemplo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (830, 1, 657, 'relaciones');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (831, 1, 657, 'adosada');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (832, 1, 657, 'dedica');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (833, 1, 657, 'edificacion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (834, 1, 657, 'trata');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (835, 1, 657, 'concreto');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (836, 1, 657, 'alto');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (837, 1, 657, 'actividades');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (838, 2, 657, 'nombre');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (839, 1, 657, 'hostales');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (840, 3, 657, 'alojamiento');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (841, 1, 657, 'contar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (842, 2, 657, 'puede');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (843, 1, 657, 'balnearios');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (844, 1, 657, 'convertido');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (845, 1, 657, 'poder');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (846, 1, 657, 'espana');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (847, 1, 657, 'alojamientos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (848, 1, 657, 'clasificacion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (849, 1, 657, 'citada');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (850, 1, 657, 'confort');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (851, 1, 657, 'alimentos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (853, 1, 852, 'intangible');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (854, 1, 852, 'definen');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (855, 11, 852, 'software');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (856, 2, 852, 'sistema');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (857, 1, 852, 'desarrollado');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (858, 1, 852, 'idioma');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (859, 1, 852, 'distintas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (860, 1, 852, 'especificar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (861, 3, 852, 'computadora');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (862, 1, 852, 'datos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (863, 2, 852, 'permiten');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (864, 1, 852, 'rae');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (865, 1, 852, 'dolares');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (866, 1, 852, 'tener');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (867, 1, 852, 'mueve');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (868, 1, 852, 'semanticas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (869, 1, 852, 'soporte');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (870, 1, 852, 'hardware');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (871, 1, 852, 'llamados');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (872, 1, 852, 'fundada');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (873, 2, 852, 'permite');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (874, 1, 852, 'bill');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (875, 1, 852, 'tipos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (876, 1, 852, 'importante');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (877, 1, 852, 'concepto');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (878, 1, 852, 'palabras');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (879, 1, 852, 'usuario');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (880, 1, 852, 'operar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (881, 1, 852, 'controlar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (882, 1, 852, 'instrucciones');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (883, 2, 852, 'gracias');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (884, 1, 852, 'simbolos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (885, 1, 852, 'trascender');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (886, 1, 852, 'logico');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (887, 1, 852, 'sintacticas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (888, 1, 852, 'global');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (889, 1, 852, 'componentes');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (890, 2, 852, 'informaticas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (891, 1, 852, 'editores');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (892, 2, 852, 'conjunto');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (893, 1, 852, 'millones');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (894, 1, 852, 'precisa');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (895, 1, 852, 'aplicaciones');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (896, 2, 852, 'programacion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (897, 1, 852, 'operativo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (898, 1, 852, 'distintos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (899, 1, 852, 'popular');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (900, 1, 852, 'significado');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (901, 1, 852, 'aceptada');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (902, 1, 852, 'consisten');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (903, 1, 852, 'masificacion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (904, 1, 852, 'textos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (905, 1, 852, 'operativos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (906, 1, 852, 'suite');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (907, 1, 852, 'palabra');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (908, 1, 852, 'elementos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (909, 1, 852, 'economia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (910, 1, 852, 'espanola');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (911, 1, 852, 'paul');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (912, 1, 852, 'allen');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (913, 1, 852, 'protagonista');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (914, 1, 852, 'comportamiento');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (915, 1, 852, 'office');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (916, 1, 852, 'microsoft');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (917, 1, 852, 'uso');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (918, 1, 852, 'enciende');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (919, 1, 852, 'equipamiento');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (920, 1, 852, 'ingles');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (921, 1, 852, 'academia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (922, 1, 852, 'dar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (923, 1, 852, 'proviene');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (924, 1, 852, 'industria');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (925, 1, 852, 'imagenes');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (926, 1, 852, 'informaticos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (927, 1, 852, 'logro');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (928, 1, 852, 'procesadores');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (929, 1, 852, 'debe');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (930, 1, 852, 'real');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (931, 1, 852, 'todas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (932, 1, 852, 'mediante');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (933, 1, 852, 'desarrollo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (934, 1, 852, 'empresa');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (935, 1, 852, 'ejecutar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (936, 2, 852, 'reglas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (937, 1, 852, 'comienzan');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (938, 1, 852, 'planillas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (939, 1, 852, 'programadores');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (940, 1, 852, 'forma');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (941, 1, 852, 'gates');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (942, 1, 852, 'lenguaje');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (943, 1, 852, 'oficina');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (944, 1, 852, 'compania');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (945, 1, 852, 'maquina');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (946, 2, 852, 'lenguajes');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (947, 1, 852, 'expresiones');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (948, 1, 852, 'fisicos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (949, 1, 852, 'ano');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (950, 1, 852, 'ordenador');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (951, 1, 852, 'mundo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (952, 1, 852, 'abarca');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (953, 1, 852, 'convertido');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (954, 1, 852, 'control');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (955, 1, 852, 'calculo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (956, 1, 852, 'tareas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (957, 1, 852, 'windows');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (958, 1, 852, 'grande');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (959, 1, 852, 'considera');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (960, 1, 852, 'funcionar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (961, 1, 852, 'sistemas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (962, 3, 852, 'programas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (963, 1, 852, 'importantes');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (964, 2, 852, 'base');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (966, 2, 965, 'vivienda');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (967, 1, 965, 'damnificados');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (968, 1, 965, 'millon');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (969, 1, 965, 'proteccion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (970, 1, 965, 'armadas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (971, 1, 965, 'ninos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (972, 1, 965, 'inicio');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (973, 1, 965, 'programa');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (974, 2, 965, 'toda');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (975, 1, 965, 'posible');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (976, 1, 965, 'recuperar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (977, 1, 965, 'hablen');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (978, 1, 965, 'balance');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (979, 1, 965, 'perdieran');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (980, 1, 965, 'planifico');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (981, 1, 965, 'amigos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (982, 1, 965, 'simultaneo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (983, 1, 965, 'orden');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (984, 1, 965, 'febrero');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (985, 1, 965, 'hemos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (986, 1, 965, 'sociedad');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (987, 1, 965, 'crear');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (988, 3, 965, 'servicios');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (989, 1, 965, 'tradicion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (990, 1, 965, 'colaboracion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (991, 1, 965, 'etapas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (992, 1, 965, 'integramente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (993, 1, 965, 'oportuna');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (994, 2, 965, 'reconstruccion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (995, 1, 965, 'ello');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (996, 1, 965, 'acceso');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (997, 1, 965, 'perdieron');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (998, 1, 965, 'mejorar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (999, 2, 965, 'fuerza');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1000, 2, 965, 'conectividad');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1001, 4, 965, 'mil');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1002, 1, 965, 'balances');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1003, 1, 965, 'restablecer');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1004, 2, 965, 'hoy');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1005, 1, 965, 'naturaleza');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1006, 1, 965, 'civil');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1007, 1, 965, 'encuentre');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1008, 1, 965, 'rendir');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1009, 3, 965, 'invierno');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1010, 1, 965, 'cuentasqueridos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1011, 1, 965, 'semana');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1012, 1, 965, 'familias');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1013, 1, 965, 'inmediata');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1014, 1, 965, 'vengo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1015, 1, 965, 'escuelas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1016, 1, 965, 'paises');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1017, 1, 965, 'contamos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1018, 1, 965, 'salud');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1019, 1, 965, 'digno');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1020, 1, 965, 'obra');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1021, 1, 965, 'cada');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1022, 1, 965, 'elocuencia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1023, 1, 965, 'tiempo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1024, 1, 965, 'llamado');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1025, 1, 965, 'economia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1026, 1, 965, 'escolar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1027, 1, 965, 'entregamos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1028, 1, 965, 'fisica');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1029, 1, 965, 'dispuesto');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1030, 1, 965, 'construccion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1031, 1, 965, 'voluntarios');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1032, 1, 965, 'vino');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1033, 1, 965, 'ordena');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1034, 1, 965, 'volcamos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1035, 2, 965, 'lluvias');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1036, 1, 965, 'enfrentar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1037, 1, 965, 'recuperamos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1038, 1, 965, 'viviendas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1039, 1, 965, 'manos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1040, 1, 965, 'permitio');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1041, 1, 965, 'tres');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1042, 1, 965, 'materiales');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1043, 1, 965, 'beneficiara');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1044, 1, 965, 'constitucion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1045, 1, 965, 'enfermedades');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1046, 1, 965, 'acceda');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1047, 1, 965, 'brindar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1048, 1, 965, 'energia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1049, 1, 965, 'compatriotas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1050, 1, 965, 'trajera');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1051, 1, 965, 'hechos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1052, 1, 965, 'basicos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1053, 1, 965, 'comunicacion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1054, 1, 965, 'primero');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1055, 2, 965, 'frio');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1056, 1, 965, 'volvio');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1057, 1, 965, 'oportuno');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1058, 1, 965, 'terrestre');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1059, 1, 965, 'distinta');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1060, 1, 965, 'miles');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1061, 1, 965, 'restablecimos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1062, 1, 965, 'enfrento');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1063, 1, 965, 'abastecimiento');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1064, 1, 965, 'establece');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1065, 1, 965, 'empleos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1066, 1, 965, 'fuerzas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1067, 1, 965, 'reponer');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1068, 1, 965, 'cuenta');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1069, 1, 965, 'pesos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1070, 1, 965, 'implemento');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1071, 1, 965, 'publico');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1072, 1, 965, 'crecer');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1073, 1, 965, 'ano');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1074, 1, 965, 'esfuerzo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1075, 2, 965, 'pais');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1076, 1, 965, 'republicana');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1077, 1, 965, 'recursos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1078, 1, 965, 'rendicion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1079, 1, 965, 'familia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1080, 4, 965, 'emergencia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1082, 1, 1081, 'damnificados');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1083, 1, 1081, 'millon');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1084, 2, 1081, 'estaran');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1085, 1, 1081, 'responsablemente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1086, 1, 1081, 'chilenas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1087, 1, 1081, 'semanas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1088, 1, 1081, 'habran');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1089, 1, 1081, 'posible');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1090, 1, 1081, 'terminar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1091, 2, 1081, 'entregado');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1092, 1, 1081, 'destruyeron');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1093, 3, 1081, 'terremoto');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1094, 1, 1081, 'febrero');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1095, 3, 1081, 'hemos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1096, 1, 1081, 'aumentando');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1097, 2, 1081, 'habitacionales');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1098, 2, 1081, 'dijimos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1099, 1, 1081, 'estamos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1100, 1, 1081, 'avance');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1101, 1, 1081, 'fines');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1102, 1, 1081, 'obras');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1103, 1, 1081, 'marzo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1104, 3, 1081, 'reconstruccion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1105, 2, 1081, 'subsidios');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1106, 2, 1081, 'gobierno');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1107, 1, 1081, 'permanente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1108, 3, 1081, 'mitad');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1109, 1, 1081, 'notable');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1110, 2, 1081, 'comprometidos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1111, 1, 1081, 'proyectos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1112, 1, 1081, 'beneficiando');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1113, 1, 1081, 'danaron');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1114, 1, 1081, 'hacer');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1115, 10, 1081, 'mil');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1116, 1, 1081, 'hoy');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1117, 1, 1081, 'colegios');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1118, 2, 1081, 'terminadas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1119, 1, 1081, 'invierno');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1120, 1, 1081, 'tuviesen');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1121, 1, 1081, 'cumplida');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1122, 1, 1081, 'casas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1123, 2, 1081, 'familias');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1124, 2, 1081, 'escuelas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1125, 1, 1081, 'recibido');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1126, 1, 1081, 'establecimientos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1127, 1, 1081, 'trabajado');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1128, 1, 1081, 'destruidos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1129, 1, 1081, 'habremos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1130, 1, 1081, 'cada');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1131, 1, 1081, 'significativamente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1132, 1, 1081, 'regiones');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1133, 1, 1081, 'catorce');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1134, 1, 1081, 'duraria');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1135, 1, 1081, 'estado');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1136, 1, 1081, 'maremoto');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1137, 1, 1081, 'reconstruido');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1138, 1, 1081, 'seguiremos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1139, 1, 1081, 'queda');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1140, 1, 1081, 'tarea');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1141, 2, 1081, 'viviendas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1142, 1, 1081, 'tragico');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1143, 2, 1081, 'soluciones');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1144, 1, 1081, 'definitiva');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1145, 1, 1081, 'devastador');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1146, 1, 1081, 'reparado');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1147, 1, 1081, 'hogar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1148, 1, 1081, 'afectadas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1149, 1, 1081, 'poco');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1150, 1, 1081, 'requeriria');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1151, 2, 1081, 'definitivas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1152, 2, 1081, 'ciento');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1153, 2, 1081, 'cuatro');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1154, 1, 1081, 'todas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1155, 1, 1081, 'campo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1156, 1, 1081, 'alcanzan');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1157, 1, 1081, 'entregados');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1158, 1, 1081, 'iniciados');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1159, 1, 1081, 'aldeas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1160, 1, 1081, 'viven');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1161, 2, 1081, 'trabajando');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1162, 1, 1081, 'nuevas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1163, 1, 1081, 'alumnos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1164, 1, 1081, 'desgraciadamente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1165, 1, 1081, 'gustaria');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1166, 1, 1081, 'diez');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1167, 1, 1081, 'mes');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1168, 1, 1081, 'represento');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1169, 2, 1081, 'ano');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1170, 2, 1081, 'meses');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1171, 1, 1081, 'danados');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1172, 1, 1081, 'magnitud');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1173, 1, 1081, 'educacionales');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1174, 1, 1081, 'puedo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1175, 1, 1081, 'esfuerzo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1176, 1, 1081, 'inician');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1177, 1, 1081, 'pais');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1178, 1, 1081, 'informar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1179, 1, 1081, 'descanso');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1180, 1, 1081, 'falta');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1181, 1, 1081, 'iniciadas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1182, 1, 1081, 'educacion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1183, 1, 1081, 'anos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1184, 1, 1081, 'entregadas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1186, 1, 1185, 'armadas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1187, 1, 1185, 'necesarios');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1188, 1, 1185, 'cumplir');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1189, 1, 1185, 'aguas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1190, 1, 1185, 'programa');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1191, 1, 1185, 'sufriendo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1192, 2, 1185, 'grandes');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1193, 1, 1185, 'putaendo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1194, 1, 1185, 'seguir');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1195, 1, 1185, 'asegurar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1196, 1, 1185, 'febrero');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1197, 1, 1185, 'ley');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1198, 1, 1185, 'plenitud');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1199, 1, 1185, 'responsabilidad');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1200, 1, 1185, 'chillan');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1201, 1, 1185, 'vamos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1202, 1, 1185, 'generosidad');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1203, 1, 1185, 'personas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1204, 1, 1185, 'ultima');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1205, 1, 1185, 'importante');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1206, 3, 1185, 'estamos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1207, 1, 1185, 'actualidad');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1208, 1, 1185, 'colaboracion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1209, 1, 1185, 'enviamos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1210, 1, 1185, 'paso');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1211, 1, 1185, 'oportuna');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1212, 1, 1185, 'insustituible');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1213, 1, 1185, 'riesgos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1214, 1, 1185, 'preparados');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1215, 1, 1185, 'destruido');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1216, 1, 1185, 'dotada');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1217, 1, 1185, 'gobierno');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1218, 1, 1185, 'concesionada');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1219, 1, 1185, 'ello');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1220, 1, 1185, 'perdieron');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1221, 1, 1185, 'vida');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1222, 1, 1185, 'excepcion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1223, 2, 1185, 'hospitales');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1224, 2, 1185, 'proyecto');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1225, 1, 1185, 'sea');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1226, 1, 1185, 'destruida');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1227, 1, 1185, 'concluir');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1228, 1, 1185, 'mil');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1229, 2, 1185, 'civil');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1230, 1, 1185, 'hualane');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1231, 1, 1185, 'rendir');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1232, 1, 1185, 'seguridad');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1233, 1, 1185, 'familias');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1234, 1, 1185, 'inmediata');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1235, 1, 1185, 'encuentra');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1236, 1, 1185, 'creada');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1237, 1, 1185, 'incluidos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1238, 1, 1185, 'salud');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1239, 1, 1185, 'llevan');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1240, 2, 1185, 'necesario');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1241, 1, 1185, 'ocurre');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1242, 1, 1185, 'desafios');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1243, 1, 1185, 'juzgara');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1244, 1, 1185, 'semestre');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1245, 1, 1185, 'aerodromos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1246, 2, 1185, 'compromisos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1247, 2, 1185, 'chilenos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1248, 1, 1185, 'realizando');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1249, 1, 1185, 'planteamos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1250, 1, 1185, 'rural');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1251, 1, 1185, 'campanas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1252, 1, 1185, 'juan');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1253, 1, 1185, 'logros');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1254, 1, 1185, 'humanos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1255, 1, 1185, 'lluvias');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1256, 1, 1185, 'equipamiento');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1257, 1, 1185, 'manos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1258, 1, 1185, 'beneficiaran');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1259, 1, 1185, 'comprometimos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1260, 1, 1185, 'cambio');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1261, 1, 1185, 'sino');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1262, 1, 1185, 'llacolen');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1263, 1, 1185, 'cauquenes');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1264, 1, 1185, 'concretos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1265, 3, 1185, 'compatriotas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1266, 7, 1185, 'ciento');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1267, 2, 1185, 'talca');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1268, 1, 1185, 'felix');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1269, 2, 1185, 'vidas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1270, 1, 1185, 'buenas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1271, 1, 1185, 'portuaria');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1272, 1, 1185, 'inspiran');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1273, 1, 1185, 'chile');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1274, 1, 1185, 'trabajando');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1275, 1, 1185, 'tenemos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1276, 1, 1185, 'aeropuertos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1277, 1, 1185, 'llegando');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1278, 1, 1185, 'pabellones');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1279, 1, 1185, 'quisiera');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1280, 2, 1185, 'onemi');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1281, 1, 1185, 'acelerada');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1282, 1, 1185, 'miles');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1283, 1, 1185, 'entregaremos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1284, 1, 1185, 'caminos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1285, 2, 1185, 'publica');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1286, 1, 1185, 'asumir');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1287, 1, 1185, 'externo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1288, 1, 1185, 'plazos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1289, 1, 1185, 'nueve');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1290, 1, 1185, 'eficacia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1291, 1, 1185, 'inutilizado');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1292, 1, 1185, 'medico');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1293, 1, 1185, 'generacion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1294, 1, 1185, 'incluye');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1295, 1, 1185, 'constitucional');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1296, 1, 1185, 'entrenamiento');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1297, 1, 1185, 'proteccion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1298, 1, 1185, 'memoria');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1299, 3, 1185, 'siete');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1300, 1, 1185, 'intenciones');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1301, 2, 1185, 'bio');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1302, 2, 1185, 'congreso');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1303, 1, 1185, 'participacion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1304, 1, 1185, 'segundo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1305, 1, 1185, 'antigua');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1306, 2, 1185, 'balance');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1307, 1, 1185, 'resultados');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1308, 1, 1185, 'publicos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1309, 1, 1185, 'rio');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1310, 1, 1185, 'orden');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1311, 1, 1185, 'impedir');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1312, 2, 1185, 'hemos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1313, 1, 1185, 'agua');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1314, 1, 1185, 'metas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1315, 1, 1185, 'canales');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1316, 1, 1185, 'interno');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1317, 1, 1185, 'operativa');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1318, 1, 1185, 'vuelva');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1319, 1, 1185, 'crear');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1320, 1, 1185, 'incansablemente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1321, 1, 1185, 'sintiendo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1322, 1, 1185, 'tecnologia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1323, 1, 1185, 'pleno');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1324, 1, 1185, 'perder');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1325, 1, 1185, 'santiago');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1326, 2, 1185, 'poblacion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1327, 1, 1185, 'agradecer');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1328, 2, 1185, 'reconstruccion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1329, 1, 1185, 'danada');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1330, 1, 1185, 'gobiernohace');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1331, 1, 1185, 'nobleza');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1332, 1, 1185, 'tempranas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1333, 1, 1185, 'kms');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1334, 1, 1185, 'establecimos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1335, 1, 1185, 'pedimos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1336, 1, 1185, 'naturaleza');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1337, 1, 1185, 'millones');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1338, 1, 1185, 'testimonio');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1339, 1, 1185, 'bulnes');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1340, 1, 1185, 'asumiriamos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1341, 1, 1185, 'recuperada');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1342, 2, 1185, 'recuperado');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1343, 1, 1185, 'cultura');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1344, 1, 1185, 'reconocer');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1345, 1, 1185, 'preparada');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1346, 1, 1185, 'parral');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1347, 1, 1185, 'concretar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1348, 1, 1185, 'embalses');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1349, 1, 1185, 'construccion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1350, 1, 1185, 'estado');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1351, 1, 1185, 'especialmente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1352, 1, 1185, 'instituciones');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1353, 1, 1185, 'pablo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1354, 1, 1185, 'solidarizar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1355, 1, 1185, 'colectores');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1356, 1, 1185, 'dar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1357, 1, 1185, 'solida');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1358, 1, 1185, 'tres');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1359, 1, 1185, 'potable');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1360, 3, 1185, 'infraestructura');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1361, 2, 1185, 'mision');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1362, 2, 1185, 'proteger');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1363, 1, 1185, 'honrar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1364, 1, 1185, 'curico');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1365, 1, 1185, 'alertas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1366, 1, 1185, 'prevencion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1367, 1, 1185, 'reemplazara');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1368, 1, 1185, 'dieron');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1369, 1, 1185, 'nacional');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1370, 1, 1185, 'agencia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1371, 2, 1185, 'desafio');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1372, 1, 1185, 'fuerzas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1373, 1, 1185, 'puentes');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1374, 1, 1185, 'cuenta');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1375, 1, 1185, 'pueblo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1376, 1, 1185, 'ayudarlos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1377, 1, 1185, 'deber');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1378, 1, 1185, 'decretar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1379, 1, 1185, 'puente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1380, 1, 1185, 'camas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1381, 1, 1185, 'ano');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1382, 1, 1185, 'minuto');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1383, 1, 1185, 'meses');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1384, 1, 1185, 'puedo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1385, 1, 1185, 'esfuerzo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1386, 1, 1185, 'masivas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1387, 1, 1185, 'estara');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1388, 1, 1185, 'considera');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1389, 1, 1185, 'ayuda');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1390, 1, 1185, 'sistemas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1391, 1, 1185, 'educacion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1392, 1, 1185, 'recursos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1393, 1, 1185, 'estaba');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1394, 1, 1185, 'golpearnos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1396, 1, 1395, 'conocimiento');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1397, 1, 1395, 'doce');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1398, 1, 1395, 'economicos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1399, 1, 1395, 'cumplir');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1400, 1, 1395, 'latina');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1401, 1, 1395, 'gobiernos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1402, 1, 1395, 'fin');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1403, 1, 1395, 'perfeccionar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1404, 1, 1395, 'mejora');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1405, 1, 1395, 'recuperar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1406, 1, 1395, 'verdaderos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1407, 1, 1395, 'mantener');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1408, 2, 1395, 'sectores');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1409, 1, 1395, 'dolares');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1410, 1, 1395, 'gente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1411, 1, 1395, 'laboral');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1412, 1, 1395, 'terremoto');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1413, 1, 1395, 'devastadores');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1414, 1, 1395, 'rangos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1415, 1, 1395, 'tomando');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1416, 1, 1395, 'responsabilidad');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1417, 2, 1395, 'persona');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1418, 1, 1395, 'lanzar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1419, 1, 1395, 'salarios');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1420, 1, 1395, 'exportaciones');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1421, 1, 1395, 'caida');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1422, 1, 1395, 'defensa');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1423, 1, 1395, 'competitivo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1424, 1, 1395, 'poderosos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1425, 1, 1395, 'muchos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1426, 2, 1395, 'ultima');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1427, 1, 1395, 'impulso');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1428, 2, 1395, 'importante');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1429, 1, 1395, 'revertir');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1430, 1, 1395, 'conscientes');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1431, 3, 1395, 'estamos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1432, 2, 1395, 'meta');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1433, 1, 1395, 'timbres');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1434, 2, 1395, 'angustia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1435, 1, 1395, 'interes');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1436, 1, 1395, 'motor');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1437, 4, 1395, 'gobierno');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1438, 1, 1395, 'numero');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1439, 1, 1395, 'ubica');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1440, 1, 1395, 'vida');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1441, 1, 1395, 'consideraron');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1442, 1, 1395, 'medidas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1443, 2, 1395, 'mitad');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1444, 1, 1395, 'crecimientorecuperar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1445, 1, 1395, 'objetivo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1446, 2, 1395, 'mil');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1447, 1, 1395, 'abuso');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1448, 1, 1395, 'conjunto');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1449, 2, 1395, 'crecio');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1450, 1, 1395, 'golpeando');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1451, 1, 1395, 'justos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1452, 1, 1395, 'venia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1453, 2, 1395, 'ultimos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1454, 1, 1395, 'afecta');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1455, 1, 1395, 'cualquier');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1456, 1, 1395, 'familiar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1457, 2, 1395, 'derechos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1458, 1, 1395, 'paises');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1459, 1, 1395, 'estampillas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1460, 1, 1395, 'crecieron');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1461, 1, 1395, 'necesario');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1462, 2, 1395, 'impuesto');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1463, 1, 1395, 'juntos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1464, 1, 1395, 'duplicando');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1465, 1, 1395, 'destaco');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1466, 1, 1395, 'adicionalmente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1467, 1, 1395, 'compromisos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1468, 1, 1395, 'remunerados');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1469, 1, 1395, 'chilenos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1470, 1, 1395, 'enorme');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1471, 1, 1395, 'maremoto');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1472, 2, 1395, 'inflacion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1473, 1, 1395, 'ambiciosa');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1474, 2, 1395, 'reales');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1475, 1, 1395, 'logros');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1476, 1, 1395, 'arena');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1477, 1, 1395, 'cientos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1478, 1, 1395, 'lastre');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1479, 1, 1395, 'primeros');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1480, 1, 1395, 'reformas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1481, 1, 1395, 'imposible');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1482, 1, 1395, 'alegria');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1483, 1, 1395, 'avanzando');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1484, 1, 1395, 'aceptables');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1485, 1, 1395, 'cambio');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1486, 1, 1395, 'bolsillo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1487, 2, 1395, 'sino');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1488, 8, 1395, 'crecimiento');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1489, 1, 1395, 'potenciar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1490, 5, 1395, 'ciento');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1491, 1, 1395, 'consumo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1492, 1, 1395, 'exige');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1493, 1, 1395, 'potencial');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1494, 1, 1395, 'logramos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1495, 1, 1395, 'reducciones');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1496, 1, 1395, 'cantidad');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1497, 2, 1395, 'chile');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1498, 1, 1395, 'construido');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1499, 1, 1395, 'alza');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1500, 1, 1395, 'empleo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1501, 2, 1395, 'trabajadores');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1502, 1, 1395, 'modernizando');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1503, 1, 1395, 'significa');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1504, 1, 1395, 'sueldos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1505, 1, 1395, 'cesante');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1506, 2, 1395, 'trabajos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1507, 1, 1395, 'dignidad');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1508, 2, 1395, 'gasto');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1509, 2, 1395, 'clase');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1510, 1, 1395, 'miles');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1511, 2, 1395, 'alcanzando');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1512, 1, 1395, 'internacionales');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1513, 2, 1395, 'central');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1514, 3, 1395, 'empleos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1515, 1, 1395, 'respeten');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1516, 1, 1395, 'privado');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1517, 1, 1395, 'publico');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1518, 1, 1395, 'mostrando');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1519, 2, 1395, 'historia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1520, 1, 1395, 'iniciar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1521, 1, 1395, 'pobreza');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1522, 1, 1395, 'desempleada');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1523, 2, 1395, 'recuperacion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1524, 1, 1395, 'austeridad');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1525, 1, 1395, 'sentimos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1526, 2, 1395, 'precios');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1527, 1, 1395, 'emprendedores');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1528, 1, 1395, 'buenos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1529, 2, 1395, 'anos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1530, 1, 1395, 'renovables');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1531, 1, 1395, 'respetuoso');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1532, 1, 1395, 'familia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1533, 1, 1395, 'fiscalizadores');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1534, 1, 1395, 'profundamente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1535, 1, 1395, 'seguro');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1536, 2, 1395, 'millon');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1537, 1, 1395, 'inagotables');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1538, 1, 1395, 'quiero');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1539, 2, 1395, 'ritmo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1540, 1, 1395, 'productividad');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1541, 1, 1395, 'america');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1542, 1, 1395, 'sustentable');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1543, 1, 1395, 'haber');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1544, 1, 1395, 'instrumento');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1545, 1, 1395, 'tener');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1546, 1, 1395, 'derrotar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1547, 1, 1395, 'hemos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1548, 1, 1395, 'quince');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1549, 1, 1395, 'acabamos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1550, 1, 1395, 'incentivos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1551, 1, 1395, 'sabe');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1552, 1, 1395, 'necesariamente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1553, 1, 1395, 'podido');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1554, 1, 1395, 'sociedad');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1555, 1, 1395, 'cuyo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1556, 2, 1395, 'banco');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1557, 1, 1395, 'vuelva');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1558, 5, 1395, 'crear');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1559, 1, 1395, 'extraordinariamente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1560, 1, 1395, 'tecnologia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1561, 1, 1395, 'beneficio');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1562, 1, 1395, 'sindicales');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1563, 1, 1395, 'ciencia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1564, 1, 1395, 'desarrollada');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1565, 2, 1395, 'decada');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1566, 1, 1395, 'nuevamente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1567, 1, 1395, 'petroleo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1568, 1, 1395, 'instrucciones');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1569, 1, 1395, 'periodo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1570, 1, 1395, 'ambiente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1571, 2, 1395, 'pues');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1572, 3, 1395, 'traves');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1573, 2, 1395, 'cifra');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1574, 2, 1395, 'tasa');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1575, 1, 1395, 'reinvertidas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1576, 1, 1395, 'pymes');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1577, 1, 1395, 'incrementar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1578, 1, 1395, 'deje');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1579, 1, 1395, 'confianza');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1580, 1, 1395, 'era');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1581, 2, 1395, 'vulnerables');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1582, 1, 1395, 'fomentar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1583, 1, 1395, 'millones');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1584, 2, 1395, 'efectos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1585, 2, 1395, 'capacidad');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1586, 1, 1395, 'particularmente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1587, 2, 1395, 'audaz');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1588, 1, 1395, 'ocde');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1589, 1, 1395, 'duplicara');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1590, 1, 1395, 'actuado');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1591, 1, 1395, 'resiente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1592, 3, 1395, 'agenda');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1593, 1, 1395, 'mujeres');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1594, 1, 1395, 'roca');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1595, 1, 1395, 'contamos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1596, 1, 1395, 'instrumentos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1597, 1, 1395, 'oportunidad');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1598, 1, 1395, 'corrientes');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1599, 1, 1395, 'detener');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1600, 1, 1395, 'economia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1601, 1, 1395, 'laborales');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1602, 1, 1395, 'fijamos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1603, 1, 1395, 'vivieron');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1604, 1, 1395, 'genera');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1605, 1, 1395, 'estado');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1606, 2, 1395, 'especialmente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1607, 1, 1395, 'seguiremos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1608, 3, 1395, 'trabajo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1609, 2, 1395, 'emprendimiento');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1610, 1, 1395, 'desesperada');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1611, 1, 1395, 'informacion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1612, 1, 1395, 'pesar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1613, 2, 1395, 'anual');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1614, 1, 1395, 'efecto');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1615, 2, 1395, 'tan');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1616, 2, 1395, 'terminos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1617, 1, 1395, 'macroeconomica');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1618, 1, 1395, 'reduccion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1619, 1, 1395, 'aumentado');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1620, 1, 1395, 'direccion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1621, 1, 1395, 'solido');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1622, 1, 1395, 'inflexibles');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1623, 2, 1395, 'queremos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1624, 1, 1395, 'financiar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1625, 1, 1395, 'evitar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1626, 1, 1395, 'utilidades');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1627, 2, 1395, 'promedio');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1628, 1, 1395, 'creciendo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1629, 1, 1395, 'trato');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1630, 1, 1395, 'alto');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1631, 2, 1395, 'media');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1632, 2, 1395, 'forma');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1633, 1, 1395, 'fijarnos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1634, 1, 1395, 'torno');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1635, 2, 1395, 'principal');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1636, 2, 1395, 'inversion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1637, 1, 1395, 'perdida');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1638, 1, 1395, 'justicia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1639, 1, 1395, 'deben');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1640, 1, 1395, 'aporta');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1641, 1, 1395, 'coalicion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1642, 1, 1395, 'registrado');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1643, 3, 1395, 'ano');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1644, 2, 1395, 'social');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1645, 1, 1395, 'dado');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1646, 1, 1395, 'eliminacion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1647, 1, 1395, 'meses');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1648, 1, 1395, 'profunda');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1649, 1, 1395, 'innovacion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1650, 1, 1395, 'poder');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1651, 1, 1395, 'esfuerzo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1652, 3, 1395, 'oportunidades');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1653, 1, 1395, 'politica');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1654, 1, 1395, 'empleoshablar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1655, 2, 1395, 'alta');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1656, 1, 1395, 'economico');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1657, 1, 1395, 'materia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1658, 1, 1395, 'anteriores');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1659, 2, 1395, 'recursos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1660, 1, 1395, 'sufre');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1661, 1, 1395, 'terreno');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1662, 1, 1395, 'alimentos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1663, 1, 1395, 'calidad');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1665, 1, 1664, 'compromiso');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1666, 2, 1664, 'armas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1667, 1, 1664, 'habitantes');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1668, 1, 1664, 'latina');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1669, 1, 1664, 'vivian');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1670, 1, 1664, 'aumento');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1671, 1, 1664, 'siento');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1672, 1, 1664, 'comercial');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1673, 1, 1664, 'hogares');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1674, 1, 1664, 'sectores');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1675, 1, 1664, 'gente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1676, 3, 1664, 'laboral');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1677, 1, 1664, 'empezo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1678, 1, 1664, 'rabia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1679, 1, 1664, 'ley');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1680, 1, 1664, 'acompanadas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1681, 1, 1664, 'victima');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1682, 2, 1664, 'modelo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1683, 2, 1664, 'delincuencia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1684, 5, 1664, 'estamos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1685, 2, 1664, 'meta');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1686, 1, 1664, 'asumido');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1687, 1, 1664, 'situacion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1688, 1, 1664, 'pequenas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1689, 1, 1664, 'angustia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1690, 1, 1664, 'seguian');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1691, 4, 1664, 'gobierno');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1692, 1, 1664, 'acceso');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1693, 4, 1664, 'vida');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1694, 1, 1664, 'estrategica');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1695, 1, 1664, 'proyecto');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1696, 1, 1664, 'batalla');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1697, 2, 1664, 'policias');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1698, 1, 1664, 'proyectos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1699, 2, 1664, 'interior');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1700, 7, 1664, 'mil');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1701, 1, 1664, 'nominal');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1702, 1, 1664, 'logrado');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1703, 1, 1664, 'modifican');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1704, 1, 1664, 'muchas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1705, 1, 1664, 'capacitamos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1706, 8, 1664, 'seguridad');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1707, 1, 1664, 'firmaremos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1708, 1, 1664, 'mano');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1709, 1, 1664, 'automoviles');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1710, 1, 1664, 'estrecha');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1711, 3, 1664, 'familias');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1712, 1, 1664, 'profesionales');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1713, 2, 1664, 'temor');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1714, 1, 1664, 'crecieron');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1715, 1, 1664, 'obligaran');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1716, 1, 1664, 'legales');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1717, 1, 1664, 'empresas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1718, 1, 1664, 'chilenos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1719, 3, 1664, 'drogas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1720, 1, 1664, 'profugos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1721, 2, 1664, 'cinco');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1722, 1, 1664, 'protocolo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1723, 1, 1664, 'primeros');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1724, 1, 1664, 'reformas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1725, 1, 1664, 'transformado');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1726, 1, 1664, 'avanzando');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1727, 1, 1664, 'reforman');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1728, 1, 1664, 'concretos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1729, 1, 1664, 'creamos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1730, 2, 1664, 'paz');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1731, 1, 1664, 'planes');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1732, 2, 1664, 'compatriotas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1733, 4, 1664, 'ciento');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1734, 2, 1664, 'ciudadanos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1735, 1, 1664, 'cuatro');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1736, 1, 1664, 'dura');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1737, 1, 1664, 'consumo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1738, 1, 1664, 'aprobamos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1739, 2, 1664, 'vidas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1740, 1, 1664, 'sana');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1741, 3, 1664, 'delitos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1742, 1, 1664, 'entidades');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1743, 1, 1664, 'apoyo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1744, 1, 1664, 'capacitar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1745, 3, 1664, 'chile');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1746, 1, 1664, 'ilegal');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1747, 1, 1664, 'cayeron');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1748, 4, 1664, 'trabajadores');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1749, 1, 1664, 'nuevos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1750, 1, 1664, 'significa');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1751, 1, 1664, 'cambiando');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1752, 1, 1664, 'clase');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1753, 2, 1664, 'enviaremos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1754, 1, 1664, 'fiscalizacion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1755, 1, 1664, 'implementamos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1756, 1, 1664, 'delincuentes');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1757, 1, 1664, 'termino');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1758, 1, 1664, 'mayores');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1759, 1, 1664, 'ciudades');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1760, 1, 1664, 'ministerio');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1761, 1, 1664, 'delito');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1762, 1, 1664, 'reducir');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1763, 1, 1664, 'publica');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1764, 1, 1664, 'historia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1765, 1, 1664, 'barrio');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1766, 1, 1664, 'recuperacion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1767, 1, 1664, 'exigentes');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1768, 1, 1664, 'grande');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1769, 2, 1664, 'pais');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1770, 2, 1664, 'pusimos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1771, 1, 1664, 'medianas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1772, 1, 1664, 'pdi');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1773, 1, 1664, 'niveles');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1774, 1, 1664, 'incluyen');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1775, 1, 1664, 'defensoria');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1776, 1, 1664, 'constitucional');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1777, 1, 1664, 'plena');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1778, 1, 1664, 'seguro');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1779, 1, 1664, 'millon');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1780, 1, 1664, 'proximamente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1781, 2, 1664, 'jovenes');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1782, 1, 1664, 'completo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1783, 1, 1664, 'sistema');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1784, 3, 1664, 'victimas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1785, 1, 1664, 'estaran');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1786, 1, 1664, 'ninos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1787, 1, 1664, 'congreso');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1788, 1, 1664, 'fuego');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1789, 1, 1664, 'participacion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1790, 1, 1664, 'robados');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1791, 1, 1664, 'america');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1792, 1, 1664, 'incautacion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1793, 1, 1664, 'resultados');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1794, 1, 1664, 'dejaron');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1795, 2, 1664, 'hemos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1796, 1, 1664, 'plan');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1797, 1, 1664, 'quince');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1798, 1, 1664, 'aumentando');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1799, 1, 1664, 'metas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1800, 1, 1664, 'van');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1801, 1, 1664, 'superintendencia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1802, 1, 1664, 'organizaciones');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1803, 1, 1664, 'decomiso');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1804, 2, 1664, 'protegiendo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1805, 1, 1664, 'sindicales');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1806, 1, 1664, 'avance');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1807, 1, 1664, 'convertir');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1808, 1, 1664, 'operar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1809, 2, 1664, 'incautamos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1810, 1, 1664, 'empezar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1811, 1, 1664, 'relacion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1812, 1, 1664, 'inocente');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1813, 1, 1664, 'ciudadana');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1814, 1, 1664, 'mayoria');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1815, 3, 1664, 'narcotrafico');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1816, 1, 1664, 'salvar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1817, 1, 1664, 'vulnerables');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1818, 1, 1664, 'instaurar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1819, 1, 1664, 'millones');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1820, 1, 1664, 'deficit');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1821, 1, 1664, 'existe');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1822, 1, 1664, 'cuadrante');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1823, 1, 1664, 'mujeres');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1824, 1, 1664, 'conocemos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1825, 2, 1664, 'cultura');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1826, 4, 1664, 'cada');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1827, 2, 1664, 'reforma');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1828, 1, 1664, 'catorce');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1829, 1, 1664, 'implementando');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1830, 1, 1664, 'transcurrido');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1831, 1, 1664, 'superar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1832, 3, 1664, 'trabajo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1833, 1, 1664, 'empleadores');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1834, 1, 1664, 'salvando');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1835, 1, 1664, 'droga');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1836, 1, 1664, 'dan');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1837, 3, 1664, 'tres');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1838, 1, 1664, 'ver');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1839, 1, 1664, 'disminuir');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1840, 1, 1664, 'arma');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1841, 1, 1664, 'autoevaluaciones');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1842, 1, 1664, 'todas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1843, 1, 1664, 'remuneraciones');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1844, 1, 1664, 'detectives');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1845, 1, 1664, 'decretos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1846, 1, 1664, 'destruyendo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1847, 1, 1664, 'carabineros');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1848, 1, 1664, 'efectivos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1849, 1, 1664, 'detencion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1850, 1, 1664, 'modificaciones');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1851, 1, 1664, 'empresa');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1852, 2, 1664, 'dotacion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1853, 1, 1664, 'llegar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1854, 1, 1664, 'verdadera');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1855, 1, 1664, 'devolver');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1856, 2, 1664, 'prevencion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1857, 1, 1664, 'promedio');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1858, 2, 1664, 'accidentes');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1859, 1, 1664, 'bastan');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1860, 1, 1664, 'media');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1861, 1, 1664, 'alianza');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1862, 1, 1664, 'habian');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1863, 1, 1664, 'diez');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1864, 1, 1664, 'empezamos');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1865, 1, 1664, 'producia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1866, 1, 1664, 'ciudadania');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1867, 2, 1664, 'justicia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1868, 1, 1664, 'residencial');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1869, 1, 1664, 'atrapando');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1870, 1, 1664, 'ganar');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1871, 4, 1664, 'ano');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1872, 1, 1664, 'satisfaccion');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1873, 1, 1664, 'social');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1874, 1, 1664, 'meses');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1875, 1, 1664, 'narcotraficantes');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1876, 1, 1664, 'esfuerzo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1877, 1, 1664, 'poniendo');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1878, 2, 1664, 'marcha');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1879, 1, 1664, 'calles');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1880, 2, 1664, 'programas');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1881, 1, 1664, 'materia');
INSERT INTO public.indice (id_indice, cantidad, n_doc, texto_palabra) VALUES (1882, 1, 1664, 'amigable');


--
-- TOC entry 2810 (class 0 OID 21119)
-- Dependencies: 199
-- Data for Name: palabra; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2819 (class 0 OID 0)
-- Dependencies: 196
-- Name: hibernate_sequence; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.hibernate_sequence', 1882, true);


--
-- TOC entry 2681 (class 2606 OID 21113)
-- Name: documentos documentos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.documentos
    ADD CONSTRAINT documentos_pkey PRIMARY KEY (id_doc);


--
-- TOC entry 2683 (class 2606 OID 21118)
-- Name: indice indice_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.indice
    ADD CONSTRAINT indice_pkey PRIMARY KEY (id_indice);


--
-- TOC entry 2685 (class 2606 OID 21126)
-- Name: palabra palabra_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.palabra
    ADD CONSTRAINT palabra_pkey PRIMARY KEY (id_palabra);


-- Completed on 2019-06-15 04:20:48

--
-- PostgreSQL database dump complete
--

