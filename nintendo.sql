DROP TABLE consola CASCADE CONSTRAINT;
DROP TABLE franquicia CASCADE CONSTRAINT;
CREATE TABLE consola(
    id_consola NUMBER(4) PRIMARY KEY,
    nombre_consola VARCHAR2(20) NOT NULL UNIQUE,
    tipo_consola VARCHAR2(20) NOT NULL CHECK(tipo_consola IN ('SOBREMESA','PORTATIL','HIBRIDA')),
    anio_lanzamiento NUMBER(4) NOT NULL CHECK(anio_lanzamiento BETWEEN 1983 AND 2030),
    precio_referencia_usd NUMBER(6,2) NOT NULL CHECK(precio_referencia_usd > 0),
    estado_fabricacion VARCHAR2(15) DEFAULT 'ACTIVA' NOT NULL CHECK(estado_fabricacion IN ('ACTIVA', 'DESCONTINUADA'))
);
CREATE TABLE franquicia(
id_franquicia NUMBER(4) PRIMARY KEY,
nombre_franquicia VARCHAR2(60) NOT NULL UNIQUE,
creador_principal VARCHAR2(80) ,
anio_debut NUMBER(4) NOT NULL CHECK(anio_debut >= 1980),
estudio_principal VARCHAR2(60) DEFAULT 'NINTENDO EPD' NOT NULL
);
CREATE TABLE videojuego(
    id_juego NUMBER(6) PRIMARY KEY,
    codigo_catalogo VARCHAR2(10) NOT NULL UNIQUE,
    titulo VARCHAR2(100) NOT NULL,
    id_franquicia NUMBER(4) NOT NULL REFERENCES franquicia(id_franquicia),
    id_consola NUMBER(4) NOT NULL REFERENCES consola(id_consola),
    clasificacion_esrb VARCHAR2(5) NOT NULL CHECK(clasificacion_esrb IN ('E', 'E10+','T','M')),
    precio_clp NUMBER(8) NOT NULL CHECK(precio_clp >= 0 ),
    puntaje_metacritic NUMBER(3) CHECK (puntaje_metacritic BETWEEN 0 AND 100),
    stock_fisico NUMBER(5) DEFAULT 0 NOT NULL CHECK(stock_fisico >=0),
    fecha_lanzamiento DATE NOT NULL
);
CREATE TABLE jugador(
id_jugador NUMBER(6) PRIMARY KEY,
nickname VARCHAR2(30) NOT NULL UNIQUE,
email VARCHAR2(100) NOT NULL UNIQUE,
pais VARCHAR2(40) DEFAULT 'CHILE'   NOT NULL,
monedas_oro NUMBER(6) DEFAULT 0 NOT NULL CHECK(monedas_oro >= 0),
suscripcion_online VARCHAR2(15) DEFAULT 'GRATUITA' NOT NULL CHECK(suscripcion_online IN ('GRATUITA','INDIVIDUAL','FAMILIAR','EXPANSION')),
id_juego_favorito NUMBER(6) REFERENCES videojuego(id_juego)
);
CREATE TABLE accesorio_prueba(
    id_accesorio NUMBER(4) PRIMARY KEY,
    nombre_accesorio VARCHAR2(40) NOT NULL,
    precio_usd NUMBER(5,2) NOT NULL CHECK(precio_usd > 0),
    id_consola NUMBER(4) NOT NULL REFERENCES consola(id_consola)
);

SELECT * FROM consola;
SELECT * FROM FRANQUICIA;
