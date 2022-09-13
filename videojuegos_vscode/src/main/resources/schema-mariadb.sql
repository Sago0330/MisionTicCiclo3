DROP TABLE IF EXISTS
    videojuego;
DROP TABLE IF EXISTS
    distribuidor;
CREATE TABLE videojuego(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(200) NOT NULL,
    descripcion VARCHAR(3000),
    imagen_url VARCHAR(500)
); INSERT INTO videojuego(
    id,
    nombre,
    descripcion,
    imagen_url
)
VALUES(
    1,
    "FIFA 22",
    "FIFA 22 es un videojuego desarrollado por EA Vancouver y EA Romania, siendo publicado por EA Sports. Está disponible para PlayStation 4, PlayStation 5, Xbox Series X/S, Xbox One, Microsoft Windows, Google Stadia y Nintendo Switch.",
    "https://m.media-amazon.com/images/I/81P6dWIU+EL._AC_SX569_.jpg"
),(
    2,
    "Control",
    "Control es un videojuego de acción-aventura y disparos en tercera persona desarrollado por Remedy Entertainment y distribuido por 505 Games. Fue lanzado el 27 de agosto de 2019 en las plataformas Stadia, Microsoft Windows, PlayStation 4, Xbox One y Nintendo Switch.",
    "https://as01.epimg.net/meristation/imagenes/2019/11/03/game_cover/139982281572737960.jpg"
),(
    3,
    "Stray",
    "Stray es un juego de aventuras desarrollado por BlueTwelve Studio y publicado por Annapurna Interactive. Anteriormente conocido como HK_Project, el juego fue lanzado el 19 de julio de 2022 para Microsoft Windows, PlayStation 4 y PlayStation 5",
    "https://uvejuegos.com/img/caratulas/66591/stray---car%C3%83%C2%A1tula.jpg"
),(
    4,
    'Bioshock Infinite',
    'La última gran entrega de la saga Bioshock, ahora en una imperdible ciudad de ensueño entre las nubes.',
    'https://cdn.vox-cdn.com/thumbor/I24jyQjEEDBM4AQrGIbaCk4t2gk=/0x0:1080x720/1200x800/filters:focal(0x0:1080x720)/cdn.vox-cdn.com/uploads/chorus_image/image/4674397/bioshock_infinite_delay.0.jpg'
),(
    5,
    'Insurgency: Sandstorm',
    'Un FPS táctico por equipos basado en combates letales en espacios reducidos y multijugador centrado en objetivos',
    'https://areajugones.sport.es/wp-content/uploads/2018/06/insurgency-e1528802800327.jpg'
),(
    6,
    'The Witness',
    'Te despiertas, a solas, en una extraña isla llena de puzles que te retarán y sorprenderán.',
    'https://cdn.wccftech.com/wp-content/uploads/2016/11/the-witness-ps4-pro-patch-4k-2060x1288.jpg'
),(
    7,
    'Braid',
    'Un juego de rompecabezas con toques plataformeros, donde puedes manipular el flujo del tiempo de unas maneras inusuales y extrañas.',
    'https://images-na.ssl-images-amazon.com/images/I/51g5LDbFg4L._SX300_SY300_QL70_FMwebp_.jpg'
),(
    8,
    'Borderlands 3',
    '¡Vuelve el padre de los shooter-looter, con tropecientas mil armas y una aventura caótica!',
    'https://m.media-amazon.com/images/I/81HWpLOKdYL._AC_SY879_.jpg'
);
CREATE TABLE distribuidor(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(200) NOT NULL,
    sitio_web VARCHAR(500)
); INSERT INTO distribuidor(id, nombre, sitio_web)
VALUES(
    1,
    "2k",
    "https://www.2k.com/en-US/"
),(
    2,
    "Focus Home Interactive",
    "https://www.focus-entmt.com/en"
),(3, "Thekla", "null"),(4, "Number One", "null"),(
    5,
    "505 Games",
    "https://505games.com/es/"
),(
    6,
    "Unknown Worlds Games",
    "https://unknownworlds.com/games/"
),(
    7,
    "Campo Santo",
    "https://www.camposanto.com/"
);
ALTER TABLE
    videojuego ADD COLUMN distribuidor_id INT,
    ADD FOREIGN KEY(distribuidor_id) REFERENCES distribuidor(id);
UPDATE
    videojuego
SET
    distribuidor_id = 1
WHERE
    id IN(1, 5);
UPDATE
    videojuego
SET
    distribuidor_id = 2
WHERE
    id IN(2);
UPDATE
    videojuego
SET
    distribuidor_id = 3
WHERE
    id IN(3);
UPDATE
    videojuego
SET
    distribuidor_id = 4
WHERE
    id IN(4);
UPDATE
    videojuego
SET
    distribuidor_id = 5
WHERE
    id IN(6);
UPDATE
    videojuego
SET
    distribuidor_id = 6
WHERE
    id IN(7);
UPDATE
    videojuego
SET
    distribuidor_id = 7
WHERE
    id IN(8);
ALTER TABLE
    videojuego MODIFY distribuidor_id INT NOT NULL