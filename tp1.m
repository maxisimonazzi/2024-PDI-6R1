clc
clear 

%{ 
EJERCICIO 1:
------------

a) Cree un vector fila que contenga los elementos: 32, 4, 81, e^2.5,
cos(π/3) y 14,2
b) Cree un vector columna que contenga los elementos: 1, 6, 8, 11, 9

%}

% E1 a
vectorFila1 = [32 4 81 exp(2.5) cos(pi/3) 14.2]

% E1 b
vectorColumna1 = [1; 6; 8; 11; 9]


%{ 
EJERCICIO 2:
------------

Al vector del problema 1 crearlo como vector columna

%}

% E2 alternativa a
vectorColumna2a = [32; 4; 81; exp(2.5); cos(pi/3); 14.2]

% E2 alternativa b
vectorColumna2b = vectorFila1'


%{ 
EJERCICIO 3:
------------

Cree un vector columna que contenga los elementos: 55, 14, ln(51), 987, 0 y
sen(2,5π).

%}

vectorColumna3 = [55; 14; log(51); 987; 0; sin(2.5*pi)]


%{ 
EJERCICIO 4:
------------

Cree un vector fila en el cual el primer elemento sea 1 y el último
elemento 33 con una distancia de 2 entre los elementos (1,3,5,………,33).

%}

vectorFila4 = [1:2:33]


%{ 
EJERCICIO 5:
------------

Cuál es la sentencia en MATLAB para generar el vector num

num  =  1  2  3  4  5  6  7  8  9  10

%}

num = [1:10]


%{ 
EJERCICIO 6:
------------

Cree un vector columna en el cual su primer elemento sea 15, la distancia
de los elementos sea (-5), y donde el último sea (-25). (Un vector columna
se puede crear a partir de la transposición de un vector fila

%}

vectorColumna6 = [15:-5:-25]'


%{ 
EJERCICIO 7:
------------

Cree la siguiente matriz c

    2  4  6  8 10
C = 3  6  9 12 15
    7 14 21 28 35

%}

matriz7 = [2 4 6 8 10; 3 6 9 12 15; 7 14 21 28 35]