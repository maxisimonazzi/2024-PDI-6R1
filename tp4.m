clc
clear
addpath("funciones")

%{ 
EJERCICIO 1:
------------

Aumentar el contaste, visualizar imagen original RGB, Imagen escala de
intensidad, imagen modificada el contraste y sus respectivos histogramas
normal

a) 40%
b) 60%
c) 80%
d) Multiplicar por 0.5 y que pasa con el contraste?

%}

img1 = imread("manzanas.jpg");
figure(1)
img1_gris=rgb2gray(img1);
img1_gris40=img1_gris*1.4;
img1_gris60=img1_gris*1.6;
img1_gris80=img1_gris*1.8;
img1_gris50=img1_gris*0.5;

subplot(4,3,1); imshow(img1); title("RGB");
subplot(4,3,2); imshow(img1_gris); title("Escala de grises");
subplot(4,3,3); imshow(img1_gris40); title("40% mas de contraste");
subplot(4,3,4); imhist(img1); title("Historgrama RGB");
subplot(4,3,5); imhist(img1_gris); title("Historgrama Gris");
subplot(4,3,6); imhist(img1_gris40); title("Historgrama +40%");
subplot(4,3,7); imshow(img1_gris60); title("60% mas de contraste");
subplot(4,3,8); imshow(img1_gris80); title("80% mas de contraste");
subplot(4,3,9); imshow(img1_gris50); title("50% menos de contraste");
subplot(4,3,10); imhist(img1_gris60); title("Historgrama +60%");
subplot(4,3,11); imhist(img1_gris80); title("Historgrama +80%");
subplot(4,3,12); imhist(img1_gris50); title("Historgrama -50%");

%{ 
EJERCICIO 2:
------------

Aumentar los niveles de intensidad de brillo de la imagen RGB y escala de
gris en los siguientes

a) 10 niveles
b) 50 niveles
c) Mostrar imagen original, modificada y sus histogramas.
d) Qué ocurre si le restamos 50 niveles.

%}

img2 = imread("manzanas.jpg");
figure(2)
img2_gris=rgb2gray(img2);
img2_10=img2_gris+10;
img2_50=img2_gris+50;
img2_50menos=img2_gris-50;

subplot(4,3,1); imshow(img2); title("RGB");
subplot(4,3,2); imshow(img2_gris); title("Escala de gris");
subplot(4,3,3); imshow(img2_10); title("+10 Brillo");
subplot(4,3,4); imshow(img2_50); title("+50 Brillo");
subplot(4,3,5); imshow(img2_50menos); title("-50 Brillo");
subplot(4,3,7); imhist(img2); title("Historgrama RGB");
subplot(4,3,8); imhist(img2_gris); title("Historgrama Gris");
subplot(4,3,9); imhist(img2_10); title("Historgrama +10%");
subplot(4,3,10); imhist(img2_50); title("Historgrama +50%");
subplot(4,3,11); imhist(img2_50menos); title("Historgrama -50%");

%{ 
EJERCICIO 3:
------------

Encontrar el complemento de una imagen en escala de gris .Visualizar imagen
en escala de intensiad, su complemento y sus respectivos histogramas.

%}

img3 = imread("manzanas.jpg");
figure(3)
img3_gris=rgb2gray(img3);
complemento=255-img3_gris;

subplot(2,2,1); imshow(img3_gris); title("Escala de gris");
subplot(2,2,2); imshow(complemento); title("Complemento");
subplot(2,2,3); imhist(img3_gris); title("Histograma gris");
subplot(2,2,4); imhist(complemento); title("Histograma de complemento");

%{ 
EJERCICIO 4:
------------

Binarizar una imagen usando los dos métodos y vistos.

%}

img4 = imread("manzanas.jpg");
figure(4)
img4_gris=rgb2gray(img4);
binaria= im2bw(img4_gris);

subplot(2,2,1); imshow(img4_gris); title("Escala de gris");
subplot(2,2,2); imshow(binaria); title("Binaria");
subplot(2,2,3); imhist(img4_gris); title("Histograma gris");
subplot(2,2,4); imhist(binaria); title("Histograma binario");

%{ 
EJERCICIO 5:
------------

Modifique el contraste aplicando la sentencia J=imadjust(I), muestre la
imagen fuente y la modificada y sus respectivos histogramas.

%}

img5 = imread("manzanas.jpg");
figure(5)
img5_gris=rgb2gray(img5);
grismodificada= imadjust(img5_gris);

subplot(2,2,1); imshow(img5_gris); title("Escala de gris");
subplot(2,2,2); imshow(grismodificada); title("Contraste Modificado");
subplot(2,2,3); imhist(img5_gris); title("Histograma gris");
subplot(2,2,4); imhist(grismodificada); title("Histograma Contraste Modificado");

%{ 
EJERCICIO 6:
------------

Dada una imagen cualquiera corregir su contraste mediante la sentencia
j=histeq(I,n) visualizar la imagen original y corregida, graficar los
histogramas normal y acumulativo de ambas imágenes

%}

img6 = imread("manzanas.jpg");
figure(6)

img6_gris=rgb2gray(img6);
img6_grisEQ=histeq(img6_gris,256);

[cuentas_sineq, bin_sineq] = imhist(img6_gris);
cuenta_acumulada_sineq = cumsum(cuentas_sineq);

[cuentas_eq, bin_eq] = imhist(img6_grisEQ);
cuentas_acumulada_eq = cumsum(cuentas_eq);

subplot(2,2,1); imshow(img6_gris); title("Escala de gris");
subplot(2,2,2);imshow(img6_grisEQ); title("Imagen Ecualizada");
subplot(2,2,3);plot(bin_sineq, cuenta_acumulada_sineq); title("Histograma sin ecualizar")
subplot(2,2,4);plot(bin_eq, cuentas_acumulada_eq); title("Histograma Ecualizado");


%{ 
EJERCICIO 7:
------------

a) Realizar la suma entre dos imágenes a y b, color y en escala de
intensidad, mostrar cada imagen y la suma resultante.
b) Realizar la resta entre las imágenes del apartado anterior en color y
escala de grises, mostrar la resta.
c) Realizar la operación AND y OR entre dos imágenes binarizadas
previamente con la función im2bw. Realizar la operación lógica NOT a una
imagen.

%}

img7a = imread("manzanas.jpg");
img7b = imread("marte.jpg");
figure(7)

img7a_gray=rgb2gray(img7a);
img7b_gray=rgb2gray(img7b);
img7aBW=im2bw(img7a_gray);
img7bBW=im2bw(img7b_gray);
suma=img7a_gray+img7b_gray; % Operacion Suma
resta=img7a_gray-img7b_gray; % Operacion Resta
ANDimages=img7aBW&img7bBW; % Operacion AND
ORimages=img7aBW|img7bBW; % Operacion OR
NOTimg7a=~img7aBW; % Operacion NOT

%Graficamos con plot
subplot(3,3,1); imshow(img7a); title('Imagen 1 original');
subplot(3,3,2); imshow(img7b); title('Imagen 2 original');
subplot(3,3,4); imshow(img7a_gray); title('Imagen 1 escala de gris');
subplot(3,3,5); imshow(img7b_gray); title('Imagen 2 escala de gris');
subplot(3,3,7); imshow(suma); title('Suma de las imagenes');
subplot(3,3,8); imshow(resta); title('Resta de las imagenes');
subplot(3,3,3); imshow(ANDimages); title('Operacion AND');
subplot(3,3,6); imshow(ORimages); title('Operacion OR');
subplot(3,3,9); imshow(NOTimg7a); title('Operacion NOT');

%{ 
EJERCICIO 8:
------------

Realizar la operación de mezclado alfa entre dos imágenes a escala de
grises. Usando la siguiente formula.

Iα(x,y)=(1-α)*Ia(x,y)+α*Ib(x,y)
Para α=0.7

%}

img8a = imread("manzanas.jpg");
img8b = imread("marte.jpg");
figure(8)

alfa=0.9;
img8a_gris=rgb2gray(img8a);
img8b_gris=rgb2gray(img8b);
mix_alfa=(1-alfa)*img8a_gris+alfa*img8b_gris; % Mezclado Alfa

%Grafico Plot
subplot(2,2,1); imshow(img8a_gris); title('Imagen 1');
subplot(2,2,2); imshow(img8b_gris); title('Imagen 2');
subplot(2,2,3); imshow(mix_alfa); title('Mezclado Alfa');

%{ 
EJERCICIO 9:
------------

Hacer las siguientes funciones:

a) Mostrar imagen RGB, escala de intensidad y la transpuesta.
b) Mostrar la suma de dos imágenes en escala de gris

%}

gris_transpuesta("manzanas.jpg")

suma_imagenes("manzanas.jpg", "marte.jpg")

%{ 
EJERCICIO 10:
------------

Implementar usando simulink los siguientes diagramas:

a) Que muestre el complemento de una imagen.
b) Que muestre la imagen original RGB; imagen en escala de gris y binaria

%}