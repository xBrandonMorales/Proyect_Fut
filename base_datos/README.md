
Equipo

|Campo          | Tipo           |Descripcion    |
|---------------|----------------|---------------|          
|  Liga      | INT            |  Liga del Equipo |
| ID_Equipo     | INT            | Identificador del equipo |                     
| Nombre        | VARCHAR(25)    | Nombre del equipo |                    
| Capitan       | VARCHAR(25)    | Capitan del equipo |                     
| Correo del Capitan | VARCHAR(30)           | Correo del Capitan | 
| Entrenador      | VARCHAR(25)    | Nombre del entrenador | 
| Numero de telefono     | VARCHAR(25)    | Numero del entrenador | 


Jugador

| Campo         | Tipo           | Descripcion   | 
|---------------|----------------|---------------|
| Curb          | INT            | Identificador del jugador |
| ID_Jugador    | INT            | Identificador del jugador | 
| Apodo         | VARCHAR(20)    | Apodo del jugador |
| Nombre        | VARCHAR(20)    | Nombre del jugador |                     
| Apellido      | VARCHAR(20)    | Apellido del jugador | 
| Numero de playera        | INT            | Identificador del jugador |
| Correo      | VARCHAR(20)    | Correo del jugador |
|Fecha de nacimiento        | INT            | Fecha de nacimiento del jugador |
| Numero de telefono      | VARCHAR(20)    | Telefono del jugador |
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
