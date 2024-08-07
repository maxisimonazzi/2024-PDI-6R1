clc
clear
addpath("funciones")

% Primer parcial Procesamiento Digital de Imágenes 2024
% Tema 1

%{
EJERCICIO 1:
------------

Realizar las siguientes operaciones:

a) Aumentar el contraste un 70%.
b) Aumentar el brillo 70 niveles.
c) Binarizacion de una imagen por los 2 procedimientos.
d) Mostrar imagen original RGB, escala de grises y la modificada.

%}

img1 = imread("manzanas.jpg");
figure(1)

img1_gris=rgb2gray(img1);
img1_gris_70porc=img1_gris*1.7;
img1_gris_70niveles=img1_gris+70;
img1_gris_bin1=im2bw(img1_gris); %Binarizamos la imagen 2 con el segundo metodo
img1_gris_bin2=img1_gris>128; %Binarizamos la imagen 1 con el primer metodo

subplot(3,2,1);imshow(img1);title("Imagen original");
subplot(3,2,2);imshow(img1_gris);title("Escala de gris");
subplot(3,2,3);imshow(img1_gris_70porc);title("Aumento +70% contraste");
subplot(3,2,4);imshow(img1_gris_70niveles);title("Aumento +70 brillo");
subplot(3,2,5);imshow(img1_gris_bin1);title("Binarizacion metodo 1");
subplot(3,2,6);imshow(img1_gris_bin2);title("Binarizacion metodo 2");

%{
EJERCICIO 2:
------------

Realizar las siguientes operaciones:

a) Diferencia entre dos imágenes (RGB y escalas de intensidad).
b) Rota 120° una imagen en escala de intensidad.
c) Implementar los bloques de simulink que permita visualizar imagen RGB entregada por la cámara, escala de gris y producir el siguiente efecto:

%}

img2a = imread("manzanas.jpg");
img2b = imread("marte.jpg");
figure(2)

img2a_gris=rgb2gray(img2a);
img2b_gris=rgb2gray(img2b);
diferencia_rgb=img2a-img2b;
diferencia_gris=img2a_gris-img2b_gris;
img2a_rotada=imrotate(img2a_gris,120);

subplot(2,3,1);imshow(img2a);title("Imagen 1");
subplot(2,3,2);imshow(img2b);title("Imagen 2");
subplot(2,3,4);imshow(diferencia_rgb);title("Diferencia RGB");
subplot(2,3,5);imshow(diferencia_gris);title("Diferencia Escala de grises");
subplot(2,3,[3,6]);imshow(img2a_rotada);title("Rotada 120°");

%{
EJERCICIO 3:
------------

Realizar el filtrado espacial a una imagen con ruido sal y pimienta 20% usando los siguientes filtros:

a) H es filtro box aplicar convolución, symmetric y full.
b) Filtro máximo y mínimo.

%}

img3 = imread("manzanas.jpg");
figure(3)

img3_gris=rgb2gray(img3);
img3_ruido_sp=imnoise(img3,"salt & pepper",0.2);
img3_gris_ruido_sp=imnoise(img3_gris,"salt & pepper",0.2);
n = 3; %tamaño del filtro
H=1/9*ones(n);
box_rgb = imfilter(img3_ruido_sp, H, 'symmetric', 'conv', 'full');
box_gris = imfilter(img3_gris_ruido_sp, H, 'symmetric', 'conv', 'full');
filtro_maximo = ordfilt2(img3_gris_ruido_sp, n^2, ones(n));
filtro_maximo2 = ordfilt2(filtro_maximo, n^2, ones(n));
filtro_minimo = ordfilt2(img3_gris_ruido_sp, 1, ones(n));


subplot(2,4,1);imshow(img3);title("Imagen original");
subplot(2,4,2);imshow(img3_ruido_sp);title("Sal y pimienta 20% RGB");
subplot(2,4,3);imshow(img3_gris);title("Imagen Escala de grises");
subplot(2,4,4);imshow(img3_gris_ruido_sp);title("Sal y pimienta 20% escala de grises");
subplot(2,4,5);imshow(box_rgb);title("Filtro box convolucion rgb");
subplot(2,4,6);imshow(box_gris);title("Filtro box convolucion gris");
subplot(2,4,7);imshow(filtro_maximo);title("Filtro maximo");
subplot(2,4,8);imshow(filtro_minimo);title("Filtro minimo");


%Opcion 2 para filtro maximo y minimo
figure(4)
minimo = nlfilter(img3_gris_ruido_sp, [n n], @minNL);
maximo = nlfilter(img3_gris_ruido_sp, [n n], @maxNL);

subplot(1,2,1);imshow(minimo);title("Filtro minimo");
subplot(1,2,2);imshow(maximo);title("Filtro maximo");

function Z = maxNL (x)
    Z = (max(max(x)));
end

function Z = minNL (x)
    Z = (min(min(x)));
end

%{
EJERCICIO 4:
------------

Implementar los Bloques de simulink para ver el complemento de una imagen sin ruido y su transpuesta con ruido. La imagen debe ser la entregada por una cámara.

%}

%{
EJERCICIO 5:
------------

Implementar con simulink los bloques para filtrar una imagen con ruido mediante el filtro de la mediana. La imagen debe ser entregada por la cámara y visualizar imagen RGB, escala de gris, imagen con ruido y filtrada.

%}