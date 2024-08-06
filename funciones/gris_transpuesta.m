% E9 a
function gris_transpuesta(ubicacion_imagen)

    img=imread(ubicacion_imagen);
    imagen_1_gray=rgb2gray(img);
    imagen_1_tran=imagen_1_gray';
    
    figure()
    subplot(1,3,1); imshow(img); title('Imagen RGB');
    subplot(1,3,2); imshow(imagen_1_gray); title('Imagen en escala de intensidad');
    subplot(1,3,3); imshow(imagen_1_tran); title('Imagen transpuesta');
    end