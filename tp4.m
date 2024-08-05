clc
clear
addpath("funciones")

%{ 
EJERCICIO 1:
------------

Aumentar el contaste, visualizar imagen original RGB, Imagen escala de intensidad, imagen modificada el contraste y sus respectivos histogramas normal

a) 40%
b) 60%
c) 80%
d) Multiplicar por 0.5 y que pasa con el contraste?

%}

img1 = imread("manzanas.jpg");

figure(1)
img_gray=rgb2gray(img1);
img_gray40=img_gray*1.4;
img_gray60=img_gray*1.6;
img_gray80=img_gray*1.8;
img_gray50=img_gray*0.5;
subplot(4,3,1); imshow(img1); title("RGB");
subplot(4,3,2); imshow(img_gray); title("Escala de grises");
subplot(4,3,3); imshow(img_gray40); title("40% mas de contraste");
subplot(4,3,4); imhist(img1); title("Historgrama RGB");
subplot(4,3,5); imhist(img_gray); title("Historgrama Gris");
subplot(4,3,6); imhist(img_gray40); title("Historgrama +40%");
subplot(4,3,7); imshow(img_gray60); title("60% mas de contraste");
subplot(4,3,8); imshow(img_gray80); title("80% mas de contraste");
subplot(4,3,9); imshow(img_gray50); title("50% menos de contraste");
subplot(4,3,10); imhist(img_gray60); title("Historgrama +60%");
subplot(4,3,11); imhist(img_gray80); title("Historgrama +80%");
subplot(4,3,12); imhist(img_gray50); title("Historgrama -50%");

%{ 
EJERCICIO 2:
------------

Aumentar los niveles de intensidad de brillo de la imagen RGB y escala de gris en los siguientes

a) 10 niveles
b) 50 niveles
c) Mostrar imagen original, modificada y sus histogramas.
d) Qué ocurre si le restamos 50 niveles.

%}

img2 = imread("manzanas.jpg");

img_gray=rgb2gray(img2);
img_10=img_gray+10;
img_50=img_gray+50;
img_50menos=img_gray-50;

figure(2)
subplot(4,3,1); imshow(img2); title("RGB");
subplot(4,3,2); imshow(img_gray); title("escala de gris");
subplot(4,3,3); imshow(img_10); title("+10 Brillo");
subplot(4,3,4); imshow(img_50); title("+50 Brillo");
subplot(4,3,5); imshow(img_50menos); title("-50 Brillo");
subplot(4,3,7); imhist(img2); title("Historgrama RGB");
subplot(4,3,8); imhist(img_gray); title("Historgrama Gris");
subplot(4,3,9); imhist(img_10); title("Historgrama +10%");
subplot(4,3,10); imhist(img_50); title("Historgrama +50%");
subplot(4,3,11); imhist(img_50menos); title("Historgrama -50%");

%{ 
EJERCICIO 3:
------------

Encontrar el complemento de una imagen en escala de gris .Visualizar imagen en escala de intensiad ,su complemento y sus respectivos histogramas.

%}

img3 = imread("manzanas.jpg");

img_gray=rgb2gray(img3);
complemento=255-img_gray;

subplot(2,2,1); imshow(img_gray); title("Escala de gris");
subplot(2,2,2); imshow(complemento); title("Complemento");
subplot(2,2,3); imhist(img_gray); title("Histograma gris");
subplot(2,2,4); imhist(complemento); title("Histograma de Complemento");

