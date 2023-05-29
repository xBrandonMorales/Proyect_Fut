
CREATE TABLE Equipo (
  ID_Equipo INT PRIMARY KEY,
  Nombre VARCHAR(255),
  Ciudad VARCHAR(255),
  Año_Fundacion INT
);

CREATE TABLE Jugador (
  ID_Jugador INT PRIMARY KEY,
  Nombre VARCHAR(20),
  Apellido VARCHAR(20),
  Edad INT,
  Posicion VARCHAR(30)
);

CREATE TABLE Entrenador (
  ID_Entrenador INT PRIMARY KEY,
  Nombre VARCHAR(20),
  Apellido VARCHAR(20),
  Especialidad VARCHAR(30)
);

CREATE TABLE Partido (
  ID_Partido INT PRIMARY KEY,
  Fecha DATE,
  Hora TIME,
  ID_Equipo_Local INT,
  ID_Equipo_Visitante INT,
  FOREIGN KEY (ID_Equipo_Local) REFERENCES Equipo (ID_Equipo),
  FOREIGN KEY (ID_Equipo_Visitante) REFERENCES Equipo (ID_Equipo)
);

CREATE TABLE Campo (
  ID_Campo INT PRIMARY KEY,
  Nombre VARCHAR(20),
  Direccion VARCHAR(40),
  Capacidad INT
);

CREATE TABLE Arbitro (
  ID_Arbitro INT PRIMARY KEY,
  Nombre VARCHAR(20),
  Apellido VARCHAR(20),
  Experiencia INT
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
