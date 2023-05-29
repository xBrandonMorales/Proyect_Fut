
CREATE TABLE Equipo (
  ID_Equipo INT PRIMARY KEY   NOT NULL,
  Nombre VARCHAR(25)   NOT NULL,
  Ciudad VARCHAR(25)   NOT NULL,
  Año_Fundacion INT   NOT NULL
);

CREATE TABLE Jugador (
  ID_Jugador INT PRIMARY KEY    NOT NULL,
  Nombre VARCHAR(20)    NOT NULL,
  Apellido VARCHAR(20)    NOT NULL,
  Edad INT    NOT NULL,
  Posicion VARCHAR(30)    NOT NULL
);

CREATE TABLE Entrenador (
  ID_Entrenador INT PRIMARY KEY   NOT NULL,
  Nombre VARCHAR(20)    NOT NULL,
  Apellido VARCHAR(20)    NOT NULL,
  Especialidad VARCHAR(30)    NOT NULL
);

CREATE TABLE Partido (
  ID_Partido INT PRIMARY KEY    NOT NULL,
  Fecha DATE    NOT NULL,
  Hora TIME   NOT NULL,
  ID_Equipo_Local INT   NOT NULL,
  ID_Equipo_Visitante INT   NOT NULL,
  FOREIGN KEY (ID_Equipo_Local) REFERENCES Equipo (ID_Equipo)   NOT NULL,
  FOREIGN KEY (ID_Equipo_Visitante) REFERENCES Equipo (ID_Equipo)   NOT NULL
);

CREATE TABLE Campo (
  ID_Campo INT PRIMARY KEY    NOT NULL,
  Nombre VARCHAR(20)    NOT NULL,
  Direccion VARCHAR(40)   NOT NULL,
  Capacidad INT   NOT NULL
);

CREATE TABLE Arbitro (
  ID_Arbitro INT PRIMARY KEY    NOT NULL,
  Nombre VARCHAR(20)    NOT NULL,
  Apellido VARCHAR(20)    NOT NULL,
  Experiencia INT   NOT NULL
);

CREATE TABLE Participa (
  ID_Jugador INT,
  ID_Equipo INT,
  FOREIGN KEY (ID_Jugador) REFERENCES Jugador (ID_Jugador),
  FOREIGN KEY (ID_Equipo) REFERENCES Equipo (ID_Equipo),
  PRIMARY KEY (ID_Jugador, ID_Equipo)
);

CREATE TABLE Dirige (
  ID_Entrenador INT,
  ID_Equipo INT,
  FOREIGN KEY (ID_Entrenador) REFERENCES Entrenador (ID_Entrenador),
  FOREIGN KEY (ID_Equipo) REFERENCES Equipo (ID_Equipo),
  PRIMARY KEY (ID_Entrenador, ID_Equipo)
);

CREATE TABLE Programa (
  ID_Partido INT,
  ID_Campo INT,
  FOREIGN KEY (ID_Partido) REFERENCES Partido (ID_Partido),
  FOREIGN KEY (ID_Campo) REFERENCES Campo (ID_Campo),
  PRIMARY KEY (ID_Partido, ID_Campo)
);

CREATE TABLE Arbitraje (
  ID_Partido INT,
  ID_Arbitro INT,
  FOREIGN KEY (ID_Partido) REFERENCES Partido (ID_Partido),
  FOREIGN KEY (ID_Arbitro) REFERENCES Arbitro (ID_Arbitro),
  PRIMARY KEY (ID_Partido, ID_Arbitro)
);
