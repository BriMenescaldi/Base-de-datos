USE TP;

SELECT * FROM HABILIDAD;

INSERT INTO USUARIO 
VALUES  ('LionelMessi', 'messi@example.com', 'Argentina'),
		('CristianoRonaldo', 'ronaldo@example.com', 'Portugal'),
		('NeymarJr', 'neymar@example.com', 'Brasil'),
		('LukaModric', 'modric@example.com', 'Croacia'),
		('KylianMbappe', 'mbappe@example.com', 'Francia'),
		('MohamedSalah', 'salah@example.com', 'Egipto'),
		('SergioRamos', 'ramos@example.com', 'España'),
		('KevinDeBruyne', 'debruyne@example.com', 'Bélgica'),
		('VirgilVanDijk', 'vandijk@example.com', 'Países Bajos'),
		('KunAgüero', 'kun@example.com', 'Argentina'),
		('ManuelNeuer', 'neuer@example.com', 'Alemania');

INSERT INTO SESION 
VALUES	('2023-01-15', '09:00:00', '2023-01-15', '12:00:00', 'LionelMessi'),
		('2023-02-10', '14:30:00', '2023-02-10', '18:00:00', 'CristianoRonaldo'),
		('2023-03-05', '10:15:00', '2023-03-05', '13:45:00', 'NeymarJr'),
		('2023-03-05', '18:15:00', '2023-03-05', '19:45:00', 'NeymarJr'),
		('2023-03-20', '08:45:00', '2023-03-20', '11:30:00', 'LukaModric'),
		('2023-04-02', '11:30:00', '2023-04-02', '15:00:00', 'KylianMbappe'),
		('2023-04-15', '10:15:00', '2023-04-15', '19:30:00', 'MohamedSalah'),
		('2023-05-01', '13:00:00', '2023-05-01', '17:00:00', 'SergioRamos'),
		('2023-05-10', '09:30:00', (NULL), (NULL), 'KevinDeBruyne'),
		('2023-05-12', '14:00:00', (NULL), (NULL), 'VirgilVanDijk'),
		('2023-05-15', '10:15:00', (NULL), (NULL), 'ManuelNeuer'),
		('2023-03-15', '09:00:00', '2023-03-15', '12:00:00', 'LionelMessi'),
		('2023-03-15', '10:15:00', '2023-03-15', '13:45:00', 'KylianMbappe'),
		('2023-03-15', '08:45:00', '2023-03-15', '11:30:00', 'SergioRamos'),
		('2023-03-15', '11:30:00', '2023-03-15', '15:00:00', 'CristianoRonaldo'),
		('2023-03-15', '12:30:00', '2023-03-15', '16:00:00', 'KunAgüero'),
		('2023-03-15', '13:00:00', '2023-03-15', '17:00:00', 'LukaModric');

INSERT INTO ROL 
VALUES	('mago'), 
		('tirador'), 
		('tanque'), 
		('soporte'), 
		('combatiente'), 
		('asesino');

INSERT INTO HEROE 
VALUES	('AlexFerguson', 1),
		('PepGuardiola', 1),
		('JoseMourinho', 2),
		('DiegoSimeone', 2),
		('JurgenKlopp', 3),
		('CarloAncelotti', 3),
		('ZinedineZidane', 4),
		('AntonioConte', 4),
		('MarceloBielsa', 5),
		('ArseneWenger', 5),
		('SirMattBusby', 6),
		('RinusMichels', 6),
		('JohanCruyff', 2),
		('GabrielHeinze', 3),
		('FabioCapello', 1),
		('GuusHiddink', 1),
		('FrankRijkaard', 5);

INSERT INTO HABILIDAD (tipo, daño, id_heroe, n_habilidad)
VALUES
						-- Habilidades del Héroe 1
						('Armado de equipos', 90, 1, 1),
						('Liderazgo', 80, 1, 2),
						('Táctica ofensiva', 95, 1, 3),
						('Motivación', 85, 1, 4),
						-- Habilidades del Héroe 2
						('Estrategia defensiva', 85, 2, 1),
						('Disciplina táctica', 90, 2, 2),
						('Control del medio campo', 80, 2, 3),
						('Organización defensiva', 85, 2, 4),
						-- Habilidades del Héroe 3
						('Velocidad y agilidad', 95, 3, 1),
						('Regate y dribbling', 90, 3, 2),
						('Finalización', 85, 3, 3),
						('Visión de juego', 80, 3, 4),
						-- Habilidades del Héroe 4
						('Intensidad y entrega', 90, 4, 1),
						('Marcaje y interceptación', 85, 4, 2),
						('Bloqueo y despeje', 80, 4, 3),
						('Anticipación', 85, 4, 4),
						-- Habilidades del Héroe 5
						('Presión alta', 90, 5, 1),
						('Contraataque veloz', 95, 5, 2),
						('Recuperación de balón', 85, 5, 3),
						('Potencia de remate', 90, 5, 4),
						-- Habilidades del Héroe 6
						('Visión táctica', 85, 6, 1),
						('Juego aéreo', 90, 6, 2),
						('Pases precisos', 95, 6, 3),
						('Lanzamiento de faltas', 80, 6, 4),
						-- Habilidades del Héroe 7
						('Cobertura defensiva', 85, 7, 1),
						('Distribución del balón', 90, 7, 2),
						('Golpes de cabeza', 80, 7, 3),
						('Salida rápida', 85, 7, 4),
						-- Habilidades del Héroe 8
						('Remate de larga distancia', 90, 8, 1),
						('Desborde y centro', 85, 8, 2),
						('Habilidad con ambos pies', 80, 8, 3),
						('Instinto goleador', 90, 8, 4),
						-- Habilidades del Héroe 9
						('Presencia en el área', 85, 9, 1),
						('Lectura de juego', 90, 9, 2),
						('Cabeceo defensivo', 85, 9, 3),
						('Potencia física', 95, 9, 4),
						-- Habilidades del Héroe 10
						('Control del mediocampo', 90, 10, 1),
						('Precisión en los pases', 85, 10, 2),
						('Cobertura defensiva', 80, 10, 3),
						('Destreza en los regates', 90, 10, 4),
						-- Habilidades del Héroe 11
						('Dominio del balón', 95, 11, 1),
						('Regate y velocidad', 90, 11, 2),
						('Habilidad en tiros libres', 85, 11, 3),
						('Habilidad en el uno contra uno', 90, 11, 4),
						-- Habilidades del Héroe 12
						('Agilidad y reflejos', 85, 12, 1),
						('Atajadas espectaculares', 90, 12, 2),
						('Comunicación con la defensa', 80, 12, 3),
						('Recuperación rápida', 85, 12, 4);

INSERT INTO MAPA 
VALUES	('sanctum island'), 
		('harmonia'), 
		('western expanse');

INSERT INTO MODALIDAD 
VALUES	('coliseo'), 
		('clasica'), 
		('clasificatoria');

INSERT INTO PARTIDA 
VALUES  ('09:15:00', 120, 1, 1),
		('14:35:00', 40, 1, 2),
		('10:25:00', 25, 1, 2),
		('18:18:00', 65, 2, 2),
		('08:43:00', 75, 2, 3),
		('11:40:00', 43, 3, 3),
		('20:15:00', 34, 1, 3),
		('16:30:00', 13, 3, 1),
		('14:30:00', 67, 2, 1),
		('13:20:00', 62, 3, 2),
		('17:20:00', 69, 3, 2),
		('10:20:00', 52, 3, 2),
		('09:33:00', 12, 3, 2);

INSERT INTO JUGADOR(n_sesion, equipo, resultado, id_heroe, n_partida)
VALUES	(1, 1, 1, 1, 2),
		(2, 2, 0, 2, 3),
		(3, 1, 1, 3, 4),
		(4, 2, 0, 4, 5),
		(5, 1, 1, 5, 9),
		(6, 2, 0, 6, 8),
		(7, 1, 1, 1, 8),
		(8, 2, 0, 8, 8),
		(9, 1, 1, 9, 10),
		(10, 2, 0, 10, 11),
		(1, 1, 1, 1, 1),
		(2, 2, 0, 2, 1),
		(3, 1, 1, 3, 1),
		(5, 2, 0, 4, 1),
		(6, 1, 1, 5, 1),
		(7, 2, 0, 6, 1),
		(8, 1, 1, 7, 1),
		(9, 2, 0, 8, 1),
		(10, 1, 1, 9, 1),
		(11, 2, 0, 11, 1),
		(1, 2, 0, 12, 3),
		(2, 1, 1, 1, 4),
		(3, 2, 0, 2, 5),
		(4, 1, 1, 3, 6),
		(5, 2, 0, 4, 7),
		(6, 1, 1, 5, 9),
		(7, 2, 0, 6, 9),
		(8, 1, 1, 15, 10),
		(9, 2, 0, 16, 11),
		(11, 2, 0, 10, 2),
		(3, 1, 1, 11, 3),
		(5, 2, 0, 12, 4);



-- a. ¿Cuál fue el jugador que inició más veces sesión un mismo día?

SELECT TOP 1 nickname, fecha_ingreso, COUNT(*) AS total_sesiones
FROM SESION
GROUP BY nickname, fecha_ingreso
ORDER BY total_sesiones DESC;


-- b. ¿Cuál es el horario en el que se conecta la mayoría de los jugadores?
SELECT TOP 1 DATEPART(hh,hora_ingreso) AS horario_mas_comun, COUNT(*) AS total_conexiones
FROM SESION
GROUP BY DATEPART(hh,hora_ingreso)
ORDER BY total_conexiones DESC;


-- c. ¿Qué tipo de partida es la más jugada y cuál es el mapa más elegido?

-- Tipo de partida más jugada:
SELECT TOP 1 nombre_modalidad AS tipo_de_partida_mas_jugada, COUNT(*) AS total_partidas
FROM PARTIDA P
JOIN MODALIDAD M ON P.id_modalidad = M.id_modalidad
GROUP BY nombre_modalidad
ORDER BY total_partidas DESC;

-- Mapa más elegido:
SELECT TOP 1 nombre_mapa, COUNT(*) AS total_partidas
FROM PARTIDA P
JOIN MAPA M ON P.id_mapa = M.id_mapa
GROUP BY nombre_mapa
ORDER BY total_partidas DESC;


-- d. ¿Qué héroe de tipo mago es el más utilizado?

SELECT TOP 1 H.nombre_heroe, COUNT(*) AS veces_usado
FROM JUGADOR P
JOIN HEROE H ON P.id_heroe = H.id_heroe
WHERE H.id_rol = 1 -- El rol 1 corresponde con el tipo de héroe "Mago"
GROUP BY H.nombre_heroe
HAVING COUNT(*) > 1
ORDER BY COUNT(*) DESC;


-- e. ¿Qué jugador es el que ganó más partidas? ¿Con qué héroe ganó la mayoría de ellas?

SELECT TOP 1
    S.nickname AS usuario,
    H.nombre_heroe AS heroe,
    COUNT(*) AS partidas_ganadas
FROM
    SESION S
    INNER JOIN JUGADOR J ON S.n_sesion = J.n_sesion
    INNER JOIN HEROE H ON J.id_heroe = H.id_heroe
WHERE
    J.resultado = 1
GROUP BY
    S.nickname,
    H.nombre_heroe
ORDER BY
    COUNT(*) DESC;

-- f. ¿Cuál fue la partida más larga y cuál la más corta? 
-- Proporcione una lista de los nicknames de los jugadores que jugaron la partida más larga.

-- Partida más larga:

SELECT TOP 1 n_partida AS n_partida_mas_larga, duracion_min AS duracion
FROM PARTIDA
ORDER BY duracion_min DESC;

-- Jugadores y sus correspondientes nicknames que participaron en la partida más larga:

SELECT DISTINCT TOP 10 S.nickname
FROM JUGADOR J
JOIN SESION S ON J.n_sesion = S.n_sesion
WHERE J.n_partida = (SELECT TOP 1 n_partida FROM PARTIDA ORDER BY duracion_min DESC);

-- Partida más corta:

SELECT TOP 1 n_partida, duracion_min
FROM PARTIDA
ORDER BY duracion_min ASC;


-- g. Calcule la duración promedio de las partidas de acuerdo a su tipo.

SELECT M.nombre_modalidad AS tipo_de_partida, AVG(P.duracion_min) AS promedio_minutos
FROM PARTIDA P
JOIN MODALIDAD M ON P.id_modalidad = M.id_modalidad
GROUP BY M.nombre_modalidad;
 

-- h. ¿Cuántos jugadores de cada nacionalidad se encuentran conectados en un determinado día (fije usted el día)?

SELECT U.nacionalidad, COUNT(*) AS cantidad_de_conectados
FROM SESION S
JOIN USUARIO U ON S.nickname = U.nickname
WHERE S.fecha_ingreso = '2023-03-15'
GROUP BY  U.nacionalidad;


-- i. ¿Cuántos jugadores argentinos se conectaron por día? Ordene la salida desde el día en el que más se conectaron hasta el que menos se conectaron.

SELECT S.fecha_ingreso, COUNT(*) AS cantidad_conexiones
FROM SESION S
JOIN USUARIO U ON S.nickname = U.nickname
WHERE U.nacionalidad = 'Argentina'
GROUP BY S.fecha_ingreso
ORDER BY cantidad_conexiones DESC;


-- j. ¿Cuál es el daño total que inflige cada héroe (suma del daño infligido por todas sus habilidades)? 
-- ¿Cuál es el héroe cuya habilidad 4 hace más daño?

SELECT S.nombre_heroe, SUM(H.daño) AS daño_total
FROM HABILIDAD H
JOIN HEROE S ON S.id_heroe = H.id_heroe
GROUP BY S.nombre_heroe;

SELECT TOP 1 S.nombre_heroe, H.tipo AS habilidad, H.daño 
FROM HABILIDAD H
JOIN HEROE S ON H.id_heroe = S.id_heroe
WHERE n_habilidad = 4
ORDER BY daño DESC;
 