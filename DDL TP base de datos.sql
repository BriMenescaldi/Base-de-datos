CREATE DATABASE TP;

USE TP;

CREATE TABLE USUARIO (
	nickname varchar(20) PRIMARY KEY NOT NULL,
	email varchar(40),
	nacionalidad varchar(30)
);

CREATE TABLE SESION (
	n_sesion int IDENTITY PRIMARY KEY NOT NULL,
	fecha_ingreso DATE NULL,
	hora_ingreso TIME NULL,
	fecha_egreso DATE NULL,
	hora_egreso TIME NULL,
	nickname varchar(20)
	FOREIGN KEY (nickname) REFERENCES USUARIO(nickname),
);

CREATE TABLE MAPA (
	id_mapa int IDENTITY PRIMARY KEY NOT NULL,
	nombre_mapa varchar(40),
	CONSTRAINT nombre_mapa CHECK (nombre_mapa IN ('sanctum island', 'harmonia', 'western expanse'))
);

CREATE TABLE MODALIDAD (
	id_modalidad int IDENTITY PRIMARY KEY NOT NULL,
	nombre_modalidad varchar(30),
	CONSTRAINT nombre_modalidad CHECK (nombre_modalidad IN ('coliseo', 'clasica', 'clasificatoria'))
);

CREATE TABLE PARTIDA (
	n_partida int IDENTITY PRIMARY KEY NOT NULL,
	hora_inicio TIME,
	duracion_min int,
	id_mapa int,
	id_modalidad int,
	FOREIGN KEY (id_mapa) REFERENCES MAPA(id_mapa),
	FOREIGN KEY (id_modalidad) REFERENCES MODALIDAD(id_modalidad),
);

CREATE TABLE ROL (
	id_rol int IDENTITY PRIMARY KEY NOT NULL,
	nombre_rol varchar(20),
	CONSTRAINT nombre_rol CHECK (nombre_rol IN ('mago', 'tirador', 'tanque', 'soporte', 'combatiente', 'asesino'))
);

CREATE TABLE HEROE (
	id_heroe int IDENTITY PRIMARY KEY NOT NULL,
	nombre_heroe varchar(30),
	id_rol int,
	FOREIGN KEY (id_rol) REFERENCES ROL(id_rol),
);

CREATE TABLE HABILIDAD (
	id_habilidad int IDENTITY PRIMARY KEY NOT NULL,
	tipo varchar(100),
	daño int,
	id_heroe int,
	n_habilidad int,
	CONSTRAINT daño CHECK (daño >= 0 AND daño <= 100),
	--CONSTRAINT n_habilidad CHECK (n_habilidad >= 1 AND n_habilidad <= 4),
	FOREIGN KEY (id_heroe) REFERENCES HEROE(id_heroe)
);

CREATE TABLE JUGADOR (
	n_sesion int,
	n_partida int,
	equipo int,
	resultado int,
	id_heroe int,
	CONSTRAINT equipo CHECK (equipo IN (1, 2)),
	CONSTRAINT resultado CHECK (resultado IN (0, 1)),
	FOREIGN KEY (id_heroe) REFERENCES HEROE(id_heroe),
	FOREIGN KEY (n_partida) REFERENCES PARTIDA(n_partida),
	FOREIGN KEY (n_sesion) REFERENCES SESION(n_sesion),
	PRIMARY KEY(n_sesion, n_partida)
);