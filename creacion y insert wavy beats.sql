create database wavy_beats_bd;
use wavy_beats_bd;

-- Tabla de usuarios
CREATE TABLE user_regist (
    usuario_id INT AUTO_INCREMENT NOT NULL,
    nombre_usuario VARCHAR(15) NOT NULL,
    correo_usuario VARCHAR(30) NOT NULL,
    contraseña VARCHAR(30) NOT NULL,
    PRIMARY KEY (usuario_id)
);

-- Tabla de álbumes
CREATE TABLE album (
    id_album INT AUTO_INCREMENT NOT NULL,
    titulo_album VARCHAR(30) NOT NULL,
    año_produccion YEAR NOT NULL,
    descripcion VARCHAR(100) NOT NULL,
    medio VARCHAR(15) NOT NULL,
    PRIMARY KEY (id_album)
);

-- Tabla de canciones
CREATE TABLE cancion (
    id_cancion INT AUTO_INCREMENT NOT NULL,
    album_id INT NOT NULL,
    nombre_cancion VARCHAR(30) NOT NULL,
    minutos TIME NOT NULL,
    segundos TIME NOT NULL,
    interprete VARCHAR(30),
    PRIMARY KEY (id_cancion),
    FOREIGN KEY (album_id) REFERENCES album (id_album)
);

-- Insertar usuarios
INSERT INTO user_regist (nombre_usuario, correo_usuario, contraseña) VALUES
('marco_polo','marco.polo@gmail.com','marcopass'),
('sophia_r','sophia.r@outlook.com','sophiar123'),
('pedro77','pedro77@yahoo.com','pedro777'),
('laura_m','laura.m@gmail.com','lauram00'),
('diegol','diegol@correo.com','diego2021'),
('valentina_x','valentina.x@outlook.com','valentinax'),
('jorgeG','jorgeg@gmail.com','jorge123'),
('julia89','julia89@hotmail.com','julianova'),
('miguel_s','miguel.s@gmail.com','miguelS04'),
('camila_c','camila.c@correo.com','camilacc'),
('sebastian_t','sebastian.t@outlook.com','sebastianT'),
('alejandra_m','ale.m@gmail.com','alejandraM'),
('andrea_z','andrea.z@yahoo.com','andreaz23'),
('fernando_r','fernando.r@correo.com','fernandoR'),
('isabella_f','isabella.f@gmail.com','isabellaf'),
('ricardo_m','ricardo.m@outlook.com','ricardoM'),
('monica_l','monica.l@yahoo.com','monical'),
('javier_p','javier.p@gmail.com','javierP'),
('ximena_k','ximena.k@correo.com','ximenaK'),
('oscar_v','oscar.v@outlook.com','oscarV'),
('paula_q','paula.q@gmail.com','paulaQ'),
('andrea_g','andrea.g@yahoo.com','andreag'),
('gustavo_h','gustavo.h@correo.com','gustavoH'),
('sofia_r','sofia.r@gmail.com','sofiaR'),
('claudia_w','claudia.w@outlook.com','claudiaW'),
('eduardo_b','eduardo.b@yahoo.com','eduardoB'),
('natalia_s','natalia.s@correo.com','nataliaS'),
('daniel_z','daniel.z@gmail.com','danielZ'),
('laura_r','laura.r@outlook.com','lauraR'),
('carlos_m','carlos.m@yahoo.com','carlosM'),
('mariana_p','mariana.p@correo.com','marianaP'),
('sebastian_g','sebastian.g@gmail.com','sebastianG'),
('alejandro_t','alejandro.t@outlook.com','alejandroT'),
('veronica_n','veronica.n@yahoo.com','veronicaN'),
('raul_c','raul.c@correo.com','raulC'),
('sofia_l','sofia.l@gmail.com','sofiaL'),
('jesus_m','jesus.m@outlook.com','jesusM'),
('pamela_f','pamela.f@yahoo.com','pamelaF'),
('roberto_g','roberto.g@correo.com','robertoG'),
('gabriela_s','gabriela.s@gmail.com','gabrielaS'),
('federico_v','federico.v@outlook.com','federicoV'),
('ines_k','ines.k@yahoo.com','inesK'),
('jorge_l','jorge.l@correo.com','jorgeL'),
('adriana_m','adriana.m@gmail.com','adrianaM'),
('alejandro_r','alejandro.r@outlook.com','alejandroR'),
('maria_j','maria.j@outlook.com','mariaJ'),
('andres_h','andres.h@outlook.com','andresH'),
('laura_mn','laura.mn@outlook.com','lauraMN'),
('cristian_v','cristian.v@yahoo.com','cristianV'),
('sara_o','sara.o@correo.com','saraO');


INSERT INTO album (titulo_album, año_produccion, descripcion, medio) VALUES
('Ecos del alma', 2017, 'Pop melódico contemporáneo', 'Digital'),
('Viaje interior', 2016, 'Música instrumental relajante', 'CD'),
('Noches eléctricas', 2018, 'Electropop fiestero', 'Digital'),
('Corazón latino', 2019, 'Fusión de ritmos latinos', 'Vinilo'),
('Sombras de blues', 2020, 'Blues guitarrero intenso', 'CD'),
('Tiempos modernos', 2021, 'Pop electrónico', 'Digital'),
('Historias sin fin', 2022, 'Baladas acústicas', 'Digital'),
('Ritmo salvaje', 2017, 'Rock energético', 'Vinilo'),
('Sueños de arena', 2018, 'World music inspirada en el desierto', 'CD'),
('Jazz para el alma', 2019, 'Jazz suave y relajado', 'Digital'),
('Amor y ausencia', 2020, 'Baladas sentimentales', 'CD'),
('Percusiones del mundo', 2021, 'Percusión global', 'Digital'),
('Voces antiguas', 2022, 'Música folk tradicional', 'Vinilo'),
('Ritual nocturno', 2017, 'New age misterioso', 'Digital'),
('Caminos de fe', 2018, 'Gospel contemporáneo', 'CD'),
('Órbita sonora', 2019, 'Ambient espacial', 'Digital'),
('Cuerdas de fuego', 2020, 'Metal sinfónico', 'CD'),
('Miradas', 2021, 'Pop introspectivo', 'Digital'),
('Horizonte azul', 2022, 'Soft rock relajado', 'Vinilo'),
('Mosaico urbano', 2017, 'Hip hop y rap latino', 'Digital'),
('Sensaciones', 2018, 'Baladas románticas', 'CD'),
('Destino eterno', 2019, 'Rock melódico', 'Vinilo'),
('Reflejo', 2020, 'Música alternativa', 'Digital'),
('Latinoamérica viva', 2021, 'Fusión latinoamericana', 'CD'),
('Universo paralelo', 2022, 'Synthwave retro', 'Digital'),
('Reencuentro', 2017, 'Pop coral', 'CD'),
('Energía pura', 2018, 'Funk y groove', 'Vinilo'),
('Travesía', 2019, 'Folk moderno', 'Digital'),
('Pies descalzos', 2020, 'Pop acústico', 'CD'),
('Misticismo', 2021, 'Música étnica', 'Digital'),
('Oscuridad', 2022, 'Rock gótico', 'Vinilo'),
('Renacer', 2017, 'Pop progresivo', 'CD'),
('Raíces', 2018, 'Música andina', 'Digital'),
('Amanecer dorado', 2019, 'Baladas suaves', 'CD'),
('Época dorada', 2020, 'Jazz clásico', 'Vinilo'),
('Versos libres', 2021, 'Indie folk', 'Digital'),
('Euforia', 2022, 'EDM bailable', 'CD'),
('Brisa marina', 2017, 'Música relajante', 'Digital'),
('Aventura', 2018, 'Rock progresivo', 'Vinilo'),
('Sueño infinito', 2019, 'New age ambiental', 'Digital'),
('Corazones valientes', 2020, 'Pop-rock', 'CD'),
('Secretos', 2021, 'Baladas introspectivas', 'Digital'),
('Pasión y dolor', 2022, 'Blues emotivo', 'Vinilo'),
('Eclipse', 2017, 'Electrónica experimental', 'Digital'),
('Alma de viento', 2018, 'World fusion', 'CD'),
('Impulso', 2019, 'Funk animado', 'Digital'),
('Destino', 2020, 'Rock clásico', 'Vinilo'),
('Camino', 2021, 'Folk acústico', 'Digital'),
('Armonía', 2022, 'Música instrumental', 'CD'),
('Íconos', 2023, 'Clásicos reversionados', 'Digital');


-- Insertar canciones (solo con album_id del 1 al 5)
INSERT INTO cancion (album_id, nombre_cancion, minutos, segundos, interprete) VALUES
(1, 'Ecos brillantes', '00:03:30', '00:00:40', 'Artista A'),
(1, 'Alma perdida', '00:04:00', '00:00:45', 'Artista B'),

(2, 'Viaje sin retorno', '00:05:10', '00:00:50', 'Instrumentalista X'),
(2, 'Camino interior', '00:04:55', '00:00:35', 'Instrumentalista Y'),

(3, 'Noches eléctricas', '00:03:45', '00:00:30', 'DJ Electro'),
(3, 'Ritmo brillante', '00:04:20', '00:00:40', 'DJ Electro'),

(4, 'Corazón ardiente', '00:04:10', '00:00:35', 'Banda Latina'),
(4, 'Ritmos del alma', '00:03:55', '00:00:30', 'Banda Latina'),

(5, 'Sombras azules', '00:05:00', '00:00:45', 'Blues Master'),
(5, 'Guitarra triste', '00:04:40', '00:00:40', 'Blues Master'),

(6, 'Tiempos digitales', '00:03:20', '00:00:30', 'Electro Pop'),
(6, 'Ondas modernas', '00:04:05', '00:00:35', 'Electro Pop'),

(7, 'Historias al viento', '00:04:50', '00:00:40', 'Cantautor A'),
(7, 'Cuerdas y memorias', '00:05:15', '00:00:50', 'Cantautor B'),

(8, 'Ritmo indomable', '00:03:35', '00:00:25', 'Rockero X'),
(8, 'Salvajismo', '00:04:10', '00:00:40', 'Rockero Y'),

(9, 'Sueños dorados', '00:05:25', '00:00:55', 'World Band'),
(9, 'Arenas del tiempo', '00:04:45', '00:00:35', 'World Band'),

(10, 'Jazz para dos', '00:06:00', '00:00:50', 'Jazz Ensemble'),
(10, 'Alma en notas', '00:05:30', '00:00:40', 'Jazz Ensemble'),

(11, 'Ausencia profunda', '00:04:40', '00:00:35', 'Baladista X'),
(11, 'Amor eterno', '00:05:00', '00:00:45', 'Baladista Y'),

(12, 'Percusión vital', '00:04:15', '00:00:40', 'Baterista Mundo'),
(12, 'Ritmos globales', '00:04:50', '00:00:55', 'Baterista Mundo'),

(13, 'Voces lejanas', '00:03:40', '00:00:30', 'Folk Tradicional'),
(13, 'Cantos antiguos', '00:04:05', '00:00:40', 'Folk Tradicional'),

(14, 'Ritual lunar', '00:05:15', '00:00:50', 'New Age Band'),
(14, 'Noche etérea', '00:04:55', '00:00:45', 'New Age Band'),

(15, 'Camino espiritual', '00:05:40', '00:00:50', 'Gospel Choir'),
(15, 'Fe renovada', '00:04:35', '00:00:40', 'Gospel Choir'),

(16, 'Órbita en calma', '00:06:10', '00:00:55', 'Ambient Sounds'),
(16, 'Espacio infinito', '00:05:50', '00:00:45', 'Ambient Sounds'),

(17, 'Cuerdas ardientes', '00:05:20', '00:00:50', 'Metal Band'),
(17, 'Fuego sin fin', '00:04:45', '00:00:35', 'Metal Band'),

(18, 'Miradas profundas', '00:04:30', '00:00:40', 'Pop Indie'),
(18, 'Reflejo interno', '00:03:50', '00:00:30', 'Pop Indie'),

(19, 'Horizonte lejano', '00:05:00', '00:00:50', 'Soft Rockers'),
(19, 'Azul profundo', '00:04:20', '00:00:40', 'Soft Rockers'),

(20, 'Mosaico urbano', '00:03:40', '00:00:30', 'Rap Latino'),
(20, 'Barrio vivo', '00:04:00', '00:00:45', 'Rap Latino'),

(21, 'Sensaciones dulces', '00:04:10', '00:00:40', 'Baladista'),
(21, 'Corazón roto', '00:05:00', '00:00:50', 'Baladista'),

(22, 'Destino final', '00:04:50', '00:00:45', 'Rock Melódico'),
(22, 'Eterna marcha', '00:05:20', '00:00:55', 'Rock Melódico'),

(23, 'Reflejo propio', '00:03:55', '00:00:35', 'Alternativo'),
(23, 'Mundo oculto', '00:04:30', '00:00:40', 'Alternativo'),

(24, 'Latinoamérica unida', '00:05:00', '00:00:45', 'Fusión Latina'),
(24, 'Raíces fuertes', '00:04:40', '00:00:40', 'Fusión Latina'),

(25, 'Universo lejano', '00:04:50', '00:00:50', 'Synthwave Band'),
(25, 'Realidad paralela', '00:05:10', '00:00:55', 'Synthwave Band'),

(26, 'Reencuentro final', '00:03:35', '00:00:30', 'Pop Coral'),
(26, 'Voces unidas', '00:04:00', '00:00:40', 'Pop Coral'),

(27, 'Energía vital', '00:04:10', '00:00:40', 'Funk Band'),
(27, 'Groove intenso', '00:05:15', '00:00:50', 'Funk Band'),

(28, 'Travesía sonora', '00:03:50', '00:00:35', 'Folk Moderno'),
(28, 'Cantos viajeros', '00:04:20', '00:00:45', 'Folk Moderno'),

(29, 'Pies libres', '00:04:00', '00:00:40', 'Pop Acústico'),
(29, 'Caminos abiertos', '00:04:30', '00:00:45', 'Pop Acústico'),

(30, 'Misticismo ancestral', '00:05:10', '00:00:50', 'Étnica Band'),
(30, 'Ecos naturales', '00:04:40', '00:00:35', 'Étnica Band'),

(31, 'Oscuridad profunda', '00:04:50', '00:00:45', 'Rock Gótico'),
(31, 'Sombra eterna', '00:05:20', '00:00:50', 'Rock Gótico'),

(32, 'Renacer suave', '00:04:00', '00:00:35', 'Pop Progresivo'),
(32, 'Luz nueva', '00:03:50', '00:00:30', 'Pop Progresivo'),

(33, 'Raíces andinas', '00:04:40', '00:00:45', 'Música Andina'),
(33, 'Montañas altas', '00:05:00', '00:00:50', 'Música Andina'),

(34, 'Amanecer suave', '00:03:55', '00:00:35', 'Baladas Suaves'),
(34, 'Días dorados', '00:04:10', '00:00:40', 'Baladas Suaves'),

(35, 'Época dorada', '00:05:20', '00:00:50', 'Jazz Clásico'),
(35, 'Clásicos eternos', '00:04:45', '00:00:40', 'Jazz Clásico'),

(36, 'Versos libres', '00:04:30', '00:00:35', 'Indie Folk'),
(36, 'Caminos abiertos', '00:03:55', '00:00:30', 'Indie Folk'),

(37, 'Euforia total', '00:05:10', '00:00:50', 'EDM DJ'),
(37, 'Ritmos bailables', '00:04:40', '00:00:45', 'EDM DJ'),

(38, 'Brisa marina', '00:03:55', '00:00:35', 'Músico Relajante'),
(38, 'Olas suaves', '00:04:10', '00:00:40', 'Músico Relajante'),

(39, 'Aventura sin fin', '00:05:05', '00:00:50', 'Rock Progresivo'),
(39, 'Caminos ocultos', '00:04:45', '00:00:45', 'Rock Progresivo'),

(40, 'Sueño infinito', '00:06:00', '00:00:55', 'New Age Band'),
(40, 'Paisajes etéreos', '00:05:20', '00:00:50', 'New Age Band'),

(41, 'Corazones valientes', '00:04:30', '00:00:40', 'Pop-Rock Band'),
(41, 'Pasión intensa', '00:05:00', '00:00:45', 'Pop-Rock Band'),

(42, 'Secretos ocultos', '00:04:20', '00:00:35', 'Baladista Introspectivo'),
(42, 'Miradas perdidas', '00:04:55', '00:00:45', 'Baladista Introspectivo'),

(43, 'Pasión y dolor', '00:05:15', '00:00:50', 'Blues Emotivo'),
(43, 'Alma rota', '00:04:40', '00:00:40', 'Blues Emotivo'),

(44, 'Eclipse total', '00:04:50', '00:00:45', 'Electrónica Experimental'),
(44, 'Sombras de luz', '00:05:10', '00:00:50', 'Electrónica Experimental'),

(45, 'Alma de viento', '00:05:00', '00:00:40', 'World Fusion'),
(45, 'Vientos del mundo', '00:04:30', '00:00:35', 'World Fusion'),

(46, 'Impulso vital', '00:04:45', '00:00:40', 'Funk Animado'),
(46, 'Ritmo enérgico', '00:05:10', '00:00:50', 'Funk Animado'),

(47, 'Destino final', '00:05:05', '00:00:50', 'Rock Clásico'),
(47, 'Camino eterno', '00:04:35', '00:00:40', 'Rock Clásico'),

(48, 'Camino abierto', '00:04:20', '00:00:35', 'Folk Acústico'),
(48, 'Senderos de luz', '00:03:55', '00:00:30', 'Folk Acústico'),

(49, 'Armonía perfecta', '00:05:00', '00:00:45', 'Música Instrumental'),
(49, 'Sonidos suaves', '00:04:40', '00:00:40', 'Música Instrumental'),

(50, 'Íconos legendarios', '00:04:30', '00:00:35', 'Clásicos Reversionados'),
(50, 'Reencuentro musical', '00:03:55', '00:00:30', 'Clásicos Reversionados');



select * from cancion


;