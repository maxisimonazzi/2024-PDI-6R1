clc
clear
addpath("funciones")

% Primer parcial Procesamiento Digital de Imágenes 2024
% Tema 1

%{
EJERCICIO 1:
------------

a) ¿Qué es una imagen y como la considera MATLAB?
b) ¿Cuál es el rango de valores de una imagen double, uint8 y binaria?
c) Generar un vector fila 1 2 3 4 5 6 7 8 9 10 11
d) El vector del enunciado anterior convertirlo a columna.
e) De un ejemplo de generar una matriz con MATLAB
%}

% a) Una imagen es una representación visual de datos y que en MATLAB lo
% representamos como una matriz, típicamente en forma de una matriz de
% píxeles. Cada píxel tiene un valor que determina su color o intensidad.
% La forma en que se almacenan los valores depende del tipo de la imagen:
% Imágenes en escala de grises: Se almacenan como matrices 2D, donde cada
% elemento de la matriz representa la intensidad de un píxel.
% Imágenes en color: Se almacenan como matrices 3D, donde las dos primeras
% dimensiones corresponden a las coordenadas espaciales y la tercera
% dimensión corresponde a los canales de color (R, G, B).
% Imágenes binarias: Se almacenan como matrices 2D con valores 0 o 1.
% Por ejemplo, una imagen en escala de grises de 256x256 píxeles se
% almacenaría como una matriz de tamaño 256x256, mientras que una imagen en
% color de 256x256 píxeles se almacenaría como una matriz de tamaño
% 256x256x3.

% b) Double: Son números pertenecientes a los reales, por ende pueden ser
% decimales, y sus valores van de -1.79769e+308 a -2.22507e-308 y desde
% 2.22507e-308 to  1.79769e+308
% Uint8: Son números pertenecientes a los enteros. Sus valores van de 0 a
% 255.
% Binary: Solo pueden tomar 2 valores, 0 (falso) y 1 (verdadero).

% c)
fila = [1:11]

% d)
columna = fila'

% e)
matriz = [1 2 3; 4 5 6; 7 8 9]

%{
EJERCICIO 2:
------------

Crear la siguiente imagen de 400 filas x600 columnas:
1 = Blanco
2 =0.4
3 =0.8
%}

figure(2)

% genero una imagen negra de 600 x 600 pixeles
img2 = zeros(400,600);

% obtengo los valores de la cantidad de filas en F y cantidad de columnas en C
[F C] = size(img2);

% pinto de blanco las filas de la mitad superior hasta la ultima columna
img2(1:F/2,1:C)=1;

% pinto con un gris al 40% las filas de la mitad inferior hasta 1/3 de las columnas
img2(F/2:F,1:C/3)=0.4;

% pinto con un gris al 80% las filas de la mitad inferior desde 1/3 hasta 2/3 de las columnas
img2(F/2:F,C/3:2*C/3)=0.8;

% muestro la imagen
imshow(img2)

%{
EJERCICIO 3:
------------

Usando los comandos subplot y la imagen del alumno hacer el siguiente
procesamiento:

a) Visualizar la imagen RGB y en escala de intensidad
b) Visualizar los campos en escala de intensidad
c) Visualizar los campos en su respectivo color
d) Hacer el siguiente proceso:
%}

figure(3)
img3 = imread("manzanas.jpg"); % cargo la imagen de las manzanas
img_gris3 = rgb2gray(img3); % convierto a escala de grises
img_r = img3(:,:,1); % Canal rojo
img_g = img3(:,:,2); % Canal verde
img_b = img3(:,:,3); % Canal azul

% Visualizar la imagen original RGB
subplot(3, 3, 1);
imshow(img3);
title('Imagen RGB');

% Visualizar la imagen en escala de grises
subplot(3, 3, 2);
imshow(img_gris3);
title('Escala de Grises');

% Visualizar la imagen modificada por cuartos
subplot(3, 3, 3);
img_mod=img_gris3;
[X Y] = size(img_mod); % obtengo los valores de la cantidad de filas en X y cantidad de columnas en Y
img_mod(1:X/2,1:Y/2)=1;
img_mod(X/2:X,Y/2:Y)=255;
imshow(img_mod);
title('Imagen modificada');

% Visualizar el canal rojo en escala de intensidad
subplot(3, 3, 4);
imshow(img_r);
title('Canal Rojo (Intensidad)');

% Visualizar el canal verde en escala de intensidad
subplot(3, 3, 5);
imshow(img_g);
title('Canal Verde (Intensidad)');

% Visualizar el canal azul en escala de intensidad
subplot(3, 3, 6);
imshow(img_b);
title('Canal Azul (Intensidad)');

% Visualizar el canal rojo en su color respectivo
subplot(3, 3, 7);
canal_r=img3; % cargo la imagen original en la variable canal_r
canal_r(:,:,3)=0; % elimino el color azul de la imagen
canal_r(:,:,2)=0; % elimino el color azul de la imagen
imshow(canal_r);
title('Canal Rojo');

% Visualizar el canal verde en su color respectivo
subplot(3, 3, 8);
canal_g=img3; % cargo la imagen original en la variable canal_g
canal_g(:,:,3)=0;  % elimino el color azul de la imagen
canal_g(:,:,1)=0; % elimino el color rojo de la imagen
imshow(canal_g);
title('Canal Verde');

% Visualizar el canal azul en su color respectivo
subplot(3, 3, 9);
canal_b=img3; % cargo la imagen original en la variable canal_b
canal_b(:,:,1)=0; % elimino el color rojo de la imagen
canal_b(:,:,2)=0; % elimino el color azul de la imagen
imshow(canal_b);
title('Canal Azul');

%{
EJERCICIO 4:
------------

a) Visualizar Imagen original del alumno, imagen en escala de grises,
histograma Normal, acumulativo y transpuesta
b) Implementar el apartado anterior con funciones
%}

figure(4);
img4 = imread("manzanas.jpg"); % cargo la imagen de las manzanas
img_gris4 = rgb2gray(img4); % % convierto a escala de grises
[cuentas, bins] = imhist(img_gris4); % Almaceno los datos del histograma en las variables counts y bins
cuentas_acumuladas = cumsum(cuentas); % Calcular el histograma acumulativo
img_gris_trans = img_gris4'; % Transponer la imagen en escala de grises

% Imagen original
subplot(2, 3, 1);
imshow(img4);
title('Imagen Original');

% Imagen en escala de grises
subplot(2, 3, 2);
imshow(img_gris4);
title('Imagen en Escala de Grises');

% Histograma normal
subplot(2, 3, 4);
imhist(img_gris4);
title('Histograma Normal');

% Histograma acumulativo
subplot(2, 3, 5);
plot(bins, cuentas_acumuladas);
title('Histograma Acumulativo');
xlabel('Intensidad');
ylabel('Frecuencia Acumulativa');

% Imagen en escala de grises transpuesta
subplot(2, 3, [3 6]);
imshow(img_gris_trans);
title('Imagen Transpuesta');



% Realizado con funciones
% -----------------------

img_func = imread("manzanas.jpg"); % cargo la imagen de las manzanas

% Imagen original
subplot(2, 3, 1);
mostrar_imagen(img_func,'Imagen Original')

% Imagen en escala de grises
subplot(2, 3, 2);
grises = convertir_escala_grises(img_func);
mostrar_imagen(grises,'Imagen en escala de grises')

% Histograma normal
subplot(2, 3, 4);
histograma(grises)

% Histograma acumulativo
subplot(2, 3, 5);
histograma_acumulativo(grises,'Histograma acumulativo','Intensidad','Frecuencia Acumulativa')

% Imagen en escala de grises transpuesta
subplot(2, 3, [3 6]);
mostrar_transpuesta(grises,'Imagen Transpuesta')


%{
EJERCICIO 5:
------------

Implementar los bloques de simulink para visualizar con la cámara la imagen
en Color, en escala de grises y su transpuesta. De no disponer de una
cámara usar una imagen.
%}






