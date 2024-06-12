DROP SCHEMA IF EXISTS NARUTO;
CREATE SCHEMA IF NOT EXISTS NARUTO;

USE NARUTO;

DROP TABLE IF EXISTS Pais;
CREATE TABLE IF NOT EXISTS Pais (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    rey VARCHAR(50)
);

DROP TABLE IF EXISTS Aldea;
CREATE TABLE IF NOT EXISTS Aldea(
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    kage VARCHAR(50),
    pais_id INT,
    FOREIGN KEY (pais_id) REFERENCES Pais(id)
);

DROP TABLE IF EXISTS KekkeiGenkai;
CREATE TABLE KekkeiGenkai (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    descripcion TEXT
);

DROP TABLE IF EXISTS Clan;
CREATE TABLE IF NOT EXISTS Clan (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    jutsus_caracteristicos TEXT,
    kekkei_genkai_id INT,
    FOREIGN KEY (kekkei_genkai_id) REFERENCES KekkeiGenkai(id)
);

DROP TABLE IF EXISTS Jutsu;
CREATE TABLE IF NOT EXISTS Jutsu(
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    descripcion TEXT,
    elemento VARCHAR(50)
);

DROP TABLE IF EXISTS Personaje;
CREATE TABLE IF NOT EXISTS Personaje(
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    afinidad_elemento VARCHAR(50),
    aldea_id INT,
    rango VARCHAR(50),
    kekkei_genkai_id INT NULL,
    clan_id INT NULL,
    FOREIGN KEY (aldea_id) REFERENCES Aldea(id),
    FOREIGN KEY (kekkei_genkai_id) REFERENCES KekkeiGenkai(id),
    FOREIGN KEY (clan_id) REFERENCES Clan(id)
);

DROP TABLE IF EXISTS Temporada;
CREATE TABLE IF NOT EXISTS Temporada(
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    capitulos INT
);

DROP TABLE IF EXISTS Capitulo;
CREATE TABLE IF NOT EXISTS Capitulo (
    id INT PRIMARY KEY,
    duracion INT,
    temporada_id INT,
    es_relleno BOOLEAN,
    FOREIGN KEY (temporada_id) REFERENCES Temporada(id)
);

DROP TABLE IF EXISTS PersonajeJutsu;
CREATE TABLE IF NOT EXISTS PersonajeJutsu(
    personaje_id INT,
    jutsu_id INT,
    PRIMARY KEY (personaje_id, jutsu_id),
    FOREIGN KEY (personaje_id) REFERENCES Personaje(id),
    FOREIGN KEY (jutsu_id) REFERENCES Jutsu(id)
);

DROP TABLE IF EXISTS PersonajeCapitulo;
CREATE TABLE IF NOT EXISTS PersonajeCapitulo (
    personaje_id INT,
    capitulo_id INT,
    PRIMARY KEY (personaje_id, capitulo_id),
    FOREIGN KEY (personaje_id) REFERENCES Personaje(id),
    FOREIGN KEY (capitulo_id) REFERENCES Capitulo(id)
);