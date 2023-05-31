
Equipo

|Campo          | Tipo           |Descripcion    |
|---------------|----------------|---------------|                   
| ID_Equipo     | INT            | Identificador del equipo |                     
| Nombre        | VARCHAR(25)    | Nombre del equipo |                    
| Ciudad        | VARCHAR(25)    | Ciudad del equipo |                     
| Año_Fundacion | INT            | Año de fundación del equipo |      


Jugador

| Campo         | Tipo           | Descripcion   | 
|---------------|----------------|---------------|
| ID_Jugador    | INT            | Identificador del jugador |                     
| Nombre        | VARCHAR(20)    | Nombre del jugador |                     
| Apellido      | VARCHAR(20)    | Apellido del jugador |                     
| Edad          | INT            | Edad del jugador |                     
| Posicion      | VARCHAR(30)    | Posición del jugador en el equipo |                     



Entrenador

| Campo         | Tipo           | Descripcion   | 
|---------------|----------------|---------------|
| ID_Entrenador | INT            | Identificador del entrenador |                     
| Nombre        | VARCHAR(20)    | Nombre del entrenador |                     
| Apellido      | VARCHAR(20)    | Apellido del entrenador |                     
| Especialidad  | VARCHAR(30)    | Especialidad del entrenador |


Partido 

| Campo         | Tipo           | Descripcion   |
|---------------|----------------|---------------|
| ID_Partido    | INT            | Identificador del partido |                     
| Fecha         | DATE           | Fecha en que se juega el partido |                     
| Hora          | TIME           | Hora en que se juega el partido |                     
| ID_Equipo_Local     | INT     | Identificador del equipo local |                     
| ID_Equipo_Visitante | INT     | Identificador del equipo visitante |                     



Campo

| Campo         | Tipo           | Descripcion   | 
|---------------|----------------|---------------|
| ID_Campo      | INT            | Identificador del campo |                     
| Nombre        | VARCHAR(20)    | Nombre del campo |                     
| Direccion     | VARCHAR(40)    | Dirección del campo |                    
| Capacidad     | INT            | Capacidad del campo |                    



Arbitro

| Campo         | Tipo           | Descripcion   | 
|---------------|----------------|---------------|
| ID_Arbitro    | INT            | Identificador del árbitro |                     
| Nombre        | VARCHAR(20)    | Nombre del árbitro |                     
| Apellido      | VARCHAR(20)    | Apellido del árbitro |                     
| Experiencia   | INT            | Experiencia del árbitro |                     


Participa

| Campo         | Tipo           | Descripcion   |
|---------------|----------------|---------------|
| ID_Partido    | INT            | Identificador del partido |                     
| ID_Equipo     | INT            | Identificador del equipo |                     
| ID_Jugador    | INT            | Identificador del jugador |                     



Dirige

| Campo         | Tipo           | Descripcion   | 
|---------------|----------------|---------------|
| ID_Entrenador | INT            | Identificador del entrenador |                     
| ID_Equipo     | INT            | Identificador del equipo |                     

Arbitraje

| Campo         | Tipo           | Descripcion   |  
|---------------|----------------|---------------|
| ID_Partido    | INT            | Identificador del partido |                    
| ID_Arbitro    | INT            | Identificador del árbitro |                     
