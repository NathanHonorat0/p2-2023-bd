CREATE DATABASE games;

SHOW DATABASES;

USE games;

SHOW TABLES;

CREATE TABLE categorias(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

CREATE TABLE jogos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    competitivo BOOLEAN DEFAULT false NOT NULL
);

CREATE TABLE jogos_pertencem_categorias(
    id_jogo INT NOT NULL,
    id_categoria INT NOT NULL,
    PRIMARY KEY(id_jogo, id_categoria),
    FOREIGN KEY (id_jogo) REFERENCES jogos(id),
    FOREIGN KEY (id_categoria) REFERENCES categorias(id)
);

CREATE TABLE plataformas(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    id_jogo INT NOT NULL,
    FOREIGN KEY (id_jogo) REFERENCES jogos(id)
);

SHOW FIELDS FROM games.jogos;
SHOW FIELDS FROM games.plataformas;
SHOW FIELDS FROM games.jogos_pertencem_categorias;

/*
DROP TABLE jogos;
DROP TABLE categorias;
DROP TABLE plataformas;
DROP TABLE jogos_pertencem_categorias;
*/