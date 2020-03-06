-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.45-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema bd_rutacafe
--

CREATE DATABASE IF NOT EXISTS bd_rutacafe;
USE bd_rutacafe;

--
-- Definition of table `tbl_departamentos`
--

DROP TABLE IF EXISTS `tbl_departamentos`;
CREATE TABLE `tbl_departamentos` (
  `iddepartamento` int(11) NOT NULL auto_increment,
  `idtdepart` varchar(30) character set utf8 NOT NULL,
  `nombre` varchar(100) character set utf8 NOT NULL,
  `descripcion` varchar(1000) character set utf8 NOT NULL,
  PRIMARY KEY  (`iddepartamento`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_departamentos`
--

/*!40000 ALTER TABLE `tbl_departamentos` DISABLE KEYS */;
INSERT INTO `tbl_departamentos` (`iddepartamento`,`idtdepart`,`nombre`,`descripcion`) VALUES 
 (1,'DEP01','Matagalpa','El clima fresco propicia el cultivo del café, que aquí tiene uno de sus cunas históricas y que caracteriza tanto la economía como la cultura y la sociedad de estos municipios. Además de las fincas cafetaleras en la zona rural, este rubro se hace evidente en la ciudad y a lo largo del corredor entre Sébaco y Matagalpa, con las estructuras de los beneficios, que son las plantas agroindustriales donde se procesa, selecciona y finalmente despacha el café para la exportación.'),
 (2,'DEP02','Esteli','El Departamento de Estelí está ubicado en la región Norte de Nicaragua y tiene una extensión de 2,230 Km2, con una población de 230 mil habitantes. Se compone de seis municipios que son La Trinidad, San Nicolás, Condega, Pueblo Nuevo y San Juan de Limay además de Estelí, su cabecera departamental. En la actualidad Estelí tiene un lugar importante como centro de servicios y comercio en toda la Región Norte, además de ser el centro nacional de la agroindustria del tabaco, caracterizada por la producción de puros de calidad reconocida a nivel mundial. En particular en Estelí se puede conocer directamente el ciclo de producción e industrialización del tabaco, desde su siembra hasta la fabricación del puro, confeccionado en las mejores empresas productoras ubicadas en los alrededores de la ciudad.'),
 (3,'DEP03','Jinotega','El departamento de Jinotega, con sus 9,222 kilómetros cuadrados, es el departamento más grande a nivel nacional, superado solamente por las dos regiones autónomas del Atlántico. La población residente en el 2010 es de 400 mil habitantes, lo hace el segundo más poblado en el Norte, pero resulta el de menor densidad, por su grande extensión. El territorio departamental se divide en los municipios de Jinotega, San Rafael del Norte, La Concordia, San Sebastian de Yali en el sector sur, Santa María de Pantasma y El Cuá en el centro, Wiwilí y San José de Bocay en el extremo noreste.'),
 (4,'DEP04','Madriz','El de partamento de Madriz se extiende en parte de la región montañosa que limita con la República de Honduras.\nEl paisaje montañoso del departamento se conforma a partir de las pequeñas planicies en donde se asientan Somoto y Palacaguina, rodeados de alturas y cerros, como la serranía de Tepesomoto – La Patasta, hoy área protegida, o el conjunto de El Majaste. El clima en el departamento es subtropical seco con fuertes variaciones en las zonas más altas, que abarcan reductos de nebliselva. Un protagonista del paisaje es sin duda el Río Coco, que nace de la confluencia del río Tapacalí con el hondureño Comalí; ambos se unen en las gargantas del extraordinario Cañón de Namancambre o Somoto, para formar el río más largo de Centro América.'),
 (5,'DEP05','Nueva Segovia','El departamento de Nueva Segovia, con sus casi 3,500 kilómetros cuadrados y 212 mil habitantes, conforma junto a Madriz y Estelí, la Región de ‘’Las Segovias’’. Está caracterizado por su historia colonial y revolucionaria y su variada artesanía, producto de una comunidad indígena activa, en un escenario natural de altas montañas, bellezas paisajísticas y valles productivos.');
/*!40000 ALTER TABLE `tbl_departamentos` ENABLE KEYS */;


--
-- Definition of table `tbl_hoteles`
--

DROP TABLE IF EXISTS `tbl_hoteles`;
CREATE TABLE `tbl_hoteles` (
  `idhotel` int(11) NOT NULL auto_increment,
  `idthotel` varchar(30) character set utf8 NOT NULL,
  `nombre` varchar(100) character set utf8 NOT NULL,
  `direccion` varchar(300) character set utf8 NOT NULL,
  `descripcion` varchar(1000) character set utf8 NOT NULL,
  `iddepartamento` int(11) NOT NULL,
  PRIMARY KEY  (`idhotel`),
  KEY `Ref14` (`iddepartamento`),
  CONSTRAINT `Reftbl_departamentos4` FOREIGN KEY (`iddepartamento`) REFERENCES `tbl_departamentos` (`iddepartamento`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hoteles`
--

/*!40000 ALTER TABLE `tbl_hoteles` DISABLE KEYS */;
INSERT INTO `tbl_hoteles` (`idhotel`,`idthotel`,`nombre`,`direccion`,`descripcion`,`iddepartamento`) VALUES 
 (1,'HOT01','Hotel Matagalpa Inn','Frente a Pollo Estrella Del Tip-Top 50 metros al norte, 61000 Matagalpa, Nicaragua','El Hotel Matagalpa Inn ofrece habitaciones con aire acondicionado en Matagalpa. Cuenta con recepción 24 horas, servicio de habitaciones y WiFi gratuita en todas las instalaciones.',1),
 (2,'HOT02','Hotel Lomas de Santo Thomas','Lomas de san thomas, Matagalpa, Nicaragua','El Hotel Lomas de San Thomas dispone de bar, jardín y terraza en Matagalpa.',1),
 (3,'HOT03','Hotel Vizcaino',' Barrio 5 de Junio Iglesia de guadalupe 1 1/2 cuadra al sur, Matagalpa, Nicaragua','El Hotel Vizcaino se encuentra en Matagalpa y ofrece bar, salón compartido, jardín y WiFi gratuita en todas las instalaciones. Ofrece habitaciones familiares y terraza. Comodo, tranquilo y silencioso.',1),
 (4,'HOT04','Hotel Palmeras de Elim',' Casa Cuna Carlos Fonseca 75 vrs al este Matagalpa, Nicaragua, 61000 Matagalpa, Nicaragua','El Hotel Palmeras de Elim está situado en Matagalpa y dispone de salón compartido, jardín, terraza y WiFi gratuita. El hotel dispone de habitaciones familiares. La ubicación, el personal muy atento, y siempre dispuestos a ayudar ante cualquier consulta, vale la pena ya que son gente muy amable.',1),
 (5,'HOT05','Hotel Roca de la Cumbre','De la Biblioteca del Banco Central, 1 1/2 Cuadras al Este, 61000 Matagalpa, Nicaragua','El Hotel Roca de la Cumbre, situado en Matagalpa, ofrece alojamiento de 4 estrellas con terraza. Este hotel de 4 estrellas ofrece alojamientos con vistas a la ciudad, salón compartido y jardín.',1),
 (6,'HOT06','Hotel Villa Hermosa','Tercera entrada a Matagalpa 1 c. al este y 1/2 c. al sur, frente a Clinica Profamilia, Matagalpa, Nicaragua, 61000 Matagalpa, Nicaragua','El Hotel Villa Hermosa está ubicado en Matagalpa, a 10 km de San Ramón, y dispone de habitaciones con aire acondicionado y WiFi gratuita en todas las dependencias.',1),
 (7,'HOT07','Hotel Mana del Cielo','Calle de los bancos, BANPRO 2 1/2 cuadra al sur., 61000 Matagalpa, Nicaragua','El Hotel Mana Del Cielo se encuentra en Matagalpa y ofrece una terraza.',1),
 (8,'HOT08','Hotel Celerbertti','Calle de Los Bancos, contiguo al MINSA, 13642 Matagalpa, Nicaragua','El Hotel Celebertti se encuentra en Matagalpa y ofrece conexión WiFi gratuita. Cuenta con servicio de conserjería y terraza. Las habitaciones disponen de TV de pantalla plana con canales por cable.',1),
 (9,'HOT09','Hostal La Buena Onda','De la cancha \"El Brigadista\" 2 cuadras y media al Este, 10000 Matagalpa, Nicaragua','Las habitaciones disponen de baño privado. En el Hostal La Buena Onda también hay conexión WiFi gratuita.',1),
 (10,'HOT10','Marias Bed & Breakfast','De BANPRO 1c al este 1/2 c al norte, Matagalpa, Nicaragua','El Marias Bed & Breakfast se encuentra en Matagalpa, a 12 km de San Ramón, y ofrece un salón compartido y WiFi gratuita.',1),
 (11,'HOT11','Hotel Selva Negra','Km 140 Carretera -Jinotega, Matagalpa Nicaragua','Actividades infantiles (Ideal para niños / familias). ',1),
 (12,'HOT12','Hotel Casa Vínculos',' Del Almacén Sony, 1c. y 1/2 al Oeste, Estelí (Nicaragua), Estelí, Nicaragua','El Hotel Casa Vínculos en Estelí tiene un bar y una terraza. También cuenta con cocina compartida, mostrador de información turística y WiFi gratuita en todas las instalaciones.',2),
 (13,'HOT13','Hotel Los Altos Esteli','El Hotel Los Altos Esteli es un hotel boutique situado en el centro de Estelí, a solo 400 metros de la catedral y a unos 200 metros de la calle principal de Estelí.','El Hotel Los Altos Esteli  ofrece habitaciones están equipadas Smart TV de pantalla plana y con servicios de streaming. Las habitaciones incluyen TV de pantalla plana y baño privado con bañera o ducha, artículos de aseo gratuitos y secador de pelo. Además, se proporciona aparcamiento privado y WiFi gratuita. Hay TV vía satélite.',2),
 (14,'HOT14','Hotel Don Vito','Parque Infantil, 1 1/2 CUADRA AL ESTE, 10000 Estelí, Nicaragua','El Hotel Don Vito, situado en Estelí, dispone de jardín y terraza. El establecimiento cuenta con restaurante, recepción 24 horas, servicio de habitaciones y WiFi gratuita en todas las instalaciones.',2),
 (15,'HOT15','Hostal Familiar Ulua','Calle 8 NE Parque infantil 3 1/2 cuadras al este, 31000 Estelí, Nicaragua','A 1 km del centro, El Hostal Familiar Ulua se encuentra en Estelí y ofrece alojamiento con vistas al jardín, salón compartido, jardín y terraza. Hay WiFi gratuita en todas las instalaciones.',2),
 (16,'HOT16','Hotel Azul De La Selva','Parque Infantil, 2c al oeste, 1/2c al norte, Estelí, Nicaragua','A 700 m del centro, El Hotel Azul De La Selva ofrece alojamiento en Estelí. Cuenta con mostrador de información turística y terraza. Hay WiFi gratuita y aparcamiento privado por un suplemento.',2),
 (17,'HOT17','Hostal Mariella','Calle 13 sur oeste Costado sur, Mercado Alfredo Lazo., 31000 Estelí, Nicaragua','El Hostal Mariella se encuentra en Estelí y ofrece conexión WiFi gratuita. El alojamiento dispone de cocina compartida, salón compartido y organización de excursiones.',2),
 (18,'HOT18','Mi Hotelito','De la Optica Munkel 1c y 1/2 al Este, 31000 Estelí, Nicaragua','El Mi Hotelito se encuentra en Estelí y ofrece bar, salón compartido, jardín y WiFi gratuita en todas las instalaciones.',2),
 (19,'HOT19','Hotel Hex Estelí','Km 149 Carretera Panamericana, 050-088-4 Estelí, Nicaragua','El Hotel Hex Estelí, equipado con casino y restaurante, se encuentra en Estelí, a 5 minutos en coche del centro. Se ofrece WiFi gratuita y un desayuno buffet diario gratuito.',2),
 (20,'HOT20','Hotel Los Arcos','Del Costado Noroeste de Catedral, 1/2 cuadra al Norte, 55555 Estelí, Nicaragua','El Hotel Los Arcos se encuentra en Estelí, Nicaragua, y ofrece un restaurante y conexión WiFi gratuita. El estadio de fútbol de la Independencia está a 3 minutos en coche del hotel.',2),
 (21,'HOT21','Hostal Rio Piedra','Avenida 2 SE De la Esquina Sur Este de Catedral 2 Cuadras Hacia el Sur, Estelí, Nicaragua','El Hostal Rio Piedra, situado en Estelí, ofrece una terraza. Este hotel de 3 estrellas cuenta con WiFi gratuita, recepción 24 horas y servicio de habitaciones.',2),
 (22,'HOT22','Hotel Café','Gasolinera Texaco 1calle Oeste 1/2 cuadra al norte, 000-000-0 Jinotega, Nicaragua','El Cafe Hotel se encuentra en pleno centro de la ciudad cafetera de Jinotega y ofrece habitaciones con conexión Wi-Fi gratuita y aire acondicionado.',3),
 (23,'HOT23','Hotel Museo Casa de Los Rizo','Costado Oeste del Parque Central, Jinotega 65000, Jinotega, Nicaragua','El Hotel Museo La Casa de Los Rizo se encuentra en Jinotega y dispone de salón compartido, jardín y terraza.',3),
 (24,'HOT24','Hotel Neblina','Del Restaurante Tip Top 1 Cuadra Al Sur, 1/2 Cuadra Al Oeste, Jinotega, Jinotega','Hotel Neblina se encuentra en Jinotega. Algunos de los lugares más emblemáticos son Catedral de San Juan o Cerro de la Cruz.',3),
 (25,'HOT25','Hotel Sollentuna Hem','Del Parque De La Catedral (68.45 mi)\nJinotega, Jinotega','Somos un hotel ubicado en Jinotega ofreciendo a nuestros huéspedes un caluroso ambiente que les permite sentirse como en casa,visítenos y permitamos servirle.',3),
 (26,'HOT26','Hotel Zoy','De la Gasolinera Puma Central 1c al Este 2 1/2 c al Norte','Las habitaciones disponen de baño privado. También hay conexión WiFi gratuita.',3),
 (27,'HOT27','Hotel Aguas del Arenal','Carretera Matagalpa-Jinotega km. 142.5, entrada a Aranjuez.','Aguas del Arenal te brinda servicios de Hospedaje, Alimentacion (Previa reservación) cafeteria, tours del café y finca ecosostenible, senderismo, Cabalgatas, caminatas y vivero.',3),
 (28,'HOT28','Hotel Colonial Somoto','Calle central reloj publico 50 mts al sur, 34000 Somoto, Nicaragua ','El Hotel Colonial Somoto está situado en Somoto y dispone de restaurante, bar, jardín y terraza. Se ofrece aparcamiento privado por un suplemento',4),
 (29,'HOT29','Ruals Hotel',' Del Instituto Nicaragüense de Seguridad Social (INSS), 2 cuadras al este, Somoto, Nicaragua','El Ruals Hotel está situado en Somoto y dispone de salón compartido, jardín, terraza y conexión Wi-Fi gratuita. El alojamiento cuenta con recepción 24 horas, servicio de habitaciones y servicio de cambio de divisa.',4),
 (30,'HOT30','Hostal San José','Carretera Panamericana De la terminal de buses 3 cuadras al Sur, 20 metros al Este, Somoto, Nicaragua','Hostal San José',4),
 (31,'HOT31','Hotel El Portal del Angel','De la Policia Nacional 1 cuadra al Oeste, 11/2 cuadra al Sur, Somoto','El Hotel El Portal del Angel es un pequeño hotel situado en el en la ciudad de Somoto, Madriz. Somoto es una ciudad que esta rodeado de la extraordinaria belleza de iglesias, eco-turismo y nuestra insignia el Cañón de Somoto el cual se encuentra a solo 15 minutos de el hotel.',4),
 (32,'HOT32','Hotel Frontera','Carretera Panamerica Norte Kilometro 226, Ocotal, Nicaragua','El Hotel Frontera ofrece restaurante, piscina al aire libre, bar y salón compartido en Ocotal. También cuenta con jardín y terraza.',4),
 (33,'HOT33','Hotel Mirador','De la terminal de buses 100m al norte sobre la carretera, 63012 Ocotal, Nicaragua','El Hotel Mirador está rodeado de jardines, a solo 100 metros de la estación de autobuses de Ocotal. Ofrece aparcamiento privado gratuito, conexión Wi-Fi gratuita y habitaciones luminosas con aire acondicionado y TV por cable.',5),
 (34,'HOT34','Hotel Cafe - Ocotal ','B° Monseñor Madrigal De gasolinera PUMA 2c al norte 1 c al oeste, 37000 Ocotal, Nicaragua','El Hotel Cafe - Ocotal ofrece jardín y se encuentra en Ocotal. El hotel ofrece WiFi gratuita y aparcamiento privado gratuito.',5),
 (35,'HOT35','Hotel El Viajero',' Escuela monseñor madrigal 1 cuadra al oeste, 37000 Ocotal, Nicaragua','El Hotel El Viajero se encuentra en Ocotal. El establecimiento ofrece aparcamiento privado gratuito y conexión WiFi gratuita. Escuela monseñor madrigal 1 cuadra al oeste, 37000 Ocotal, Nicaragua.',5);
/*!40000 ALTER TABLE `tbl_hoteles` ENABLE KEYS */;


--
-- Definition of table `tbl_lugaresturisticos`
--

DROP TABLE IF EXISTS `tbl_lugaresturisticos`;
CREATE TABLE `tbl_lugaresturisticos` (
  `idlugarturistico` int(11) NOT NULL auto_increment,
  `idtlugartur` varchar(30) character set utf8 NOT NULL,
  `nombre` varchar(100) character set utf8 NOT NULL,
  `atractivocultural` varchar(200) character set utf8 NOT NULL,
  `iddepartamento` int(11) NOT NULL,
  PRIMARY KEY  (`idlugarturistico`),
  KEY `Ref12` (`iddepartamento`),
  CONSTRAINT `Reftbl_departamentos2` FOREIGN KEY (`iddepartamento`) REFERENCES `tbl_departamentos` (`iddepartamento`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_lugaresturisticos`
--

/*!40000 ALTER TABLE `tbl_lugaresturisticos` DISABLE KEYS */;
INSERT INTO `tbl_lugaresturisticos` (`idlugarturistico`,`idtlugartur`,`nombre`,`atractivocultural`,`iddepartamento`) VALUES 
 (1,'LGT001','Reserva natural Cerro Apante','Tanto en el agua como en las laderas se practican diversos deportes como la escalada entre otras actividades.',1),
 (2,'LGT002','Museo del Café','Visitar y conocer todo sobre El Museo Naconal del Café de Nicaragua',1),
 (3,'LGT003','Mirador el Calvario','Vista mpresionante de la ciudad de Matagalpa',1),
 (4,'LGT004','Selva Negra Farm Tour','Tour a la finca, Tur de Café, Senderismo, Cabalgatas, Tour de la Naturaleza,Tour de la noche, Tour Birdwatching, Tour de Cacao',1),
 (5,'LGT005','La Cascada de la Luna','Tours de senderismo y Kayak',1),
 (6,'LGT006','El Castillo del cacao','Tour Castillo del Cacao',1),
 (7,'LGT007','Reserva Natural Miraflor','Tour en la Reserva y Senderismo',2),
 (8,'LGT008','El Jalacate','Caminata y apreciacion del arte de la escultura; tallando signos mayas, incas, egipcios.',2),
 (9,'LGT009','Esteli Waterfall','Puedes apreciar la cascada y tomarte una baño.',2),
 (10,'LGT010','Museo de Historia y Arqueologia Alejandro Davila Bolanos','Conoce sobre la  arqueologia, tradiciones, antigüedades y revolucion en Estelí.',2),
 (11,'LGT011','Cigar Zone','Bares y discotecas',2),
 (12,'LGT012','Cerro De La Cruz','Caminata para llegar a la cima y mirador.',3),
 (13,'LGT013','Cooperativa San Expedito','Tours a fábricas de Ceramicas',3),
 (14,'LGT014','Eco Albergue La Fundadora','Turismo rural',3),
 (15,'LGT015','Canopy Tour La Brellera','Actividades al aire libre, Tours, Tirolesa y parques de aventuras aéreas',3),
 (16,'LGT016','Macizo de Peñas Blancas','Naturaleza y parques, Bosques',3),
 (17,'LGT017','Cañon de Somoto','Tour atraves del Cañon',4),
 (18,'LGT018','Reserva Natural Tepesomoto La Patasta','Tour en la Reserva, cuevas y formaciones rocosas.',4),
 (19,'LGT019','Laguna La Bruja','Cabalgata y Paseo en lancha.',4),
 (20,'LGT020','Sitio Arqueológico Aguas Calientes','Tour del Sitio Arqueologico',4),
 (21,'LGT021','Cerro Mogotón','Tour en el Cerro Mogotón',5),
 (22,'LGT022','Aguas termales','Este centro recreativo ubicado en Macualizo, a 12 kilometros de Ocotal y pueden bañarse en 4 piscinas, tres para adultos y una para niños.',5),
 (23,'LGT023','Salto El Rosario','Deslizamiento sobre la roca por más de 130 metros de altura.',5),
 (24,'LGT024','La cascada','En la comunidad Los Arados de Mozonte, encontramos la cascada El Coyol que nace de la cordillera de Dipilto y Jalapa',5);
/*!40000 ALTER TABLE `tbl_lugaresturisticos` ENABLE KEYS */;


--
-- Definition of table `tbl_restaurantes`
--

DROP TABLE IF EXISTS `tbl_restaurantes`;
CREATE TABLE `tbl_restaurantes` (
  `idrestaurante` int(11) NOT NULL auto_increment,
  `idtrestaurante` varchar(30) character set utf8 NOT NULL,
  `nombre` varchar(100) character set utf8 NOT NULL,
  `direccion` varchar(300) character set utf8 NOT NULL,
  `descripcion` varchar(1000) character set utf8 NOT NULL,
  `iddepartamento` int(11) NOT NULL,
  PRIMARY KEY  (`idrestaurante`),
  KEY `Ref11` (`iddepartamento`),
  CONSTRAINT `Reftbl_departamentos1` FOREIGN KEY (`iddepartamento`) REFERENCES `tbl_departamentos` (`iddepartamento`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_restaurantes`
--

/*!40000 ALTER TABLE `tbl_restaurantes` DISABLE KEYS */;
INSERT INTO `tbl_restaurantes` (`idrestaurante`,`idtrestaurante`,`nombre`,`direccion`,`descripcion`,`iddepartamento`) VALUES 
 (1,'REST001','La Vita e Bella','En el Parque Morazan, Matagalpa, Nicaragua','Italiana, Pizzería, Apto para vegetarianos',1),
 (2,'REST002','Lunaflor','25 Metros Sur de Dra. RIzo Contiguo a Tienda La Pinata 25 | Around the corner from Buena Onda and Martinas Hotels, Matagalpa, Nicaragua','Café, Internacional, Contemporánea',1),
 (3,'REST003','El Balcon','Calle Central | De La Alcaldía Municipal 25 Varas Al Sur, Matagalpa, Nicaragua','Latina, Centroamericana, Española, Sudamericana',1),
 (4,'REST004','Gato blanco','Frente a Sinsa Matagalpa, Matagalpa, Nicaragua','Internacional, Pizzería, Mariscos',1),
 (5,'REST005','La Pradera','Main Highway, Matagalpa, Nicaragua','Latina, Española, Sudamericana, Centroamericana',1),
 (6,'REST006','Casablanca Restaurante','De la Iglesia Sn Jose 1C Al Sur, Matagalpa, Nicaragua','Latina, Española, Sudamericana',1),
 (7,'REST007','Cafe Bar Artesanos','De Banpro, media cuadra al este, Matagalpa, Nicaragua','Bar, Pub, Sudamericana',1),
 (8,'REST008','La Terraza Colombiana','Carretera Panamericana, Entrada Sur Esteli, Esteli, Nicaragua','Latina, Bar, Internacional, Europea, Española, Pub, Sudamericana, Colombiana',2),
 (9,'REST009','Pullasos Ole','Estelí 505, Esteli, Nicaragua','Churrasquería, Latina, Centroamericana',2),
 (10,'REST010','El Rincon Pinareno','Bo Hermanos Carcamo Casa Cultura 80vrs al sur, Esteli, Nicaragua','Caribeña, Cubana, Latina',2),
 (11,'REST011','Casa Vecchia','Del Gallo Mas Gallo Media Cuadra Al Oeste, Esteli, Nicaragua','Italiana, Apto para vegetarianos',2),
 (12,'REST012','Restaurante Cohifer','Esquina Sur Este De Catedral 1c Al Este, Esteli, Nicaragua','Centroamericana, Latina, Sudamericana',2),
 (13,'REST013','La Gran Via','Banpro 20 vrs. al Sur, Esteli, Nicaragua','China, Internacional',2),
 (14,'REST014','Soda El Tico','Del Silais 1 1/2 cuadra al norte, Jinotega | 1/2 Cuadra al Sur, Jinotega, Nicaragua','Latina, Española, Centroamericana',3),
 (15,'REST015','Café Bosque','Hospital Motta 1c Oeste, 1/2 Sur | Hospital Motta 1c Oeste, 1/2 Sur, Jinotega, Nicaragua','Estadounidense, Canadiense, Café',3),
 (16,'REST016','Panaderia y Cafe La Casa de Don Colocho','Costado Norte escuela Gabriela Mistral, 62022,, Jinotega, Nicaragua','Panaderías y pastelerías , Café',3),
 (17,'REST017','Libertalia','Movistar Jinotega Costado Este, Jinotega, Nicaragua','Italiana, Pizzería, Apto para vegetarianos',3),
 (18,'REST018','Restaurante La Perrera','Km 158 Carretera a Matagalpa | Empalme el Guayacan, Jinotega 505, Nicaragua','Italiana, Estadounidense',3),
 (19,'REST019','Restaurante Rincon Jinotegano','De Catedral San Juan, 3 Cuadras y Medias Al Sur, 1/2 Al Oeste | Parque Otto Casco 3 Y Media AL Oeste, Jinotega, Nicaragu','Nicaragüense',3),
 (20,'REST020','Bulls Restaurante','Alcaldia 2 1/2 c. al este, Jinotega, Nicaragua','Japonesa, Churrasquería, Latina',3),
 (21,'REST021','Bar y Restaurant El Almendro','Reloj Publico 75vrs Al S, Somoto, Nicaragua','Sudamericana, Centroamericana',4),
 (22,'REST022','El Puente','Del Centro de Salud 2 cuadras al norte 1/2 cuadra al Oste, Somoto, Nicaragua','Nicaragüense',4),
 (23,'REST023','KeliWest Buffet','Somoto, Nicaragua','Churrasquería, Comida rápida, Internacional',4),
 (24,'REST024','Pizza Italia','Somoto, Nicaragua','Italiana, Pizzería, Apto para vegetarianos',4),
 (25,'REST025','Cafetin Rocio','Somoto, Nicaragua','Café y Panaderia',4),
 (26,'REST026','Vivero y Res. Tipico La Peña','Somoto, Nicaragua','Nicaragüense',4),
 (27,'REST027','LLamarada Del Bosque','Costado Sur Parque Central, Ocotal 505, Nicaragua','Comida rápida, Sudamericana, Centroamericana',5),
 (28,'REST028','Casa Vieja','Del Supermercado San Juan, 1/2 Cuadra Al Norte, Ocotal, Nicaragua','Centroamericana, Sudamericana',5),
 (29,'REST029','Bruschettas','Iglesia La Asunción 20 metros al Norte, Ocotal, Nicaragua','Nicaragüense',5),
 (30,'REST030','Bar y restaurante el filete','De migración, Ocotal, Nicaragua','Sudamericana, Centroamericana',5),
 (31,'REST031','Sport Bar & Grill','Del Parque Central, Tres Cuadras Al Sur, Media Cuadra Al Oeste, Ocotal, Nicaragua','Churrasquería',5),
 (32,'REST032','Cafe Cinnamon','Avenida Santa Fe, Ocotal, Nicaragua','Café y Panaderia',5);
/*!40000 ALTER TABLE `tbl_restaurantes` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
