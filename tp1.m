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

%E7 alternativa a
matriz7a = [2 4 6 8 10; 3 6 9 12 15; 7 14 21 28 35]

%E7 alternativa b
matriz7b = [2:2:10; 3:3:15; 7:7:35]


%{ 
EJERCICIO 8:
------------

Cree la siguiente matriz c

    2  4  6  8 10
C = 3  6  9 12 15
    7 14 21 28 35

a) Crear un vector columna de tres elementos, llamado Ua, que contenga los
elementos de la tercera columna de C.
b) Crear un vector columna de cinco elementos, llamado Ub, que contenga los
elementos de la segunda fila de C.
c) Crear un vector columna de nueve elementos, llamado Uc, que contenga los
elementos de la primera, tercera y quinta columna de C.
d) Crear un vector columna de diez elementos llamado Ud, que contenga los
elementos de la primera y segunda fila de C.

%}

%E8 a
vectorColumnaUa = matriz7b(: , 3)

%E8 b
vectorColumnaUb = matriz7b(2 , :)'

%E8 c
vectorColumnaUc = [matriz7b(: , 1); matriz7b(: , 3); matriz7b(: , 5)]

%E8 d
vectorColumnaUd = [matriz7b(1 , :) matriz7b(2 , :)]'


%{ 
EJERCICIO 9:
------------

Cree la siguiente matriz A utilizando vector

       1  2  3  4  5  6  7
A  =   2  4  6  8 10 12 14
      21 18 15 12  9  6  3
       5 10 15 20 25 30 35

a) cree una matriz B de 3 x 4 a partir de la primera, tercera y cuarta
fila, y de la primera, tercera, quinta, y séptima columna de la matriz A.
b) cree un vector fila de 15 elementos llamado u, a partir de los elementos
de la tercera fila y de la quinta a la séptima columna de la matriz A.

%}

matrizA = [1:7; 2:2:14; 21:-3:3; 5:5:35]

%E9 a
matrizB = [matrizA(1 , 1) matrizA(1 , 3) matrizA(1 , 5) matrizA(1 , 7); matrizA(3:4 , 1) matrizA(3:4 , 3) matrizA(3:4 , 5) matrizA(3:4 , 7)]

%E9 alternativa a
vectorua = [matrizA(3 , :) matrizA(: , 5)' matrizA(: , 6)' matrizA(: , 7)']

%E9 alternativa b
vectorub = [matrizA(3 , :) reshape(matrizA(: , 5:7),1,12)]


%{ 
EJERCICIO 10:
------------

Usando los comandos zeros, ones y eye generar una matriz de 300x300 y con
la sentencia imshow visualizar

%}

zeros = zeros (300, 300)
ones = ones (300, 300)
eye = eye (300, 300)

%E10 alternativa a
subplot(2,3,1);imshow(zeros); title("Zeros")
subplot(2,3,2);imshow(ones); title("Ones")
subplot(2,3,3);imshow(eye); title("Eye")

%E10 alternativa b
subplot(2,3,4:6);imshow([zeros ones eye]); title("Vector con Zeros, Ones, Eye")