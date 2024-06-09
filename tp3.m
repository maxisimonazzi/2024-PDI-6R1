clc
clear
addpath("funciones")

%{ 
EJERCICIO 1:
------------

a) Calcular y desplegar el Histograma normal de una imagen.

b) Usando los comandos subplot visualizar imagen original, imagen en escala
de gris y su respectivo Histograma normal.

%}

img1a = imread("manzanas.jpg");

figure(1)
subplot(2,2,1)
imshow(img1a)
title("Imagen original")

subplot(2,2,2)
img_gris = rgb2gray(img1a);
imshow(img_gris)
title("Imagen escala de grises")
subplot(2,2,3)
imhist(img1a)
title("Histograma original")
subplot(2,2,4)
imhist(img_gris)
title("Histograma escala de grises")


%{ 
EJERCICIO 2:
------------

a) Hacer el programa para visualizar el Histograma Acumulativo.

b) Usando los comandos subplot visualizar imagen original, imagen en escala
de gris y su respectivo Histograma normal y acumulativo

%}

img2 = imread("manzanas.jpg");
figure(2)
img2_gris = rgb2gray(img2);
[cuentas, bins] = imhist(img2_gris);
cuentas_acumuladas = cumsum(cuentas);


subplot(2,2,1); imshow(img2);title("Imagen original")
subplot(2,2,2); imshow(img2_gris);title("Escala de grises")
subplot(2,2,3); imhist(img2_gris);title("Histograma")
subplot(2,2,4); plot(bins, cuentas_acumuladas);title("Acumulativo")


%{ 
EJERCICIO 3:
------------

Usando subplot visualizar los campos R, G, B y sus respectivos Histogramas normal.

%}

img3 = imread("manzanas.jpg");
figure(3)
rojo=img3(:,:,1);
verde=img3(:,:,2);
azul=img3(:,:,3);
subplot(2,3,1);imshow(rojo);title("Campo rojo")
subplot(2,3,2);imshow(verde);title("Campo verde")
subplot(2,3,3);imshow(azul);title("Campo azul")
subplot(2,3,4);imhist(rojo);title("Hisotgrama rojo")
subplot(2,3,5);imhist(verde);title("Hisotgrama verde")
subplot(2,3,6);imhist(azul);title("Hisotgrama azul")


%{ 
EJERCICIO 4:
------------

Implementar las sentencias para visualizar imagen original, en escala de
intensidad y la transpuesta.

%}

img4 = imread("manzanas.jpg");
figure(4)
img4_gris = rgb2gray(img4);
gris_transpuesta=img4_gris';
subplot(1,3,1); imshow(img4);title("Imagen Original")
subplot(1,3,2); imshow(img4_gris);title("Imagen en escala de gris")
subplot(1,3,3); imshow(gris_transpuesta);title("Transpuesta")


%{ 
EJERCICIO 5:
------------

Implementar los bloques de simulink para ver la imagen de una cámara en
RGB, en escala de intensidad y su transpuesta . Si no dispone de cámara
usar una fotografía.

%}

img5 = imread("manzanas.jpg");
img5_gris = rgb2gray(img5);

%{ 
EJERCICIO 6:
------------

Usando los comando plot graficar en el intervalo [-5,5] las siguientes ecuaciones:

a) f1(x)= x^2
b) f2(x)= -( x + 2 )^2 + 2

%}

x = [-5:0.1:5];

f1 = x.^2;
f2 = -(x + 2).^2 + 2;

figure(6)
subplot(2,1,1)
plot(x, f1)
title('f1(x) = x^2')
xlabel('x')
ylabel('f1(x)')

subplot(2,1,2)
plot(x, f2)
title('f2(x) = -(x + 2)^2 + 2')
xlabel('x')
ylabel('f2(x)')

%{ 
EJERCICIO 7:
------------

Escribir un fichero de función (llamado Cap6Uno) para la función f(x)= ((x^4)(3x+5)^(1/2))/(x^2+1).

La entrada de la función es x y la salida es f(x). Escribir la función tal que x sea un vector. Utilizar la función para calcular:

a) f(x) en x=6
b) f(x) en x=1,3,5,7,9 y 11

%}

x = 6;
fx_6 = Cap6Uno(x)

x = [1, 3, 5, 7, 9, 11];
fx = Cap6Uno(x)


%{ 
EJERCICIO 8:
------------

Escribir una función (llamada FaC) que convierta grados F a grados C . La fórmula para convertir es : C = 5(F-32)/9

%}

F = 53; % ejemplo, 53 grados Fahrenheit
C = FaC(F)


%{ 
EJERCICIO 9:
------------

Escribir una función que grafique la seno y coseno en el intervalo que se especifique como parametro al invocar la funcion. Usar el comando plot y subplot

%}

graficar_seno_coseno(0, 2*pi);


%{ 
EJERCICIO 10:
------------

Usar una imagen del alumno calcular y desplegar usando subplot:

a) Histograma normal
b) Histograma Acumulativo

%}

img9 = imread("manzanas.jpg");

figure(10)
subplot(1,2,1)
imhist(img9)
title("Histograma normal")

subplot(1,2,2)
[cuentas, bins] = imhist(img9);
cuentas_acumuladas = cumsum(cuentas);
plot(bins, cuentas_acumuladas)
title("Histograma acumulativo")


%{ 
EJERCICIO 11:
------------

Repetir el problema 10 pero con funciones

%}

img11 = imread("manzanas.jpg");

figure(11)
subplot(1,2,1)
hist_normal(img11)
title("Histograma normal")

subplot(1,2,2)
hist_acumulativo(img11)
title("Histograma acumulativo")


%{ 
EJERCICIO 8:
------------

Implementar los bloques de simulink para:

a) Visualizar la imagen en escala de gris.
b) Visualizar una imagen binaria.
c) Visualizar la transpuesta (transpose).
d) Visualizar la transpuesta usando el Bloque de funciones.

%}

