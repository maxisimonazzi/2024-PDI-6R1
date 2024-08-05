clc
clear

%{ 
EJERCICIO 1:
------------

a) Crear una imagen de 300 filas y 600 columnas todo negro; indagar sobre
sus dimensiones y tipo.
b) Crear una imagen de 200 filas y 800 columnas toda blanca ,indagar sobre
sus dimensiones y tipo.
c) Crear una imagen de 150x150 y la diagonal con valor 1 indagar sobre sus
dimensiones.
d) Cuál es el rango de valores de una imagen tipo doublé y un tipo uint8.
e) Mediante comando subplot visualizar y agregar nombres a las imágenes
mostradas.

%}

% E1 a
img1a = zeros (300, 600);
whos img1a

% E1 b
img1b = ones (200, 800);
whos img1b

% E1 c
img1c = eye (150, 150);
[m n] = size(img1c)

% E1 d
% El rango de valores que puede tener una variable del tipo double es desde
% -1.79769e+308 a -2.22507e-308 y desde 2.22507e-308 to  1.79769e+308. Los
% cuatros valores los obtenemos con -realmax, -realmin, realmin, realmax.
% El rango de valores que puede tomar una variable del tipo uint8 es desde
% 0 a 255.

% E1 e
figure(1);
subplot(3,1,1);imshow(img1a); title ("Imagen de 300 x 600 negra")
subplot(3,1,2);imshow(img1b); title ("Imagen de 200 x 800 blanca")
subplot(3,1,3);imshow(img1c); title ("Imagen de 150 x 150 con la diagonal blanca")

%{
EJERCICIO 2:
------------

Crear una imagen de 400x400 y subdividir en 4 áreas como se ve en el
gráfico. Cada área debe tener la intensidad especificada.

%}

figure(2);
img2=zeros(400,400);
img2(1:200,1:200)=0.25;
img2(1:200,200:end)=0.5;
img2(200:end,200:end)=0.75;
imshow (img2)

%{
EJERCICIO 3:
------------

a) Leer una imagen ,convertir a gris ,indagar dimensiones y tipo no poner
punto y coma y ver que muestra la pantalla observar los valores
b) Si la imagen es uint8 convertir a doublé del intervalo[0 1] y ver que
muestra la pantalla los valores de los pixeles

%}

% a
figure(3);
img3 = imread("manzanas.jpg");
subplot(2,2,1)
imshow(img3)
title('Imagen original')
img3_gris = rgb2gray(img3);
[F C] = size(img3_gris)
subplot(2,2,2)
imshow(img3_gris)
title('Escala de grises')

% b
img3_double=double(img3)
subplot(2,2,3)
imshow(img3_double)
title('Conversion directa a Double')
% como vemos, hay un problema al momento de mostrar, por que si queremos
% que la imagen vaya del intervalo 0 a 1, tenemos que dividir los valores
% en 255 que son los valores originales de la imagen
subplot(2,2,4)
img4_double=double(img3)/255
imshow(img4_double)
title('Correcion de conversion')

%{
EJERCICIO 4:
------------

a) Usar una imagen del alumno, realizar las sentencias para visualizar los
campos RGb en escalas de intensidad y cual tiene más brillo.
b) Realizar la las sentencias para visualizar los 3 campos en sus
respectivo color
c) Anular un campo y visualizar el resultado de los otro dos, también
visualizar el campo anulado y buscar en internet mezcla de colores en
pantallas.

%}

figure(4);
% a
img4 = imread("manzanas.jpg");
rojo=img4(:,:,1);
verde=img4(:,:,2);
azul=img4(:,:,3);

subplot(3,3,1)
imshow(rojo)
title("Intensidad Rojo")
subplot(3,3,2)
imshow(verde)
title("Intensidad Verde")
subplot(3,3,3)
imshow(azul)
title("Intensidad Azul")

% b
% Visualizar el canal rojo en su color respectivo
subplot(3,3,4);
canal_r=img4; % cargo la imagen original en la variable canal_r
canal_r(:,:,3)=0; % elimino el color azul de la imagen
canal_r(:,:,2)=0; % elimino el color azul de la imagen
imshow(canal_r);
title('Canal Rojo');

% Visualizar el canal verde en su color respectivo
subplot(3,3,5);
canal_g=img4; % cargo la imagen original en la variable canal_g
canal_g(:,:,3)=0;  % elimino el color azul de la imagen
canal_g(:,:,1)=0; % elimino el color rojo de la imagen
imshow(canal_g);
title('Canal Verde');

% Visualizar el canal azul en su color respectivo
subplot(3,3,6);
canal_b=img4; % cargo la imagen original en la variable canal_b
canal_b(:,:,1)=0; % elimino el color rojo de la imagen
canal_b(:,:,2)=0; % elimino el color azul de la imagen
imshow(canal_b);
title('Canal Azul');

% c
% Anular canal azul
azul_anulado=img4;
azul_anulado(:,:,3)=0; %azul anulado
subplot(3,3,9);
imshow(azul_anulado);
title('Canal Azul anulado');

% Anular canal rojo
rojo_anulado=img4;
rojo_anulado(:,:,1)=0; %rojo anulado
subplot(3,3,7);
imshow(rojo_anulado);
title('Canal Rojo anulado');

% Anular canal verde
verde_anulado=img4;
verde_anulado(:,:,2)=0; %verde anulado
subplot(3,3,8);
imshow(verde_anulado);
title('Canal Verde anulado');


%{
EJERCICIO 5:
------------

a) A una imagen en escala de gris double0.5 dividirla en 4 partes iguales y
realizar los siguientes cambios :
b) Mostrar las 4 partes de una imagen en escala de gris separadas

%}

figure(5);
subplot (4,2,[1 4])
img5 = imread("manzanas.jpg");
img5_gris=rgb2gray(img5);
[X Y]=size(img5_gris)
img5_double=im2double(img5_gris)*0.5;
img5_double(1:X/2,Y/2:Y)=0.5;
img5_double(X/2:X,Y/2:Y)=1;
img5_double(X/2:X,1:Y/2)=0.75;
imshow(img5_double)

% parto la imagen en cuadrantes
cuadrante1=img5_gris(1:X/2,1:Y/2); subplot(4,2,5); imshow(cuadrante1); title("Primer cuadrante") % muestro primer cuadrante
cuadrante2=img5_gris(1:X/2,Y/2:Y); subplot(4,2,6); imshow(cuadrante2); title("Segundo cuadrante") % muestro segundo cuadrante
cuadrante3=img5_gris(X/2:X,1:Y/2); subplot(4,2,7); imshow(cuadrante3); title("Tercer cuadrante") % muestro tercer cuadrante
cuadrante4=img5_gris(X/2:X,Y/2:Y); subplot(4,2,8); imshow(cuadrante4); title("Cuarto cuadrante") % muestro cuarto cuadrante




%{
EJERCICIO 6:
------------

Visualizar las siguientes imágenes:
a) Tenga la tercera parte de los pixeles de la imagen en escala de gris.
b) Tenga la quinta parte de los pixeles de la imagen en escala de gris.
c) Tenga la séptima parte de los pixeles de la imagen en escala de gris.

%}

figure(6);

% a
img6 = imread('manzanas.jpg');
[filas, columnas, ~] = size(img6);

% Dividir la imagen en 3 partes verticales
tercios = round(columnas / 3);

% Extraer las tres partes de la imagen
parte1a = img6(:, 1:tercios, :);
parte2a = img6(:, tercios+1:2*tercios, :);
parte3a = img6(:, 2*tercios+1:end, :);

% Convertir la segunda parte a escala de grises
parte2a_gris = rgb2gray(parte2a);

% Convertir la imagen gris a RGB para combinar con las otras partes, esta
% debe estar convertida a un array de 3 dimensiones para poder concatenar
parte2a_gris_a_3d = cat(3, parte2a_gris, parte2a_gris, parte2a_gris);

% Combinar las partes nuevamente
combinada = [parte1a, parte2a_gris_a_3d, parte3a];

% Imagen combinada
subplot(2,3,1)
imshow(combinada);
title('Imagen con una tercera parte en Escala de Grises');

% b
% Dividir la imagen en 5 partes verticales
quintos = round(columnas / 5);

% Extraer las tres partes de la imagen
parte1b = img6(:, 1:quintos, :);
parte2b = img6(:, quintos+1:2*quintos, :);
parte3b = img6(:, 2*quintos+1:3*quintos, :);
parte4b = img6(:, 3*quintos+1:4*quintos, :);
parte5b = img6(:, 4*quintos+1:end, :);

% Convertir la segunda parte a escala de grises
parte3b_gris = rgb2gray(parte3b);

% Convertir la imagen gris a RGB para combinar con las otras partes, esta
% debe estar convertida a un array de 3 dimensiones para poder concatenar
parte3b_gris_a_3d = cat(3, parte3b_gris, parte3b_gris, parte3b_gris);

% Combinar las partes nuevamente
combinada2 = [parte1b, parte2b, parte3b_gris_a_3d, parte4b, parte5b];

% Imagen combinada
subplot(2,3,2)
imshow(combinada2);
title('Imagen con una quinta parte en Escala de Grises');

% c
% Dividir la imagen en 7 partes verticales
septimos = round(columnas / 7);

% Extraer las tres partes de la imagen
parte1c = img6(:, 1:septimos, :);
parte2c = img6(:, septimos+1:2*septimos, :);
parte3c = img6(:, 2*septimos+1:3*septimos, :);
parte4c = img6(:, 3*septimos+1:4*septimos, :);
parte5c = img6(:, 4*septimos+1:5*septimos, :);
parte6c = img6(:, 5*septimos+1:6*septimos, :);
parte7c = img6(:, 6*septimos+1:end, :);

% Convertir la segunda parte a escala de grises
parte4c_gris = rgb2gray(parte4c);

% Convertir la imagen gris a RGB para combinar con las otras partes, esta
% debe estar convertida a un array de 3 dimensiones para poder concatenar
parte4c_gris_a_3d = cat(3, parte4c_gris, parte4c_gris, parte4c_gris);

% Combinar las partes nuevamente
combinada3 = [parte1c, parte2c, parte3c, parte4c_gris_a_3d, parte5c, parte6c, parte7c];

% Imagen combinada
subplot(2,3,3)
imshow(combinada3);
title('Imagen con una septima parte en Escala de Grises');

% ------------------------------------------------------
% Alternativa de interpretacion, reducir la resolucion de las fotos en una
% proporcion de 3, 5 y 7
% ------------------------------------------------------

img6a = imread('manzanas.jpg');
img_gris = rgb2gray(img6a);
tercera = img_gris(1:3:end,1:3:end);
quinta= img_gris(1:5:end,1:5:end);
septima = img_gris(1:7:end,1:7:end);
subplot(2,3,4);imshow(tercera);title("Un tercio de pixeles")
subplot(2,3,5);imshow(quinta);title("Un quinta de pixeles")
subplot(2,3,6);imshow(septima);title("Un septimo de pixeles")

%{
EJERCICIO 7:
------------

Usando subplot visualizar imagen original; imagen escala de intensidad y
su transpuesta.

%}

figure(7);
img7 = imread("manzanas.jpg"); % cargo la imagen de las manzanas
img7_gris = rgb2gray(img7); % % convierto a escala de grises
img7_gris_trans = img7_gris'; % Transponer la imagen en escala de grises

% Imagen original
subplot(1, 3, 1);
imshow(img7);
title('Imagen Original');

% Imagen en escala de grises
subplot(1, 3, 2);
imshow(img7_gris);
title('Imagen en Escala de Grises');

% Imagen en escala de grises transpuesta
subplot(1, 3, 3);
imshow(img7_gris_trans);
title('Imagen Transpuesta');