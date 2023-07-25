CREATE TABLE equipo (
  ID_Equipo INTEGER PRIMARY KEY,
  Nombre TEXT,
  Anio_Fundacion TEXT,
  Ciudad TEXT
);

CREATE TABLE jugador (
  ID_Jugador INTEGER PRIMARY KEY,
  CURP TEXT,
  Nombre TEXT,
  Apellido1 TEXT,
  Apellido2 TEXT,
  Correo TEXT,
  Telefono TEXT,
  ID_Equipo INTEGER,
  FOREIGN KEY (ID_Equipo) REFERENCES equipo(ID_Equipo)
);

CREATE TABLE arbitro (
  ID_Arbitro INTEGER PRIMARY KEY,
  Nombre TEXT,
  Apellido1 TEXT,
  Apellido2 TEXT,
  Telefono TEXT,
  Aptitud TEXT
);

CREATE TABLE estadisticas_arbitro (
  ID_Arbitro INTEGER,
  Faltas INTEGER,
  Tarjetas_Amarillas INTEGER,
  Tarjetas_Rojas INTEGER,
  PRIMARY KEY (ID_Arbitro),
  FOREIGN KEY (ID_Arbitro) REFERENCES arbitro(ID_Arbitro)
);

CREATE TABLE campo (
  ID_Campo INTEGER PRIMARY KEY,
  Calle TEXT,
  Numero TEXT,
  Ciudad TEXT,
  Primer_Apellido_Encargado TEXT,
  Segundo_Apellido_Encargado TEXT,
  Tipo_Cancha TEXT,
  Tipo_Pasto TEXT,
  Condiciones_Cancha TEXT
);

CREATE TABLE partido (
  ID_Partido INTEGER PRIMARY KEY,
  Fecha TEXT,
  Hora TEXT, 
  ID_Arbitro INTEGER, 
  ID_Campo INTEGER, 
  Tipo_Cancha TEXT, 
   FOREIGN KEY (ID_Arbitro) REFERENCES arbitro(ID_Arbitro),
   FOREIGN KEY (ID_Campo) REFERENCES campo(ID_Campo)
);

CREATE TABLE participantes (
  ID_Partido INTEGER,
  ID_Local INTEGER,
  ID_Visitante INTEGER,
  PRIMARY KEY (ID_Partido),
  FOREIGN KEY (ID_Partido) REFERENCES partido(ID_Partido),
  FOREIGN KEY (ID_Local) REFERENCES equipo(ID_Equipo),
  FOREIGN KEY (ID_Visitante) REFERENCES equipo(ID_Equipo)
);

CREATE TABLE estadisticas_jugador (
  ID_Jugador INTEGER,
  Goles INTEGER,
  Asistencias INTEGER,
  Tarjetas_Amarillas INTEGER,
  Tarjetas_Rojas INTEGER,
  PRIMARY KEY (ID_Jugador),
  FOREIGN KEY (ID_Jugador) REFERENCES jugador(ID_Jugador)
);
