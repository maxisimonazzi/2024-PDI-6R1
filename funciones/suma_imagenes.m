% E9 b
function suma_imagenes(ubicacion_imagen1, ubicacion_imagen2)

    img1=imread(ubicacion_imagen1);
    img2=imread(ubicacion_imagen2);
    img1_gray=rgb2gray(img1);
    img2_gray=rgb2gray(img2);
    suma=img1_gray+img2_gray;
    
    figure()
    subplot(1,3,1); imshow(img1_gray); title('Imagen 1');
    subplot(1,3,2); imshow(img2_gray); title('Imagen 2');
    subplot(1,3,3); imshow(suma); title('Suma de las imagenes');
end