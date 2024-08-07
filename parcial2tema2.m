clc
clear
addpath("funciones")

% Primer parcial Procesamiento Digital de Imágenes 2024
% Tema 1

%{
EJERCICIO 1:
------------

Realizar las siguientes operaciones:

a) Aumentar el contraste un 40%.
b) Aumentar el brillo 80 niveles.
c) Complemento de una imagen
d) Mostrar imagen original RGB, escala de grises y la modificada.

%}

img1 = imread("manzanas.jpg");
figure(1)

img1_gris=rgb2gray(img1);
img1_gris_40porc=img1_gris*1.4;
img1_gris_80niveles=img1_gris+80;
img1_gris_comp=256-img1_gris;

subplot(3,2,1);imshow(img1);title("Imagen original");
subplot(3,2,2);imshow(img1_gris);title("Escala de gris");
subplot(3,2,3);imshow(img1_gris_40porc);title("Aumento contraste 40%");
subplot(3,2,4);imshow(img1_gris_80niveles);title("Aumento +80 niveles");
subplot(3,2,5);imshow(img1_gris_comp);title("Complemento");

%{
EJERCICIO 2:
------------

Realizar las siguientes operaciones:

a) Suma entre dos imágenes (RGB y escalas de intensidad).
b) Rota 60° una imagen en escala de intensidad.
c) Implementar los bloques de simulink que permita visualizar imagen RGB entregada por la cámara, escala de gris y producir el siguiente efecto:

%}

img2a = imread("manzanas.jpg");
img2b = imread("marte.jpg");
figure(2)

img2a_gris=rgb2gray(img2a);
img2b_gris=rgb2gray(img2b);
suma_rgb=img2a+img2b;
suma_gris=img2a_gris+img2b_gris;
img2a_rotada=imrotate(img2a_gris,60);

subplot(3,2,1);imshow(img2a);title("Imagen 1");
subplot(3,2,2);imshow(img2b);title("Imagen 2");
subplot(3,2,3);imshow(suma_rgb);title("Suma RGB");
subplot(3,2,4);imshow(suma_gris);title("Suma Escala de grises");
subplot(3,2,5);imshow(img2a_rotada);title("Rotada 60°");

%{
EJERCICIO 3:
------------

Realizar el filtrado espacial a una imagen con ruido sal y pimienta 20% usando los siguientes filtros:

a) H es filtro Gausiano aplicar convolución, replicate y same.
b) Filtro mediano.

%}
